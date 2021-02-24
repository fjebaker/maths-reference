# Vector spaces

## Subspace

## Direct sum
Consider vector spaces $U, V \subset W$. We say $W$ is the *direct sum* of $U$ and $W$
```{math}
W = V \oplus U,
```
if $W = V + U$, and $\{ 0 \} = V \cap U$.

```{admonition} Lemma
:name: lemmasubspace

Let $U, V \subset W$, then $W = V \oplus U$ *if and only if* for every $w \in W$ there exist unique vectors $v \in V$ and $u \in U$ such that $w = v + u$.
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
\beta'^i := \sum_{j=1}^n \gamma^i_{\hphantom{j}i} \beta^j. 
```


### Dual transformation
Let $T$ be a linear transformation between vector spaces $V \rightarrow W$. The dual transformation is then $T^\ast : W^\ast \rightarrow V^\ast$ . 

````{admonition} Definition: Dual transformation
For some $T: V \rightarrow W$ the dual transformation $T^\ast : W^\ast \rightarrow V^\ast$ is defined by
```{math}
T^\ast \omega := \omega \circ T, \ \forall \ \omega \in W^\ast.
```
````


````{margin} Notation
:class: hint 
This is sometimes written with parentheses
```{math}
(T^\ast \omega , v)\, = (\omega ,  T v ).
```
````

The operation of $T^\ast$ is commonly termed the *adjoint*. For all $v \in V$ we have
```{math}
(T^\ast \omega)\, v = \omega \, ( T v ).
```


## Projections
Consider $W = V \oplus U$; we construct an operator $P: W \rightarrow V$, element wise $w \mapsto P(w)$. For some $w = v + u$, with $v \in V$, $u \in U$, we then define $P(w) := u$.

````{margin}
```{seealso}
See {doc}`linear-transformations` for more.
```
````

That is to say $P$ is a linear transformation, with $\text{im}\, P = V$, $\text{ker}\, P = U$, and $P^2 = P$.

$P$ is called the *projection* of $W$ onto $V$ along $U$.

