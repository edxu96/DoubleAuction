
# Market Design using Double Auction

##

Consider the nodal power balance equality for bus <img src="/docs/tex/55a049b8f161ae7cfeb0197d75aff967.svg?invert_in_darkmode&sanitize=true" align=middle width=9.86687624999999pt height=14.15524440000002pt/>. Multiply each term within the equality of Step 1 by the LMP at that bus.

<p align="center"><img src="/docs/tex/e6c22ee84cb1cd2f12acb42fcf4eb916.svg?invert_in_darkmode&sanitize=true" align=middle width=402.8790843pt height=39.1417719pt/></p>

Consider the summation of all equalities obtained in Step 2 for all buses. What does the resulting equality mean?

<p align="center"><img src="/docs/tex/354a5d1c611632b419f7988b16311c83.svg?invert_in_darkmode&sanitize=true" align=middle width=446.07147915pt height=39.1417719pt/></p>

Provide a mathematical proof that the LMP‐based market mechanism ensures “cost recovery” for all market players.

Step 1‐ Consider the equilibrium form of the market‐clearing problem.

Step 2‐ For each generator’s optimization problem, derive the corresponding “strong duality” condition, which enforces the equality of objective function of primal and dual problems in the optimal point. The primal objective function is generator’s profit. Check the terms within the dual objective function; are they all non‐negative? If so, what does it mean?

<p align="center"><img src="/docs/tex/178f89638e1e8358b45251bf9f0e4d5b.svg?invert_in_darkmode&sanitize=true" align=middle width=195.27563715pt height=75.82277669999999pt/></p>

Step 3‐ Similar to Step 2, investigate the cost recovery for elastic demands and transmission operator using the equilibrium problem in Step 1.

<p align="center"><img src="/docs/tex/6f1772bd8663d22b1246a8d04d8a578c.svg?invert_in_darkmode&sanitize=true" align=middle width=484.1422030499999pt height=20.47663365pt/></p>

From KKT to duality

<img src="/docs/tex/47adddec46e97c391064ddfe61f4f8f3.svg?invert_in_darkmode&sanitize=true" align=middle width=52.44504374999998pt height=27.6567522pt/> can be replaced by <img src="/docs/tex/a5f881face49c9921241cf364e5b94f7.svg?invert_in_darkmode&sanitize=true" align=middle width=51.286384049999995pt height=27.6567522pt/>.

##

Game Map should be write a minimization problem

Game Map = Jacobian Matrix * decision variables + matrix

if the Jacobian Matrix  is

symmetric
skew symmetric

then there is a optimization problem, otherwise

if Jacobian Matrix is positive-definite, then strong monotone, you can have a unique Solution

if semi-positive, we cannot say anything about the uniqueness.

##

Two requirements from the mathematical perspective:

- Existence of Solution
- Solution Uniqueness
