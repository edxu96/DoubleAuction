# Example: Optimization in double auction mechanism for market clearing, like in liberalised electricity market
# Edward J. Xu, DTU Management
# edxu96@outlook.com
# March 5th, 2019
# Input the path where the module is
# push!(LOAD_PATH, "/Users/...")
push!(LOAD_PATH, "/Users/...")
using DoubleAuctionOptimization_EDXU
# Input the data, start calculation
matrix_marginalCost = [75 15 0 42 10]
matrix_marginalUtility = [65 78 10 46 63 32 50]
matrix_s = [15 100 32 25 70]
matrix_d = [35 23 12 38 43 16 57]
price, obj, matrix_supplyCommit, matrix_demandCommit = DoubleAuction(
    matrix_marginalCost=matrix_marginalCost, matrix_marginalUtility=matrix_marginalUtility,
    matrix_s=matrix_s, matrix_d=matrix_d, length_T=1)
