# Optimization in double auction mechanism for market clearing, like in liberalised electricity market
# Edward J. Xu, DTU Management
# edxu96@outlook.com
# March 5th, 2019
module DoubleAuctionOptimization_EDXU
    export DoubleAuction
    using JuMP
    using GLPKMathProgInterface
    using LinearAlgebra
    # Function Definition
    function DoubleAuctionSinglePeriod(; vecRow_marginalCost, vecRow_marginalUtility, vecRow_s, vecRow_d, num_x, num_y)
        """
        Function to get the market clearing quantity and price for a single period.
        """
        model_primal = Model(solver = GLPKSolverLP())
        @variable(model_primal, vecCol_y[1: (num_y + num_x)] >= 0)
        vecCol_c = transpose(hcat(vecRow_marginalCost, - vecRow_marginalUtility))
        diagonalOnes_y = Diagonal(ones(num_y, num_y))
        diagonalOnes_x = Diagonal(ones(num_x, num_x))
        matrix_a = [diagonalOnes_y zeros(num_y, num_x); zeros(num_x, num_y) diagonalOnes_x]
        vecRow_aEq = hcat(ones(1, num_y), - ones(1, num_x))
        vecCol_b = transpose([vecRow_s vecRow_d])
        solutionPrimal = solve(model_primal)
        @objective(model_primal, Min, transpose(vecCol_c) * vecCol_y)
        constraintForDual = @constraint(model_primal, vecRow_aEq * vecCol_y .== 0)
        @constraint(model_primal, matrix_a * vecCol_y .<= vecCol_b)
        solve(model_primal)
        price = getdual(constraintForDual)[1]
        obj = getobjectivevalue(model_primal)
        vec_supplyCommit = getvalue(vecCol_y[1: num_y])
        vec_demandCommit = getvalue(vecCol_y[end: -1: num_y + 1])
        return price, obj, vec_supplyCommit, vec_demandCommit
    end

    function DoubleAuction(; matrix_marginalCost, matrix_marginalUtility, matrix_s, matrix_d, length_T)
        """
        Function to get the market clearing quantity and price.

        :argument matrix_marginalCost[t, j]
        :argument matrix_marginalUtility[t, i]
        """
        num_x = length(matrix_marginalUtility[1,:])
        num_y = length(matrix_marginalCost[1,:])
        if (num_x != length(matrix_d[1,:])) || (num_y != length(matrix_s[1,:]))
            println("\nLength of offers are not equal.")
            return
        end
        model_explicit = Model(solver = GLPKSolverLP())
        @variable(model_explicit, x[1:length_T, 1: num_x] >= 0)
        @variable(model_explicit, y[1:length_T, 1: num_y] >= 0)
        @objective(model_explicit, Min, sum([sum(y[t,:] .* matrix_marginalCost[t,:]) -
            sum(x[t,:] .* matrix_marginalUtility[t,:])] for t = 1: length_T)[1])
        constraintForDual = @constraint(model_explicit, [t = 1:length_T], sum(x[t,:]) == sum(y[t,:]))
        @constraint(model_explicit, [t = 1:length_T, i = 1: num_x], x[t, i] <= matrix_d[t, i])
        @constraint(model_explicit, [t = 1:length_T, j = 1: num_y], y[t, j] <= matrix_s[t, j])
        # Solve the problem for every period
        price = ones(1, length_T)
        obj = ones(1, length_T)
        matrix_supplyCommit = ones(length_T, num_y)
        matrix_demandCommit = ones(length_T, num_x)
        for t = 1: length_T
            #, matrix_demandCommit[t,:]
            price[t], obj[t], matrix_supplyCommit[t,:], matrix_demandCommit = DoubleAuctionSinglePeriod(
                vecRow_marginalCost=transpose(matrix_marginalCost[t,:]),
                vecRow_marginalUtility=transpose(matrix_marginalUtility[t,:]),
                vecRow_s=transpose(matrix_s[t,:]), vecRow_d=transpose(matrix_d[t,:]), num_x=num_x, num_y=num_y)
        end
        return price, obj, matrix_supplyCommit, matrix_demandCommit
    end
end
