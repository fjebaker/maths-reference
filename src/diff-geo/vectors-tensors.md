# Vectors and tensors

To introduce the concept of vectors and tensors, it is worth considering how a derivative is defined on a manifold.

Given an open subset $\mathscr{U} \subset \mathcal{M}$, a function $f: \mathscr{U} \rightarrow \mathbb{R}$ and the curve given by $Q: T \rightarrow \mathscr{U}$, $T \subset \mathbb{R}$ , along with the composition $f \circ Q$, we may examine the derivative of $f$ a the point, imaged by $Q(\tau=\tau_0)$, in $\mathscr{U}$ by considering
```{math}
\left. \left( \frac{\partial f}{\partial \tau} \right)_{Q(\tau)}  \right\rvert_{\tau=\tau_0} =& \lim_{\epsilon \rightarrow 0} \Big( \frac{f\left( Q(\tau_0 + \epsilon) \right) - f \left( Q(\tau_0) \right)}{\epsilon} \Big), \\
=& \left. \sum_{i=0}^{n} \frac{\text{d}x^i(\tau)}{\text{d}\tau} \right\rvert_{\tau_0} \left( \frac{\partial f}{\partial x^i} \right)_{Q(t)},
```
with the $x^i$ being the coordinates of the chart $(\mathscr{U}, \phi_\alpha)$. By adopting the summation convention, this may be written compactly as
```{math}
= \left. \left( \frac{\text{d}x^i}{\text{d}\tau} \frac{\partial f}{\partial x^i} \right) \right\rvert_{\tau_0}.
```


## Tangent spaces and tangent vectors

````{admonition} Definition: Tangent space
The *tangent space* is an $n$ dimensions vector space defined at a point $x \in \mathscr{U}$, where $\mathscr{U}$ is an open subset of $n$-dimensional manifold $\mathcal{M}$, by the set
```{math}
:label: def_tangent_space
T_x \mathscr{U} :=& \ \left\{ x \right\} \times \mathbb{R}^n, \\
=& \ \Big\{ (x, \xi) \ | \ \xi \in \mathbb{R}^n \Big\}.
```
````

The tangent space has linear structure
```{math}
a\left( x, \xi \right) + b\left( x, \eta \right) = \left( x, a \xi + b \eta \right),
```
for $a,b \in \mathbb{R}$. These tangent spaces are bound to their point of definition in $\mathscr{U}$, and elements of $T_x \mathscr{U}$ and $T_y \mathscr{U}$, $x \neq y$ live in entirely separate spaces.

By considering various curves $Q: T \rightarrow \mathscr{U}$, $T \subset \mathbb{R}$, passing through $x \in \mathscr{U}$ we may examine tangents to the curve $Q$ at $x$: each point along a curve $Q(\tau)$ defines a *velocity vector* $\frac{\text{d}Q}{\text{d}\tau} \in \mathbb{R}^n$, which measures how the point $Q(\tau)$ changes tangentially with respect to each coordinate of $\mathscr{U}$ as $\tau$ changes. It is a velocity in the sense of being a first derivative. 

````{admonition} Definition: Tangent vector
A *tangent vector* is a vector tangent to a point $Q(\tau) \in \mathscr{U}$ along the curve $Q$
```{math}
:label: eq_def_tangent_vector
\dot{Q}(\tau) &:= \left( Q(\tau), \frac{\text{d}Q}{\text{d}\tau} \right) \in T_{Q(\tau)} \mathscr{U} \\
&= \frac{\text{d}Q^i}{\text{d} \tau} \left. b_i \right\rvert_{Q(\tau)},
```
for $i = 1, ..., n$, where $\frac{\text{d}Q}{\text{d} \tau} \in \mathbb{R}^n$, and $ \left. b_i \right\rvert_{Q(\tau)} $ forms a basis spanning $T_x \mathscr{U}$.
````

We will further explore $\left. b_i \right\rvert_{Q(\tau)}$ when we discuss frames in the next section, which will connect $\left. b_i \right\rvert_{Q(\tau)}$ with the $(x, \xi)$ of the tangent space definition eq. {eq}`def_tangent_space`.

This definition admits a local parameterization of the curves $Q$ by considering
```{math}
x^i \left( x + Q(\tau) \right) = x^i(x) + \frac{\text{d}Q^i}{\text{d} \tau} \tau,
```
over a small interval $-\varepsilon < \tau < \varepsilon$ .

We define a smooth mapping $v_\alpha$, called a *vector field*, as 
```{math}
v_\alpha : \mathscr{U} & \rightarrow T_x \mathscr{U}, \\
x & \mapsto (x, \xi(x)) = v(x).
```

By considering a curve $Q: T \rightarrow \mathscr{U}$, $T \subset \mathbb{R}^p$, such that $\tau$ now has $p$ components, we have a $n \times p$ matrix representation

