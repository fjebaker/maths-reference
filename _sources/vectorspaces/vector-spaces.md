# Vector spaces

## Subspace



## Direct sum
Consider vector spaces $U, V \subset W$. We say $W$ is the *direct sum* of $U$ and $W$
```{math}
W = V \oplus U,
```
if $W = V + U$, and $\{ 0 \} = V \cap U$.

```{admonition} Lemma
:class: lemma

Let $U, V$ be subspaces of a vector space $W$, then $W = V \oplus U$ *if and only if* for every $w \in W$ there exist unique vectors $v \in V$ and $u \in U$ such that $w = v + u$.
```

We can sketch a visual proof for this Lemma: consider $W = \mathbb{R}^2$, with the only non-trivial subspaces represented by lines passing through the origin, and let $V$ be the vectors lying exclusively along the $x$-axis plus the zero vector, and $U$ be the vectors lying along the $y$-axis plus the zero vector. 

### Bases under direct sum

Let $b_i$ and $k_j$ denote the bases of $V$ and $U$ respectively. Under a direct sum, the basis of $W$ is given by the union $b_i \cup k_j$.

We may also state that $V$ and $U$ are orthogonal, i.e. $V \perp U$. Following from the above lemma, for every $w \in W$, we can write the decomposition
```{math}
w = \sum_{i=1}^{\text{dim}\ V} v^i b_i + \sum_{j=1}^{\text{dim}\ U} u^j k_j.
```

## Dual space
The dual space of a vector space $V$ is denoted $V^\ast$, and is defined as the space of all linear functions mapping $V$ into the reals.

````{margin}
```{seealso}
The dual space is important in the language of {doc}`../diff-geo/forms`.
```
````

````{admonition} Definition: Dual vector space
Given a vector space $V$, its dual is defined
```{math}
V^\ast := \{ \phi : V \rightarrow \mathbb{R}, \ \text{linear} \}.
```
````

Denoting the bases of $V$ with $b_i$, then the basis of $V^\ast$ is $\beta^i$ defined by

```{math}
:label: eq_basis
\beta^i (b_j) := \delta^i_{\hphantom{i}j}.
```

We express the basis transformation for the vector space through the action of an $n \times n$ invertible matrix $\gamma$
```{math}
b'_i := \sum_{j=1}^n (\gamma^{-1})^j_{\hphantom{j}i} b_j,
```
where $n = \text{dim} \ V$, and $(\gamma^{-1})^j_{\hphantom{j}i} \in \mathbb{R}$.


```{hint} 
$\gamma$ is a *passive transformation*, as it acts to alter the basis we are using to express our vector.
```
The basis transformation on the dual basis is given by the inverse transpose of $\gamma$

```{math}
\beta'^i := \sum_{j=1}^n \gamma^i_{\hphantom{i}j} \beta^j. 
```

## Annihilator
````{admonition} Definition: Annihilator of a vector space
Let $U$ be a subet of a vector space $V$. The *annihilator* of $U$ is 
```{math}
U^0 := \{ \phi : V \rightarrow \mathbb{R} \ | \ \phi(u) = 0 \ \forall \ u \in U \}.
```
````
As such, $V^0 \subset V^\ast$.

Let $b_i$ form a basis of $V$ for $i = 1, ..., n$ where $n = \text{dim} \, V$, and suppose the basis of $U$ consists of $b_i$ for $i = 1, ..., m < n$, with $m = \text{dim} \, U$. We may then consider the dual basis $\beta_i$ for $V^\ast$, such that
```{math}
\{ \beta_{m+1}, ..., \beta_{n} \} \subseteq U^0,
```
forms a basis for $U^0$.

*NB:* from eq. {eq}`eq_basis`, any element of $\{ \beta_{m+1}, ..., \beta_{n} \}$ acting on any basis element of $U$ is $0$, asserting that $U^0$ is indeed the annihiliator.

It follows that
```{math}
:label: eq_adim
\text{dim} \, V = \text{dim} \, U + \text{dim} \, U^0.
```


## Dual transformation
Let $T$ be a linear transformation between vector spaces $V \rightarrow W$. The dual transformation is then $T^\ast : W^\ast \rightarrow V^\ast$ . 

````{admonition} Definition: Dual transformation
For some $T: V \rightarrow W$ the dual transformation $T^\ast : W^\ast \rightarrow V^\ast$ is defined by
```{math}
:label: eq_dualtrans
T^\ast \omega := \omega \circ T, \ \ \forall \ \omega \in W^\ast.
```
````

