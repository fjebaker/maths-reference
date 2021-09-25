(sec_diff_forms)=
# Forms

## Alternating real valued $p$-forms

````{admonition} Definition: Alternating real valued $p$-forms
Let $V$ be a vector space, then the alternating real-valued forms of degree $p$ are 
```{math}
\Lambda^p V := \left\{ \varphi : \underbrace{V \times V \times \ldots \times V}_{p} \rightarrow \mathbb{R}, \ \text{multilinear, alternating} \right\}.
```
````

````{margin}
```{seealso}
$S_n$ is the symmetric group, which, defined over $n$ symbols, is the set of permutations of $n$ symbols.

[Wikipedia: Symmetric Group](https://en.wikipedia.org/wiki/Symmetric_group).
````

Here, *multilinear* is equivalent to linear in each argument, and *alternating* implies for $\pi \in S_n$

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

### Vector space valued $p$-forms
Real valued alternating forms may be generalized to have vector space codomains.

````{admonition} Definition: Alternating vector space valued $p$-forms
Let $V, W$ be vector spaces, then the alternating vector space valued forms of degree $p$ are 
```{math}
\Lambda^p (V,W) := \left\{ \varphi : \underbrace{V \times V \times \ldots \times V}_{p} \rightarrow W, \ \text{multilinear, alternating} \right\}.
```
````

This permits the decomposition of any $\varphi \in \Lambda^p (V, W)$ onto a basis $a_i$ of $W$
```{math}
\varphi = \varphi^a a_a,
```
with $\varphi^a \in \Lambda^pV$.


### Lie algebra valued $p$-forms
There is a special case where $W$ may be a Lie algebra; then the form is decomposed onto the generators of the algebra $T_a$, and the exterior product operator is replaced by commutators on the basis. Consider $\varphi \in \Lambda^p (V, \mathfrak{g})$ and $\psi \in \Lambda^q (V, \mathfrak{g})$, decomposed as
```{math}
\varphi &= \varphi^a T_a, \\
\psi &= \psi^b T_b,
```
with $\varphi^a \in \Lambda^p V$, $\psi^b \in \Lambda^q V$. We then redefine the exterior product by using the exterior product of the generators of the Lie algebra
```{math}
\left[ \varphi, \psi \right] &= \varphi^a \wedge \psi^b \left[ T_a, T_b \right] \\
&= -(-1)^{pq} \left[ \varphi, \psi \right].
```
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
for $\varphi \in \Lambda^pV$ and $\psi \in \Lambda^qV$. This last property implies that $\varphi \wedge \varphi = 0$ for the case of $p$ odd.

The exterior product may also be derived from the extension of the direct product under the action of the alternating operator $\mathcal{A}$ (see {ref}`sec_tensory_symmetry`), that is

```{math}
:label: eq_alt_op_forms
\mathcal{A}(\varphi \otimes \psi) = \varphi \wedge \psi.
```

### Pull back
The pullback is an *active transformation* between vector spaces of $p$-forms. 

````{admonition} Definition: Pull back
Let $F: W \rightarrow V$ be a linear transformation between two vector spaces $W$ and $V$. The *pull back* $F^\ast$ is the induced linear mapping

```{math}
F^\ast :
    \Lambda^p V & \rightarrow \Lambda^p W, \\
    \varphi & \mapsto F^\ast \varphi,
```
via
```{math}
(F^\ast \varphi) \left( w_1, \dots, w_p \right)
    :=
    \varphi \left( F w_1, \dots, F w_p \right).
```

````

````{margin}
```{seealso}
The pull back stems from a *contravariant functor*, which, in mathematical category theory, has a different meaning from the terminology used in physics. 

