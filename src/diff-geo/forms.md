# Alternating forms

## Alternating real valued $p$-forms

````{admonition} Definition: Alternating real valued $p$-forms
Let $V$ be a vector space, then the alternating real-valued forms of degree $p$ are 
```{math}
\Lambda^p V := \left\{ \varphi : \underbrace{V \times V \times \ldots \times V}_{p} \rightarrow \mathbb{R}, \ \text{multilinear, alternating} \right\}.
```
````

*Multilinear* is equivalent to saying linear in each argument, and *alternating* means for $\pi \in S_n$

```{math}
\varphi  \left( v_{\pi (1)}, v_{\pi (2)}, \ldots, v_{\pi (n) } \right) = \text{sgn}( \pi ) \varphi  \left( v_{1}, v_{2}, \ldots, v_{n} \right).
```

There are a few noteworthy properties:

- $\Lambda^0 V = \mathbb{R}$,
- $\Lambda^1 V = V^\ast$, the space of $1$-forms on $V$ *is* the dual space of $V$,
- $\Lambda^p V = 0, \ \ \forall \ p > n = \text{dim}\, V$.

The last property can be reasoned given that the forms are alternating, and the degenerate choice of $v \in V$ arguments for $p > n$.

```{hint}
The space of $p$-forms $\Lambda^pV$ is *itself* a vector space.
```

## Vector space valued $p$-forms
Real valued alternating forms may be generalized to have vector space codomains.

````{admonition} Definition: Alternating vector space valued $p$-forms
Let $V, W$ be vector spaces, then the alternating vector space valued forms of degree $p$ are 
```{math}
\Lambda^p (V,W) := \left\{ \varphi : \underbrace{V \times V \times \ldots \times V}_{p} \rightarrow W, \ \text{multilinear, alternating} \right\}.
```
````

This permits the decomposition of any $\varphi \in \Lambda^p (V, W)$ onto a basis $a_i$ of $W$
```{math}
\varphi = \sum_i^{\text{dim}\, W} \varphi^i a_i,
```
with $\varphi^i \in \Lambda^pV$.

There is a special case where $W$ may be a Lie algebra; then $\varphi \in \Lambda^p (V, \mathfrak{g})$ is decomposed onto the generators of the algebra $T_a$, and the exterior product operator is replaced by commutators on the basis.

## Operations

### Exterior product

````{admonition} Definition: Exterior product
Let $\varphi \in \Lambda^p V$ and $\psi \in \Lambda^q V$ be  real-valued alternating forms of degree $p$ and $q$ respectively on a vector space $V$. Their *exterior product* is defined

```{math}
\wedge : \Lambda^p V \times \Lambda^q V \rightarrow & \, \Lambda^{p+q}V, \\
(\varphi, \psi) \mapsto & \, \varphi \wedge \psi.
```
Acting on vectors in $V$ 
```{math}
(\varphi \wedge \psi) \left( v_1, \ldots, v_{p + q} \right) := & \\ 
\frac{1}{p! q!} \sum_{\pi \in S_{p+q} }  \text{sgn} (\pi)\, \varphi \left( v_{\pi (1)}, \ldots, v_{\pi (p)} \right) & \psi \left( v_{\pi (p + 1)}, v_{\pi (p + q)} \right).
```
````

If $\varphi, \psi \in \Lambda^0V$, then $\varphi \wedge \psi = \varphi \, \psi \in \mathbb{R}$.

Geometrically, we can consider the exterior product of $\varphi, \psi \in \Lambda^1V$ as the determinant
```{math}

(\varphi \wedge \psi) \left( v_1, v_2 \right) = & \ 
\text{det} \, \begin{bmatrix}
    \varphi(v_1) & \psi(v_1) \\
    \varphi(v_2) & \psi(v_2)
\end{bmatrix}, \\ \\
= & \ \varphi (v_1) \psi (v_2) - \varphi (v_2) \psi (v_1).
```

The properties of the exterior product are 
- bilinearity,
- associativity,
- graded commutivity:
```{math}
\varphi \wedge \psi = (-1)^{pq} \psi \wedge \varphi,
```
for $\varphi \in \Lambda^pV$ and $\psi \in \Lambda^qV$.

### Inner derivative
Sometimes called the interior product.
````{admonition} Definition: Inner derivative
Let $\Lambda^p V$ be the space of alternating $p$ forms on $V$. The *inner derivative* is defined
```{math}
\iota_v : \Lambda^p V \rightarrow & \, \Lambda^{p-1}V, \\
\varphi \mapsto & \, \iota_v \varphi,
```
for some $v \in V$. Acting on vectors $v_i \in V$
```{math}
(\iota_v \varphi)(v_{1}, \ldots, v_{p-1}) := \varphi (v, v_q, \ldots, v_{p-1}).
```
````
The inner derivative is a contraction, which acts to fix a vector that $\varphi$ acts on, by definition.

````{margin}
```{seealso}
The {ref}`sec_grassman` is the direct sum of vector spaces
:::{math}
\Lambda V := \bigoplus_{p=0}^n \Lambda^p V.
:::
```
````

$\iota_v$ is a [derivation](https://en.wikipedia.org/wiki/Derivation_(differential_algebra)) of the Grassman algebra $\Lambda V$. The inner derivative has the following properties
- linear map,
- linear in $v$, e.g. $\iota_{v+u} = \iota_{v} + \iota_{u}$,
- graded Leibniz rule, namely for some $\varphi \in \Lambda^pV$ and $\psi \in \Lambda^qV$
```{math}
\iota_v(\varphi \wedge \psi) = (\iota_v \varphi) \wedge \psi + (-1)^p \varphi \wedge (\iota_v \psi)
```

## Basis
A basis of $\Lambda^pV$ is the exterior product of the dual basis
```{math}
\beta^{i_1} \wedge \beta^{i_2} \wedge \ldots \wedge \beta^{i_p}
```
with $1 \leq i_1 < i_2 < \ldots < i_p \leq n = \text{dim}\, V $. Consequently
```{math}
\text{dim}\, \Lambda^p V = {n \choose p}.
```
It is always the case that $\text{dim}^n V = 1$.

For example, consider $n = 3$, the possible bases for different degrees of forms are
```{math}
\Lambda^1V : & \  \left\{ \beta_1, \ \beta_2, \ \beta_3 \right\}, \\
\Lambda^2V : & \  \left\{ \beta_1 \wedge \beta_2,  \ \beta_1 \wedge \beta_3, \ \beta_2 \wedge \beta_3 \right\}, \\
\Lambda^3V : & \  \left\{ \beta_1 \wedge \beta_2 \wedge \beta_3 \right\}.
```

### Orientation
````{admonition} Definition: Orientation
An *orientation* of vector space $V$ with $n = \text{dim} \, V$ is the choice of one of the two parts of $\Lambda^nV - \{0\}$.
````

````{margin}
```{seealso}
This can be thought of it terms of chirality: [Wikipedia: Orientation](https://en.wikipedia.org/wiki/Orientation_(vector_space)).
```
````

An orientation is the choice of a positive or negative slice of $\omega \in \Lambda^nV$. It may be defined by the choice of basis $b_i$ on $V$
```{math}
\omega = \beta^1 \wedge \ldots \wedge \beta^n.
```

Given an orientation $\omega$, then a basis $b_i$ is oriented if
```{math}
\omega \left( b_1, \ldots, b_n \right) > 0.
```

Orientations become very useful when we discuss integration in the next chapter.

## References
```{bibliography} references.bib
:list: bullet
:all:
```