```{math}
\left( \frac{\partial Q^i}{\partial \tau^j} \right)_{\substack{i = 1, \dots, n \\ j = 1, \dots, p}},
```

with rank $p$ everywhere on $T$. The tangent space at $Q(\tau)$ are $p$ linearly independent vector fields on $\mathscr{U}$, spanning $T_{Q(\tau)} \mathscr{U}$ :
```{math}
Q(\tau) \mapsto \left( Q(\tau), \frac{\partial Q}{\partial \tau^j} \right).
```

Such a set of vector fields may be decomposed onto a *frame*, which we will now take a moment to define.

## Tangent mapping
Maps between open subsets have an analog in the tangent space.

````{margin}
```{admonition} Notation
:class: notation
The tangent map $T_x F$ is also sometimes denotes $F_\ast$.
```
````

````{admonition} Definition: Tangent mapping
Let $\mathscr{U}$ and $\mathscr{V}$ be open subsets of $\mathcal{M} \subset \mathbb{R}^n$ and $\mathcal{K} \subset \mathbb{R}^m$ respectively, and let $F$ be a map $F : \mathscr{U} \rightarrow \mathscr{V}$, then the *tangent mapping* is defined
```{math}
T_x F: T_x \mathscr{U} \rightarrow T_{F(x)} \mathscr{U}.
```
````

Consider again the curve $Q : T \rightarrow \mathscr{U}$, with $T \subset \mathbb{R}$, then we also have the composition $F \circ Q : T \rightarrow \mathscr{V}$. Let $x^i$ and $y^j$ be the coordinates of $\mathscr{U}$ and $\mathscr{V}$, then, given the tangent vector in eq. {eq}`eq_def_tangent_vector`, we may write

```{math}
\left(
    Q(\tau), \frac{\text{d}Q}{\text{d}\tau}    
\right) 
    = \frac{\text{d}Q^i}{\text{d}\tau} \left. \frac{\partial}{\partial x^i} \right\rvert_{Q(\tau)},
```

which is an element of $T_{Q{\tau}} \mathscr{U}$. The composition $F \circ Q$ is then decomposed

```{math}
\left(
    \left( F \circ Q \right)(\tau), \frac{\text{d}}{\text{d}\tau} \left( F \circ Q \right)   
\right) 
    = 
    \frac{\text{d}}{\text{d}\tau} 
    \left( F \circ Q \right)^j 
    \left. \frac{\partial}{\partial y^j} \right\rvert_{F(Q(\tau))},
```

now an element of $T_{F(Q(\tau))} \mathscr{V}$ . The tangent map $T_{Q(\tau)}F$ must then map between these two spaces; for some vector $\dot{u} \in T_x \mathscr{U}$,

```{math}
\dot{u} = 
    \dot{u}^i 
    \frac{\partial}{\partial x^i},
```

then 

```{math}
\left( T_x F \right) \dot{u} = 
    \sum_j^m \left( 
        \sum_i^n \dot{u}^i \frac{\partial}{\partial x^i} F^j
    \right)
    \left. \frac{\partial}{\partial y^j} \right\rvert_{F(x)},
```

is the action of the tangent mapping, as by the chain rule we know

```{math}
\frac{\text{d}}{\text{d} \tau} \left(
    F \circ Q
\right)^j
    =
    \left.
        \frac{\partial F^j}{\partial x^i}
    \right\rvert_{Q(\tau)} \frac{\text{d}Q^i}{\text{d} \tau}.
```

## Frames

````{margin}
```{admonition} Notation
:class: notation

Other names for an $n$-frame are *vielbein*, co-moving frame, or, for $n=4$, *tetrad*.

The use of partial derivatives as the symbols of the frame also anticipates the tangents vectors as derivations on $\mathscr{U}$.

```
````

````{admonition} Definition: Frame
An $n$-frame is the set of linearly-independent vector fields $b_i$

```{math}
b_i : \mathscr{U} &\rightarrow  T_{x}\mathscr{U}, \\
x & \mapsto b_i(x),
```
where the $b_i(x)$ form a basis of the co-domain, and $i = 1, ..., n$.

If $x^i$ are identified as the coordinates of $\mathscr{U}$, then the frame is denoted
```{math}
\left\{ \frac{\partial}{\partial x^i} \right\},
```
which act on points $x \in \mathscr{U}$ to obtain tangent vectors
```{math}
\frac{\partial}{\partial x^i} (x) := \left( x, \frac{\partial x}{\partial x^i} \right) \in T_{x}\mathscr{U}.
```
````

