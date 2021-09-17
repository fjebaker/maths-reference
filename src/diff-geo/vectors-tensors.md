# Vectors and tensors

To introduce the concept of vectors and tensors, it is worth considering how a derivative is defined on a manifold.

Given an open subset $\mathscr{U}_\alpha \subset \mathcal{M}$, a function $f: \mathscr{U}_\alpha \rightarrow \mathbb{R}$ and the curve given by $Q: T \rightarrow \mathscr{U}_\alpha$, $T \subset \mathbb{R}$ , along with the composition $f \circ Q$, we may examine the derivative of $f$ a the point, imaged by $Q(\tau=\tau_0)$, in $\mathscr{U}_\alpha$ by considering
```{math}
\left. \left( \frac{\partial f}{\partial \tau} \right)_{Q(\tau)}  \right\rvert_{\tau=\tau_0} =& \lim_{\epsilon \rightarrow 0} \Big( \frac{f\left( Q(\tau_0 + \epsilon) \right) - f \left( Q(\tau_0) \right)}{\epsilon} \Big), \\
=& \left. \sum_{i=0}^{n} \frac{\text{d}x^i(\tau)}{\text{d}\tau} \right\rvert_{\tau_0} \left( \frac{\partial f}{\partial x^i} \right)_{Q(t)},
```
with the $x^i$ being the coordinates of the chart $(\mathscr{U}_\alpha, \phi_\alpha)$. By adopting the summation convention, this may be written compactly as
```{math}
= \left. \left( \frac{\text{d}x^i}{\text{d}\tau} \frac{\partial f}{\partial x^i} \right) \right\rvert_{\tau_0}.
```


## Tangent spaces and tangent vectors

````{admonition} Definition: Tangent space
The *tangent space* is an $n$ dimensions vector space defined at a point $x \in \mathscr{U}_\alpha$, where $\mathscr{U}_\alpha$ is an open subset of $n$-dimensional manifold $\mathcal{M}$, by the set
```{math}
:label: def_tangent_space
T_x \mathscr{U}_\alpha :=& \ \left\{ x \right\} \times \mathbb{R}^n, \\
=& \ \Big\{ (x, \xi) \ | \ \xi \in \mathbb{R}^n \Big\}.
```
````

The tangent space has linear structure
```{math}
a\left( x, \xi \right) + b\left( x, \eta \right) = \left( x, a \xi + b \eta \right),
```
for $a,b \in \mathbb{R}$. These tangent spaces are bound to their point of definition in $\mathscr{U}_\alpha$, and elements of $T_x \mathscr{U}_\alpha$ and $T_y \mathscr{U}_\alpha$, $x \neq y$ live in entirely separate spaces.

By considering various curves $Q: T \rightarrow \mathscr{U}_\alpha$, $T \subset \mathbb{R}$, passing through $x \in \mathscr{U}_\alpha$ we may examine tangents to the curve $Q$ at $x$: each point along a curve $Q(\tau)$ defines a *velocity vector* $\frac{\text{d}Q}{\text{d}\tau} \in \mathbb{R}^n$, which measures how the point $Q(\tau)$ changes tangentially with respect to each coordinate of $\mathscr{U}_\alpha$ as $\tau$ changes. It is a velocity in the sense of being a first derivative. 

````{admonition} Definition: Tangent vector
A *tangent vector* is a vector tangent to a point $Q(\tau) \in \mathscr{U}_\alpha$ along the curve $Q$
```{math}
\dot{Q}(\tau) &:= \left( Q(\tau), \frac{\text{d}Q}{\text{d}\tau} \right) \in T_{Q(\tau)} \mathscr{U}_\alpha \\
&= \frac{\text{d}Q^i}{\text{d} \tau} \left. b_i \right\rvert_{Q(\tau)},
```
for $i = 1, ..., n$, where $\frac{\text{d}Q}{\text{d} \tau} \in \mathbb{R}^n$, and $ \left. b_i \right\rvert_{Q(\tau)} $ forms a basis spanning $T_x \mathscr{U}_\alpha$.
````

