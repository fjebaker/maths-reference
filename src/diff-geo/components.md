# Component expansions

## Alternating forms
Some $\varphi \in \Lambda^p V$ may be expanded as an ordered sum

```{math}
\varphi = \sum_{i_1 < \ldots < i_p} \varphi_{i_1 \ldots i_p} \beta^{i_1} \wedge \ldots \wedge \beta^{i_p},
```
where $\beta_i$ is a basis of the dual space $V^\ast = \Lambda^1V$. Here $\varphi_{i_1 \ldots i_p} \in \mathbb{R}$, and the summations run to $n = \text{dim} \, V$. 

Alternatively, we can allow $\varphi_{i_1 \ldots i_p}$ to be defined for all indices, in which case it is a *completely asymmetric tensor* with values in $\mathbb{R}$ (i.e. the codomain)

````{margin} Notation
Often a short-hand is used in the literature, denoting
```{math}
i_1 \ldots i_p = \mathcal{I},
```
when used as indices.
````

```{math}
\varphi = \sum_{i_1 \ldots i_p} \varphi_{i_1 \ldots i_p} \beta^{i_1} \wedge \ldots \wedge \beta^{i_p},
```
with the transformation property
```{math}
\varphi'_{i_1 \ldots i_p} = \sum_{j_1 \ldots j_p} \varphi_{j_1 \ldots j_p} (\gamma^{-1})^{j_1}_{\hphantom{j_1}i_1} \ldots (\gamma^{-1})^{j_p}_{\hphantom{j_p}i_p}.
```

### $n$-forms
For the special case of $\omega \in \Lambda^nV$, where $n = \text{dim} \, V$, the above formulation simplifies to
```{math}
\omega = k \beta^1 \wedge \ldots \beta^n,
```
since there is only one possible ordering of the incides. This can be rewritten as
```{math}
\omega = \frac{k}{n!} \sum_{i_1 \ldots i_n} \varepsilon_{i_1 \ldots i_n} \beta^{i_1} \wedge \ldots \beta^{i_n}.
```
As usual, $\varepsilon_{i_1 \ldots i_n}$ is the totally antisymmetric tensor [Levi-Civita symbol](https://en.wikipedia.org/wiki/Levi-Civita).

## Inner derivative
The inner derivative $\iota_v$ on some $\varphi \in \Lambda^pV$ may be expressed in components by
```{math}
\iota_v \varphi = \frac{1}{(p-1)!} \sum_{i_1 \ldots i_{p-1}} \left( \sum_j v^j \varphi_{j i_1 \ldots i_{p-1}} \right) \beta^{i_1} \wedge \ldots \wedge \beta^{i_{p-1}},
```

for some $v \sum_j v^j b_j \in V$, where $b_i$ is, as usual, a basis for $V$ and the summations run to $n = \text{dim} \, V$.