````{margin} Notation
This is sometimes written with parentheses
```{math}
(T^\ast \omega , v)\, = (\omega ,  T v ).
```
````

The operation of $T^\ast$ is commonly termed the *adjoint*. For all $v \in V$ we have
```{math}
(T^\ast \omega)\, v = \omega \, ( T v ).
```

````{admonition} Theorem: Matrix of dual transformation
:class: theorem 

Let $V$ and $W$ be vector spaces with bases defined. Let $A$ denote the matrix of $T: V \rightarrow W$, and $B$ be the matrix of the dual transformation $T^\ast: W^\ast \rightarrow V^\ast$. Then $B = A^\text{T}$.

```{toggle}
**Proof**:
Starting from the definition of $T^\ast \omega$ for any $\omega \in W^\ast$

$$
(T^\ast \omega) v = \omega (T v), \ \ \forall \ v \in V.
$$

Substituting the matrix representations, and properly denoting the transpose

:::{math}
(B \omega)^\text{T} v = & \ \omega^\text{T} (A v), \\
\omega^\text{T} B^\text{T} v = & \ \omega^\text{T} A v.
:::

Since this is true for all $\omega \in W^\ast$ and $v \in V$, the above is equivalent to $B^\text{T} = A$, or vice versa. $\square$

```
````

A direct corollary of this theorem is that
```{math}
\text{rank}\, T^\ast = \text{rank}\, T.
```

````{margin}
```{seealso}
More information in {ref}`sec_kernim`.
```
````

````{admonition} Theorem: Annihilator of kernel and image
:class: theorem 

If $T: V \rightarrow W$, and $T^\ast$ is its dual transformation, then

```{math}
\text{ker}\, T^\ast = (\text{im}\, T)^0, \ \ \ \ \ \ \text{im}\, T^\ast = (\text{ker}\, T)^0.
```

```{toggle}
**Proof**:
First, consider some $\phi \in \text{im}\, T^\ast$, and $v \in \text{ker} \, T$ -- then

:::{math}
\phi (v) = T^\ast(\omega) (v),
:::

for some $\omega \in W^\ast$. It follows from eq. {eq}`eq_dualtrans` that 

:::{math}
& = w \, T(v), \\
& = 0,
:::
as $v$ belongs to the kernel of $T$. Therefore $\phi \in (\text{ker} \, T)^0$ which implies $\text{im} \, T^\ast \subseteq (\text{ker} \, T)^0$.

Second, to prove $\text{im} \, T^\ast = (\text{ker} \, T)^0$, we may consider dimensions: using the corollary of the last theorem,

:::{math}
\text{dim} \, \text{im} \, T^\ast = \text{dim} \, \text{im} \, T.
:::

Using eq. {eq}`eq_adim`, we may write
:::{math}
\text{dim} \, (\text{ker} \, T)^0 = \text{dim} \, V - \text{dim} \, \text{ker} \, T,
:::
since $\text{ker} \, T \subset V$. From rank-nullity (see {ref}`sec_ranknull`) theorem

:::{math}
\text{dim} \, V = \text{dim} \, \text{im} \, T  + \text{dim} \, \text{ker} \, T,
:::

and so

:::{math}
\text{dim} \, (\text{ker} \, T)^0 = & \, \text{dim} \, \text{im} \, T, \\
 = & \, \text{dim} \, \text{im} \, T^\ast. \\
:::
As both have the same dimension, they must be equal. The exact same line of thinking follows for the other equation. $\square$

```
````
To rephrase the above theorem, we can say that the subset of $W^\ast$ that is mapped to $0$ by $T^\ast$ is the same subset of $W^\ast$ that would map vectors in the image of $T$ to $0$. Likewise, the subset of $V^\ast$ covered by the image of $T^\ast$ take vectors in $V$, that are mapped to $0$ by $T$, also to $0$.


## Projections
Consider $W = V \oplus U$; we construct an operator $P: W \rightarrow V$, element wise $w \mapsto P(w)$. For some $w = v + u$, with $v \in V$, $u \in U$, we then define $P(w) := u$.

That is to say $P$ is a linear transformation, with $\text{im}\, P = V$, $\text{ker}\, P = U$, and $P^2 = P$.

$P$ is called the *projection* of $W$ onto $V$ along $U$.

