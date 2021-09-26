# Linear transformations

(sec_kernim)=
## Kernel and image
For some $T \in \mathcal{L}(V, W)$ we associate two subspaces -- the *kernel* and the *image*.

````{admonition} Definition: Kernel
Let $T : V \rightarrow W$ be a linear transformation. The kernel of $T$ is defined

```{math}
\text{ker} \, T = \{ v \in V \ |\  T(v) = 0 \}
```


````

````{admonition} Definition: Image

Let $T : V \rightarrow W$ be a linear transformation. The image of $T$ is defined

```{math}
\text{im} \, T = \{ T(v) \ |\ v \in V \}
```

````

(sec_ranknull)=
## Rank and nullity
````{admonition} Definition: Rank
The *rank* of a linear transformation $T$ is the dimension of its image
```{math}
\text{rank} \, T = \text{dim} \, \text{im} \, T.
```
````

````{admonition} Definition: Nullity
The *nullity* of a linear transformation $T$ is the dimension of its kernel
```{math}
\text{nullity} \, T = \text{dim} \, \text{ker} \, T.
```
````

````{admonition} Theorem: Rank-nullity
:class: theorem 

Let $T: \mathcal{L}(V, W)$, then

```{math}
\text{rank} \, T + \text{nullity} \, T = \text{dim} \, V.
```
````