See more [Wikipedia: Functors](https://en.wikipedia.org/wiki/Functor#Covariance_and_contravariance).
````

The pull back is a *homomorphism* of the exterior algebras; that is to say

- $F^\ast$ is linear,
- distributive:
```{math}
F^\ast(\varphi \wedge \psi) = \left( F^\ast \varphi \right) \wedge \left( F^\ast \psi \right).
```

The additional property of the pull-back is

- reverse composition,
```{math}
:label: eq_pullback_composition
\left( F_1 \circ F_2 \right)^\ast = F^\ast_2 \circ F^\ast_1.
```


This property can be demonstrated manifestly.

````{toggle}
We act $\left( F_1 \circ F_2 \right)^\ast$ on a $p$-form $\varphi \in \Lambda^pV$:

```{math}
\left( F_1 \circ F_2 \right)^\ast \varphi \left( w_1, \dots, w_p \right)
=
    \varphi \left( \left( F_1 \circ F_2 \right) w_1, \dots, \left( F_1 \circ F_2 \right) w_p \right),
```

which, by associativity of homomorphisms, is

```{math}
&= 
    F_2^\ast \varphi \left( F_1 w_1, \dots, F_1 w_p \right), \\
&=
    \left( F_2^\ast \circ F_1^\ast \right) \varphi \left( w_1, \dots, w_p \right), \\
```

and therefore the property of eq. {eq}`eq_pullback_composition` holds.
````

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
- $\iota_v \iota_u + \iota_u \iota_v = 0$, corollary $\iota_v^2 = 0$

The last point follows from the alternating property of forms.

````{admonition} Inner derivative
:class: query
Is the classification of the inner derivative manifestly a *derivation* (i.e. obeys Leibniz)?

Without explicitly using the Leibniz property, we can derive the behaviour of the inner derivative when operating on the exterior product of forms.

```{toggle}
This is best approached by first expanding the wedge product. 

We will consider $\varphi \in \Lambda^pV$ and $\psi \in \Lambda^qV$. Let $v_i \in V$, then
:::{math}
\iota_{v_1} (\varphi \wedge \psi) (v_2, \ldots, v_{p+q}) = (\varphi \wedge \psi) (v_1, v_2, \ldots, v_{p+q}), 
:::
by definition. Expanding the RHS
:::{math}
= \frac{1}{p! q!} \sum_{\pi \in S_{p+q}} \text{sgn}(\pi) \varphi (v_{\pi (1)}, \ldots, v_{\pi(p)}) \psi (v_{\pi (p+1)}, \ldots, v_{\pi(p+q)}),
:::
Now we use that the inner derivative fixes a vector argument; we can rewrite the sum into two parts, namely those terms where $\varphi$ acts on $v_1$, and those where $\psi$ does:

:::{math}
= \frac{p}{p! q!} & \sum_{\pi \in S_{p+q-1}} \text{sgn}(\pi) \varphi (v_{1}, v_{\pi(1)}, \ldots, v_{\pi(p-1)}) \psi (v_{\pi (p)}, \ldots, v_{\pi(p+q-1)}) \\
+  \frac{q}{p! q!} (-1)^p & \sum_{\pi \in S_{p+q-1}} \text{sgn}(\pi) \varphi (v_{\pi (1)}, \ldots, v_{\pi(p)}) \psi (v_{1}, v_{\pi(p+1)}, \ldots, v_{\pi(p+q-1)}) ,
:::
where $(-1)^p$ is a continuity factor to account for the initial sign of $\pi$ in the second summation term; effectively, there are $p$ permutations of $\pi$ before $\psi$ acts on $v_1$.

Note the factors of $p$ and $q$ on each term. This is from combinatorics; if $D(n)$ denotes the number of permutations of $n$, then an $n$ permutation with a single fixed point is $n D(n-1)$.

Now apply the definition of the inner derivative again
:::{math}
= \frac{p}{p! q!} & \sum_{\pi \in S_{p+q-1}} \text{sgn}(\pi) (\iota_{v_1} \varphi) (v_{\pi(1)}, \ldots, v_{\pi(p-1)}) \psi (v_{\pi (p)}, \ldots, v_{\pi(p+q-1)}) \\
+  \frac{q}{p! q!} (-1)^p & \sum_{\pi \in S_{p+q-1}} \text{sgn}(\pi) \varphi (v_{\pi (1)}, \ldots, v_{\pi(p)}) (\iota_{v_1}\psi) (v_{\pi(p+1)}, \ldots, v_{\pi(p+q-1)}).
:::
Then, by noting that $p/p! = 1/(p-1)!$, we can replace the expansions with wedge products again
:::{math}
=& \, \left((\iota_{v_1} \varphi) \wedge \psi \right) (v_2, \ldots, v_{p+q}) \\
& \, + (-1)^p \left(\varphi \wedge ( \iota_{v_1} \psi) \right)(v_2, \ldots, v_{p+q})
:::
which is precisely the graded Leibniz rule.

The inner derivative is manifestly a derivation, by virtue of the exterior product.
```
````

## Basis
A basis of $\Lambda^pV$ is the exterior product of the dual basis

```{math}
\beta^{i_1} \wedge \beta^{i_2} \wedge \ldots \wedge \beta^{i_p}
```

````{margin}
```{seealso}
Recall
:::{math}
{n \choose k} = \frac{P(n, k)}{k!}
:::

See more [Wikipedia: Combination](https://en.wikipedia.org/wiki/Combination).
```
````

with $1 \leq i_1 < i_2 < \ldots < i_p \leq n = \text{dim}\, V $. 

Consequently, since each $p$-form may be described over an $n$-dimensional basis, the dimensionality of $\Lambda^pV$ is the permutations of $p$ of the $n$ possible basis vectors $\beta^i$, without repetition, due to the alternating property. Therefore, we conclude

```{math}
:label: eq_dim_basis
\text{dim}\, \Lambda^p V = {n \choose p}.
```

It is always the case that $\text{dim}\, \Lambda^n V = 1$.

For example, consider $n = 3$, the possible bases for different degrees of forms are
```{math}
\Lambda^1V : & \  \left\{ \beta_1, \ \beta_2, \ \beta_3 \right\}, \\
\Lambda^2V : & \  \left\{ \beta_1 \wedge \beta_2,  \ \beta_1 \wedge \beta_3, \ \beta_2 \wedge \beta_3 \right\}, \\
\Lambda^3V : & \  \left\{ \beta_1 \wedge \beta_2 \wedge \beta_3 \right\}.
```

The basis may also be obtained through use of eq. {eq}`eq_alt_op_forms`, writing

```{math}
\mathcal{A} \left( \beta_{i_1} \otimes \dots \otimes \beta_{i_p} \right)
    = \beta_{i_1} \wedge \dots \wedge \beta_{i_p}.
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