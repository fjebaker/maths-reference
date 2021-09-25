# Manifolds


## Charts

A manifold $\mathcal{M}$ is a locally flat (Euclidean) open subspace of $\mathbb{R}^n$, which is covered by a collection (union) of open subsets $\mathscr{U}$, sometimes referred to as neighbourhoods.

````{margin}
```{seealso}
A *homeomorphism* is a topology-preserving isomorphism.

[Wikipedia: Homeomorphisms](https://en.wikipedia.org/wiki/Homeomorphism).
````

````{admonition} Definition: Chart
A *chart* $\left( \mathscr{U}, \phi_\alpha \right)$ on a manifold $\mathcal{M}$ is defined by the open subset $\mathscr{U} \subset \mathcal{M}$ and the associated homeomorphism
```{math}
\phi_\alpha : \mathscr{U} &\rightarrow \mathbb{R}^n, \\
x &\mapsto \left( x^1, ..., x^n \right),
```
where $x^i$ are the coordinates of $\mathscr{U}$.
````



For two intersecting charts, $\left( \mathscr{U}, \phi_\alpha \right)$ and $\left( \mathscr{V}, \psi_\alpha \right)$, the composition

```{math}
\phi_\alpha \circ \psi_\alpha^{-1} : \mathbb{R}^n &\rightarrow \mathbb{R}^n, \\
\psi_\alpha (x) & \mapsto \phi_\alpha (x)
```

takes points defined in the coordinates of $\mathscr{V}$ to those of $\mathscr{U}$, i.e. from $\left( \tilde{x}^1, ..., \tilde{x}^n \right) \mapsto \left(x^1, ..., x^n \right)$.


In the case of points lying in an intersection of open subsets, $x \in \mathscr{U} \cap \mathscr{V}$, then, from the definition of the manifold, it is required that $x^i$ are *smooth functions* of $\tilde{x}^i$.

````{admonition} Definition: Cartesian product of manifolds
Two manifolds, $\mathcal{M} \subset \mathbb{R}^n$ and $\mathcal{N} \subset \mathbb{R}^k$, admit a *cartesian product* defined by the set of pairs of points
```{math}
\mathcal{M} \times \mathcal{N} = \left\{ (x, y) \ : \ x \in \mathcal{M}, y \in \mathcal{N} \right\}.
```
````

As a corollary, if $\left( \mathscr{U}, \phi_\alpha \right)$ and $\left( \mathscr{V}, \psi_\alpha \right)$ are distinct charts of $\mathcal{M}$ and $\mathcal{N}$ respectively, and

```{math}
\phi_\alpha(x) &= \left(x^1, ..., x^n \right), \\
\psi_\alpha(y) &= \left(y^1, ..., y^m \right),
```

then the map,

```{math}
\left( \phi_\alpha \times \psi_\alpha \right) (x, y) = \left( x^1, ..., x^n, y^1, ..., y^m \right),
```

is sufficient to define $\mathcal{M} \times \mathcal{N}$ as a manifold of $n+k$ dimensions.

## Functions on manifolds

````{admonition} Definition: Function on a manifold
A function $f$ on an open subset $\mathscr{U}$ of a manifold $\mathcal{M}$ is defined as a map
```{math}
f: \mathscr{U} \rightarrow \mathbb{R}.
```
````

Functions on manifolds may be composed with the homeomorphisms of charts as $f \circ \phi_\alpha^-1$, taking $\mathbb{R}^n$ into $\mathbb{R}$; such compositions are smooth functions of the coordinates $x^i$. 

We are also permitted to express a smooth curve over an interval $Q : T \rightarrow \mathscr{U_\alpha}$, $T \subset \mathbb{R}$, parameterized by a real variable $\tau \in \left[ a, b \right]$:

```{figure} ../tex-images/test_0.svg
:height: 300px
```

We write

```{math}
\left( \phi_\alpha \circ Q \right) (\tau) = \left( x^1(\tau), ..., x^n (\tau) \right),
```

requiring $x^i(\tau)$ to be smooth functions of $\tau$. 

We may also consider the composition $f \circ Q$, along with $\phi_\alpha \circ Q$, to describe the action of the function on $\tau$:


```{math}
\left( f \circ Q \right)(t) =& f(Q(t)) \\
=& f\left( x^1(\tau), ..., x^n (\tau) \right)
```

where $p$ is the point imaged by $Q(\tau)$ in the open subset $\mathscr{U}$.