We will further explore $\left. b_i \right\rvert_{Q(\tau)}$ when we discuss frames in the next section, which will connect $\left. b_i \right\rvert_{Q(\tau)}$ with the $(x, \xi)$ of the tangent space definition eq. {eq}`def_tangent_space`.

This definition admits a local parameterization of the curves $Q$ by considering
```{math}
x^i \left( x + Q(\tau) \right) = x^i(x) + \frac{\text{d}Q^i}{\text{d} \tau} \tau,
```
over a small interval $-\varepsilon < \tau < \varepsilon$ .

We define a smooth mapping $v_\alpha$, called a *vector field*, as 
```{math}
v_\alpha : \mathscr{U}_\alpha & \rightarrow T_x \mathscr{U}_\alpha, \\
x & \mapsto (x, \xi(x)) = v(x).
```

By considering a curve $Q: T \rightarrow \mathscr{U}_\alpha$, $T \subset \mathbb{R}^p$, such that $\tau$ now has $p$ components, we have a $n \times p$ matrix representation

```{math}
\left( \frac{\partial Q^i}{\partial \tau^j} \right)_{\substack{i = 1, \dots, n \\ j = 1, \dots, p}},
```

with rank $p$ everywhere on $T$. The tangent space at $Q(\tau)$ are $p$ linearly independent vector fields on $\mathscr{U}_\alpha$, spanning $T_{Q(\tau)} \mathscr{U}_\alpha$ :
```{math}
Q(\tau) \mapsto \left( Q(\tau), \frac{\partial Q}{\partial \tau^j} \right).
```

Such a set of vector fields may be decomposed onto a *frame*, which we will now take a moment to define.

## Frames

````{margin}
```{admonition} Notation
:class: notation

Other names for an $n$-frame are *vielbein*, co-moving frame, or, for $n=4$, *tetrad*.

The use of partial derivatives as the symbols of the frame also anticipates the tangents vectors as derivations on $\mathscr{U}_\alpha$.

```
````

````{admonition} Definition: Frame
An $n$-frame is the set of linearly-independent vector fields $b_i$

```{math}
b_i : \mathscr{U}_\alpha &\rightarrow  T_{x}\mathscr{U}_\alpha, \\
x & \mapsto b_i(x),
```
where the $b_i(x)$ form a basis of the co-domain, and $i = 1, ..., n$.

If $x^i$ are identified as the coordinates of $\mathscr{U}_\alpha$, then the frame is denoted
```{math}
\left\{ \frac{\partial}{\partial x^i} \right\},
```
which act on points $x \in \mathscr{U}_\alpha$ to obtain tangent vectors
```{math}
\frac{\partial}{\partial x^i} (x) := \left( x, \frac{\partial x}{\partial x^i} \right) \in T_{x}\mathscr{U}_\alpha.
```
````

The transformation between frames $b_i$ and $b^\prime_i$ is
```{math}
:label: eq_basis_transform
b^\prime_j(x) = \left( \gamma^{-1}(x) \right)^i_{\phantom{i}j} \ b_i(x),
```
with $\gamma(x) \in \text{GL}_n$. Note that $\gamma$ is a gauge-group-valued function on $\mathscr{U}_\alpha$. The transformation between frames associated with coordinates $x^i$ and $y^i$ is
```{math}
\left. \frac{\partial}{\partial y^j} \right\rvert_x = \frac{\partial x^i}{\partial y^j} \left. \frac{\partial}{\partial x^i} \right\rvert_x,
```
identifying $\left( \gamma^{-1}(x) \right)^i_{\phantom{i}j} = \frac{\partial x^i}{\partial y^j}$. 

Any set of coordinates $x^i$ on $\mathscr{U}_\alpha$ determines an $n$-frame, but there are generally no coordinates determining a frame coinciding with a given one.


Each of the $\frac{\partial}{\partial x^i}$ is tangential to the coordinate line of $x^i$. For the case of Cartesian coordinates $x^i$, we can express the n-frame 
```{math}
\frac{\partial}{\partial x^1} (x) &= (x, (1, 0, ..., 0)), \\
\frac{\partial}{\partial x^2} (x) &= (x, (0, 1, ..., 0)), \\ 
\vdots & \\
\frac{\partial}{\partial x^n} (x) &= (x, (0, 0, ..., 1)).
```

