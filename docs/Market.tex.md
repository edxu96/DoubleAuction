
# Market Design using Double Auction

##

Consider the nodal power balance equality for bus $n$. Multiply each term within the equality of Step 1 by the LMP at that bus.

$$
\lambda_{n} \sum_{m \in \Omega_{n}} B_{n, m}\left(\theta_{n} - \theta_{m}\right) = \lambda_{n} \sum_{g \in \Psi_{n}} p_{g}^{\mathrm{G}} - \lambda_{n} \sum_{d \in \Psi_{n}} p_{d}^{\mathrm{D}} \quad \forall n
$$

Consider the summation of all equalities obtained in Step 2 for all buses. What does the resulting equality mean?

$$
\sum_{n} \lambda_{n} \sum_{m \in \Omega_{n}} B_{n, m}\left(\theta_{n} - \theta_{m}\right) = \sum_{n} \lambda_{n} \sum_{g \in \Psi_{n}} p_{g}^{\mathrm{G}} - \sum_{n}  \lambda_{n} \sum_{d \in \Psi_{n}} p_{d}^{\mathrm{D}}
$$

Provide a mathematical proof that the LMP‐based market mechanism ensures “cost recovery” for all market players.

Step 1‐ Consider the equilibrium form of the market‐clearing problem.

Step 2‐ For each generator’s optimization problem, derive the corresponding “strong duality” condition, which enforces the equality of objective function of primal and dual problems in the optimal point. The primal objective function is generator’s profit. Check the terms within the dual objective function; are they all non‐negative? If so, what does it mean?

$$ \begin{aligned}
  12-\lambda-\underline{\mu}^{\mathrm{G} 1}+\bar{\mu}^{\mathrm{G} 1} = 0\\
  0 \leq p^{\mathrm{G} 1} \perp \underline{\mu}^{\mathrm{G} 1} \geq 0\\
  0 \leq\left(100-p^{\mathrm{G} 1}\right) \perp \bar{\mu}^{\mathrm{G} 1} \geq 0
\end{aligned} $$

Step 3‐ Similar to Step 2, investigate the cost recovery for elastic demands and transmission operator using the equilibrium problem in Step 1.

$$
p^{\mathrm{G} 1}(12 - \lambda) = p^{\mathrm{G} 1} \underline{\mu}^{\mathrm{G} 1} - p^{\mathrm{G} 1} \bar{\mu}^{\mathrm{G} 1} \leq p^{\mathrm{G} 1} \underline{\mu}^{\mathrm{G} 1} - p^{\mathrm{G} 1} \bar{\mu}^{\mathrm{G} 1} + 100 \bar{\mu}^{\mathrm{G} 1} = 0
$$

From KKT to duality

$p^{\mathrm{G} 1} \underline{\mu}^{\mathrm{G} 1}$ can be replaced by $100 \bar{\mu}^{\mathrm{G} 1}$.

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