The transformation between frames $b_i$ and $b^\prime_i$ is
```{math}
:label: eq_basis_transform
b^\prime_j(x) = \left( \gamma^{-1}(x) \right)^i_{\phantom{i}j} \ b_i(x),
```
with $\gamma(x) \in \text{GL}_n$. Note that $\gamma$ is a gauge-group-valued function on $\mathscr{U}$. The transformation between frames associated with coordinates $x^i$ and $y^i$ is
```{math}
\left. \frac{\partial}{\partial y^j} \right\rvert_x = \frac{\partial x^i}{\partial y^j} \left. \frac{\partial}{\partial x^i} \right\rvert_x,
```
identifying $\left( \gamma^{-1}(x) \right)^i_{\phantom{i}j} = \frac{\partial x^i}{\partial y^j}$. 

Any set of coordinates $x^i$ on $\mathscr{U}$ determines an $n$-frame, but there are generally no coordinates determining a frame coinciding with a given one.


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
&= \left( Q(\tau), \left( \frac{\text{d}Q^1}{\text{d}\tau} \frac{ \partial Q(\tau) }{ \partial x^1 }, \frac{\text{d}Q^2}{\text{d}\tau} \frac{ \partial Q(\tau) }{ \partial x^2 } \right) \right) \in T_{Q(\tau)} \mathscr{U}.
```
````

## Connecting tangent spaces with contra- and covariant vectors

We have encountered the notion of a *contravariant vector* in defining tangent vectors, considered as *directional derivatives* with respect to a frame. The space of *contravariant* vectors may be thought of as the space of all directions (the tangent space) at a point $x \in \mathscr{U}$. On the other hand, *covariant* vectors, sometimes called *cotangents*, are linear mappings

```{math}
\phi : \ \  T_x \mathscr{U} \rightarrow \mathbb{R}.
```

We will later identify these maps with the far broader concept of *differential forms* (see {ref}`sec_diff_forms`), and covariant vectors specifically as *one-forms*, but for now, we will consider them as the *dual space* of the tangent space $T_x \mathscr{U}$ , often denoted as $T^\ast_x \mathscr{U}$ or $\Lambda^1 T_x \mathscr{U}$. We will write the basis of the cotangent space $\beta^i$, with the decomposition
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
:label: eq_dual_basis_transform
\beta^{\prime i} = \gamma^i_{\phantom{i} j} \beta^j,
```
where the matrix $\gamma$ is the inverse of the $\gamma^{-1}$ seen in eq. {eq}`eq_basis_transform`, which can be easily verified with eq. {eq}`eq_bases_relation`.

## Tensors
Given a point $x$ in an open subspace $\mathscr{U} \subset \mathbb{R}^n$, with tensor space $T_x \mathscr{U}$ and cotangent space $T^\ast_x \mathscr{U}$, we may define the cartesian product
```{math}
\Pi^s_{\phantom{s}r}
    = 
    \underbrace{
        \left( T^\ast_x \mathscr{U} \right) \times \dots \times \left( T^\ast_x \mathscr{U} \right)
    }_{r \ \text{many}}
    \times 
    \underbrace{
        \left( T_x \mathscr{U} \right) \times \dots \times \left( T_x \mathscr{U} \right)
    }_{s \ \text{many}}.
```


We then define a *tensor* of type $(r, s)$ as the map
```{math}
T:
    \Pi^s_{\phantom{s}r}
    \rightarrow
    \mathbb{R}.
```
The maps $T$ are said to be *multilinear*, i.e. linear in each argument, and span a vector-space of dimension $n^{r+s}$.


````{admonition} Definition: Tensor space
The space of tensors is the space of *tensor products*, at a point $x \in \mathscr{U}$,

```{math}
\Theta^r_{\phantom{r}s} =
    \underbrace{
        \left (T_{x} \mathscr{U} \right) \otimes \dots \otimes \left (T_{x} \mathscr{U} \right)
    }_{r \ \text{many}}
    \otimes
    \underbrace{
        \left (T^\ast_{x} \mathscr{U} \right) \otimes \dots \otimes \left (T^\ast_{x} \mathscr{U} \right)
    }_{s \ \text{many}}.
```

````

We can identify the basis of a tensor in the tensor space by considering the action of the map $T$ for $\phi^i \in T^\ast_x \mathscr{U}$ and $\dot{x}^i \in T_x \mathscr{U}$
```{math}
T(\phi^1, ..., \phi^r, \dot{x}_1, \dots, \dot{x}_s)
    & =
    T(
        \phi^1_{\phantom{1}i_1} \beta^{i_1}, \dots, \phi^r_{\phantom{r}i_r} \beta^{i_r}, 
        \dot{x}_1^{\phantom{1}j_1} b_{j_1}, \dots, \dot{x}_s^{\phantom{s}j_s} b_{j_s}
    ) \\
    & = 
    \phi^1_{\phantom{1}i_1}, \dots, \phi^r_{\phantom{r}i_r}, \dot{x}_1^{\phantom{1}j_1} \dots, \dot{x}_s^{\phantom{s}j_s}
    T(
        \beta^{i_1}, \dots, \beta^{i_r}, b_{j_1}, \dots, b_{j_s}
    ),
```