Every vector field $v$ may be decomposed in terms of a frame $b_i$
```{math}
v(x) = v^i(x) b_i(x),
```
where $v^i$ are smooth functions to $\mathbb{R}$. For the tangent vector to a curve $Q(\tau)$ with coordinates $x^i$, this decomposition, along with the chain-rule, expresses
```{math}
\dot{Q}(\tau) = \frac{\text{d}Q^i}{\text{d}\tau} \frac{\partial}{\partial x^i} (Q (\tau) ).
```


````{toggle}
For example, $n=2$ in Cartesian coordinates:
```{math}
\dot{Q}(\tau) &= \frac{\text{d}Q^1}{\text{d}\tau} \frac{\partial}{\partial x^1} (Q (\tau) ) + \frac{\text{d}Q^2}{\text{d}\tau} \frac{\partial}{\partial x^2} (Q (\tau) ), \\
&= \frac{\text{d}Q^1}{\text{d}\tau} \left( Q(\tau), \left( \frac{ \partial Q(\tau) }{ \partial x^1 }, 0 \right) \right) + \frac{\text{d}Q^2}{\text{d}\tau} \left( Q(\tau), \left( 0, \frac{ \partial Q(\tau) }{ \partial x^2 } \right) \right), \\
&= \left( Q(\tau), \left( \frac{\text{d}Q^1}{\text{d}\tau} \frac{ \partial Q(\tau) }{ \partial x^1 }, \frac{\text{d}Q^2}{\text{d}\tau} \frac{ \partial Q(\tau) }{ \partial x^2 } \right) \right) \in T_{Q(\tau)} \mathscr{U}_\alpha.
```
````

## Connecting tangent spaces with contra- and covariant vectors

We have encountered the notion of a *contravariant vector* in defining tangent vectors, considered as *directional derivatives* with respect to a frame. The space of *contravariant* vectors may be thought of as the space of all directions (the tangent space) at a point $x \in \mathscr{U}_\alpha$. On the other hand, *covariant* vectors, sometimes called *cotangents*, are linear mappings

```{math}
\phi : \ \  T_x \mathscr{U}_\alpha \rightarrow \mathbb{R}.
```

We will later identify these maps with the far broader concept of *differential forms* (see {ref}`sec_diff_forms`), and covariant vectors specifically as *one-forms*, but for now, we will consider them as the *dual space* of the tangent space $T_x \mathscr{U}_\alpha$ , sometimes denoted as $T^\ast_x \mathscr{U}_\alpha$. We will write the basis of the cotangent space $\beta^i$, with the decomposition
```{math}
\phi = \phi_i \beta^i,
```
where $\phi_i \in \mathbb{R}$.

From our knowledge of vector spaces, we may already observe 
```{math}
:label: eq_bases_relation
\beta^i(b_j) = \delta^i_{\phantom{i}j},
```
and therefore identify the transformation between dual bases as
```{math}
\beta^{\prime i} = \left( \gamma \right)^i_{\phantom{i} j} \beta^j,
```
where the matrix $\gamma$ is the inverse of the $\gamma^{-1}$ seen in eq. {eq}`eq_basis_transform`, which can be easily verified with eq. {eq}`eq_bases_relation`.

## Tensors
Given a point $x$ in an open subspace $\mathscr{U}_\alpha \subset \mathbb{R}^n$, with tensor space $T_x \mathscr{U}_\alpha$ and cotangent space $T^\ast_x \mathscr{U}_\alpha$, we may define the cartesian product
```{math}
\Pi^s_{\phantom{s}r}
    = 
    \underbrace{
        \left( T^\ast_x \mathscr{U}_\alpha \right) \times \dots \times \left( T^\ast_x \mathscr{U}_\alpha \right)
    }_{r \ \text{many}}
    \times 
    \underbrace{
        \left( T_x \mathscr{U}_\alpha \right) \times \dots \times \left( T_x \mathscr{U}_\alpha \right)
    }_{s \ \text{many}}.
```


