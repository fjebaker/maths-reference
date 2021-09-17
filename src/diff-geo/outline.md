# Differential Geometry

Differential geometry is the study of *manifolds*, along with the respective behaviour of coordinates and functions on manifolds. In this section, we will explore the foundations of differential geometry, Cartan theory, and later formalisms used in the study of gravitation. 

Below is a minimal introduction to the concept of a manifold and functions on manifolds needed to jump into any other chapter of this section.

## Chapters in this section

```{tableofcontents}
```

## Manifolds

A manifold $\mathcal{M}$ is a locally flat (Euclidean) open subspace of $\mathbb{R}^n$, which is covered by a collection (union) of open subsets $\mathscr{U}_\alpha$, sometimes referred to as neighbourhoods.

````{margin}
```{seealso}
A *homeomorphism* is a topology-preserving isomorphism.

[Wikipedia: Homeomorphisms](https://en.wikipedia.org/wiki/Homeomorphism).
````

````{admonition} Definition: Chart
A *chart* $\left( \mathscr{U}_\alpha, \phi_\alpha \right)$ on a manifold $\mathcal{M}$ is defined by the open subset $\mathscr{U}_\alpha \subset \mathcal{M}$ and the associated homeomorphism
```{math}
\phi_\alpha : \mathscr{U}_\alpha &\rightarrow \mathbb{R}^n, \\
p &\mapsto \left( x^1, ..., x^n \right).
```
````



For two intersecting charts, $\left( \mathscr{U}_\alpha, \phi_\alpha \right)$ and $\left( \mathscr{V}_\alpha, \psi_\alpha \right)$, the composition

```{math}
\phi_\alpha \circ \psi_\alpha^{-1} : \mathbb{R}^n &\rightarrow \mathbb{R}^n, \\
\psi_\alpha (p) & \mapsto \phi_\alpha (p)
```

takes points defined in the coordinates of $\mathscr{V}_\alpha$ to those of $\mathscr{U}_\alpha$, i.e. from $\left( \tilde{x}^1, ..., \tilde{x}^n \right) \mapsto \left(x^1, ..., x^n \right)$.


In the case of points lying in an intersection of open subsets, $p \in \mathscr{U}_\alpha \cap \mathscr{V}_\alpha$, then, from the definition of the manifold, it is required that $x^i$ are *smooth functions* of $\tilde{x}^i$.

````{admonition} Definition: Cartesian product of manifolds
Two manifolds, $\mathcal{M} \subset \mathbb{R}^n$ and $\mathcal{N} \subset \mathbb{R}^k$, admit a *cartesian product* defined by the set of pairs of points
```{math}
\mathcal{M} \times \mathcal{N} = \left\{ (p, q) \ : \ p \in \mathcal{M}, q \in \mathcal{N} \right\}.
```
````

As a corollary, if $\left( \mathscr{U}_\alpha, \phi_\alpha \right)$ and $\left( \mathscr{V}_\alpha, \psi_\alpha \right)$ are distinct charts of $\mathcal{M}$ and $\mathcal{N}$ respectively, and

```{math}
\phi_\alpha(p) &= \left(x^1, ..., x^n \right), \\
\psi_\alpha(q) &= \left(y^1, ..., y^m \right),
```

then the map,

```{math}
\left( \phi_\alpha \times \psi_\alpha \right) (p, q) = \left( x^1, ..., x^n, y^1, ..., y^m \right),
```

is sufficient to define $\mathcal{M} \times \mathcal{N}$ as a manifold of $n+k$ dimensions.

## Functions on manifolds

````{admonition} Definition: Function on a manifold
A function $f$ on a manifold $\mathcal{M}$ is defined as a map to the reals
```{math}
f: \mathcal{M} \rightarrow \mathbb{R}.
```
````

Functions on manifolds may be composed with the homeomorphisms of charts as $f \circ \phi_\alpha^-1$, taking $\mathbb{R}^n$ into $\mathbb{R}$; such compositions are smooth functions of the coordinates $x^i$. 

We are also permitted to express a smooth curve over an interval $Q : \mathbb{R} \rightarrow \mathcal{M}$, parameterized by a real variable $t \in \left[ a, b \right]$:

```{figure} ../tex-images/test_0.svg
:height: 300px
```

We write

```{math}
\left( \phi_\alpha \circ Q \right) (t) = \left( x^1(t), ..., x^n (t) \right),
```

requiring $x^i(t)$ to be smooth functions of $t$. 

We may also consider the composition $f \circ Q$

```{math}
\left( f \circ Q \right)(t) = f(Q(t)) = f\left( p \right),
```

which is equivalent to the compositon $f \circ \phi_\alpha^{-1} \circ \phi_\alpha \circ Q$, inviting the expression

```{math}
f(Q(t)) = f\left( x^1(t), ..., x^n (t) \right).
```