letting 

```{math}
T(
    \beta^{i_1}, \dots, \beta^{i_r}, b_{j_1}, \dots, b_{j_s}
) =
T^{i_1, \dots, i_r}_{\phantom{i_1, \dots, i_r} j_1, \dots, j_s},
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

allows the identification of the decomposition of $T$ as

```{math}
T = T^{i_1, \dots, i_r}_{\phantom{i_1, \dots, i_r} j_1, \dots, j_s} e_{i_1, \dots, i_r}^{\phantom{i_1, \dots, i_r} j_1, \dots, j_s} .
```

The $e_{i_1, \dots, i_r}^{\phantom{i_1, \dots, i_r} j_1, \dots, j_s}$ are linearly independent, necessitated by eq. {eq}`eq_tensor_basis`, they provide a basis for tensors of type $(r, s)$. Similarly, it should be apparent that the form of this basis is the direct product

```{math}
e_{i_1, \dots, i_r}^{\phantom{i_1, \dots, i_r} j_1, \dots, j_s} 
=
b_{i_1} \otimes \dots \otimes b_{i_r} \otimes \beta^{j_1} \otimes \dots \otimes \beta^{j_s}.
```

The $T^{i_1, \dots, i_r}_{\phantom{i_1, \dots, i_r} j_1, \dots, j_s} \in \mathbb{R}$ are the components of the tensor relative to the chosen basis. The change of basis for the basis vectors of a tensor follows from eq. {eq}`eq_basis_transform` and eq. {eq}`eq_dual_basis_transform`, which implies the transformation of the components

```{math}
T^{i^\prime_1, \dots, i^\prime_r}_{\phantom{i^\prime_1, \dots, i^\prime_r} j^\prime_1, \dots, j^\prime_s}
= {
    \left( \gamma^{-1} \right)^{i^\prime_1}_{\phantom{i^\prime_1}i_1}
    \dots
    \left( \gamma^{-1} \right)^{i^\prime_r}_{\phantom{i^\prime_r}i_r}
    \gamma^{j_1}_{\phantom{j_1}j^\prime_1}
    \dots
    \gamma^{j_s}_{\phantom{j_s}j^\prime_s}
}
T^{i_1, \dots, i_r}_{\phantom{i_1, \dots, i_r} j_1, \dots, j_s}.
```

(sec_tensory_symmetry)=
### Tensor symmetry

````{admonition} Definition: symmetric or antisymmetric tensor

A tensor of type $(r, s)$ is said to be *symmetric* or *antisymmetric* in its *contravariant* indices if under the exchange of indices

```{math}
T^{i_1, \dots, i_l, \dots, i_m, \dots,  i_r}_{\phantom{i_1, \dots, i_l, \dots, i_m, \dots,  i_r} j_1, \dots, j_s}
    =
    \pm T^{i_1, \dots, i_m, \dots, i_l, \dots,  i_r}_{\phantom{i_1, \dots, i_m, \dots, i_l, \dots,  i_r} j_1, \dots, j_s},
```

The same property may apply to the *covariant* indices.

````

````{margin}
```{admonition} Notation
:class: notation
There is no difference between $p$ and $s$, however we will differentiate the class of *$(0, s)$ tensors* from the class of *totally antisymmetric $(0, s)$ tensors* by denoting the latter as the class of $(0, p)$ tensors.
```
````

The special class of *totally antisymmetric tensors* are the $(0, p)$ covariant tensors, which are antisymmetric under every exchange of indices. That is

```{math}
T_{i_1, \dots, i_l, \dots, i_m, \dots, i_p} 
    = 
    - T_{i_1, \dots, i_m, \dots, i_l, \dots, i_p}.
```

Any $(0, s)$ tensor may be made totally antisymmetric by applying an alternating operator $\mathcal{A}$

```{math}
\mathcal{A} T_{i_1, \dots, i_p} 
    = 
    \frac{1}{p!} \sum_{\pi \in S_p} \text{sgn}(\pi) \ T_{\pi(i_1), \dots, \pi(i_p)},
```

where $S_p$ is the [set of $p$ permutations (Wikipedia)](https://en.wikipedia.org/wiki/Symmetric_group). 

The properties of this operator are

- $\mathcal{A} T = T$ if $T$ already totally antisymmetric,
- $\mathcal{A} T_{i_1, \dots, i_p} = 0 \ \forall \ p > n$.

These totally antisymmetric tensors are called $p$*-forms*, and will be the subject of study in the next section.