We then define a *tensor* of type $(r, s)$ as the map
```{math}
\Theta:
    \Pi^s_{\phantom{s}r}
    \rightarrow
    \mathbb{R}.
```
The maps $\Theta$ are said to be *multilinear*, i.e. linear in each argument, and span a vector-space of dimension $n^{r+s}$.


````{admonition} Definition: Tensor space
The space of tensors is the space of *tensor products*, at a point $x \in \mathscr{U}_\alpha$,

```{math}
\Theta^r_{\phantom{r}s} =
    \underbrace{
        \left (T_{x} \mathscr{U}_\alpha \right) \otimes \dots \otimes \left (T_{x} \mathscr{U}_\alpha \right)
    }_{r \ \text{many}}
    \otimes
    \underbrace{
        \left (T^\ast_{x} \mathscr{U}_\alpha \right) \otimes \dots \otimes \left (T^\ast_{x} \mathscr{U}_\alpha \right)
    }_{s \ \text{many}}.
```

````

We can identify the basis of a tensor in the tensor space by considering the action of the map $\Theta$ for $\phi^i \in T^\ast_x \mathscr{U}_\alpha$ and $\dot{x}^i \in T_x \mathscr{U}_\alpha$
```{math}
\Theta(\phi^1, ..., \phi^r, \dot{x}_1, \dots, \dot{x}_s)
    & =
    \Theta(
        \phi^1_{\phantom{1}i_1} \beta^{i_1}, \dots, \phi^r_{\phantom{r}i_r} \beta^{i_r}, 
        \dot{x}_1^{\phantom{1}j_1} b_{j_1}, \dots, \dot{x}_s^{\phantom{s}j_s} b_{j_s}
    ) \\
    & = 
    \phi^1_{\phantom{1}i_1}, \dots, \phi^r_{\phantom{r}i_r}, \dot{x}_1^{\phantom{1}j_1} \dots, \dot{x}_s^{\phantom{s}j_s}
    \Theta(
        \beta^{i_1}, \dots, \beta^{i_r}, b_{j_1}, \dots, b_{j_s}
    ),
```

letting 

```{math}
\Theta(
    \beta^{i_1}, \dots, \beta^{i_r}, b_{j_1}, \dots, b_{j_s}
) =
\Theta^{i_1, \dots, i_r}_{\phantom{i_1, \dots, i_r} j_1, \dots, j_s},
```

and

```{math}
:label: eq_tensor_basis
e_{i_1, \dots, i_r}^{\phantom{i_1, \dots, i_r} j_1, \dots, j_s}
\left(
    \beta^{k_1}, \dots, \beta^{k_r}, b_{l_1}, \dots, b_{l_s}
\right)
=
{
    \delta^{k_1}_{\phantom{k_1} i_1}
    \dots
    \delta^{k_r}_{\phantom{k_r} i_r}
    \delta^{j_1}_{\phantom{j_1} l_1}
    \dots
    \delta^{j_s}_{\phantom{j_s} l_s}
},
```

allows the identification of the decomposition of $\Theta$ as

```{math}
\Theta = \Theta^{i_1, \dots, i_r}_{\phantom{i_1, \dots, i_r} j_1, \dots, j_s} e_{i_1, \dots, i_r}^{\phantom{i_1, \dots, i_r} j_1, \dots, j_s} .
```

The $e_{i_1, \dots, i_r}^{\phantom{i_1, \dots, i_r} j_1, \dots, j_s}$ are linearly independent, necessitated by eq. {eq}`eq_tensor_basis`, they provide a basis for tensors of type $(r, s)$. Similarly, it should be apparent that the form of this basis is the direct product

```{math}
e_{i_1, \dots, i_r}^{\phantom{i_1, \dots, i_r} j_1, \dots, j_s} 
=
b_{i_1} \otimes \dots \otimes b_{i_r} \otimes \beta^{j_1} \otimes \dots \otimes \beta^{j_s}.
```