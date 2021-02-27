# Component expansions

## Alternating forms
Some $\varphi \in \Lambda^p V$ may be expanded as an ordered sum

```{math}
\varphi = \sum_{i_1 < \ldots < i_p} \varphi_{i_1 \ldots i_p} \beta^{i_1} \wedge \ldots \wedge \beta^{i_p},
```
where $\beta_i$ is a basis of the dual space $V^\ast = \Lambda^1V$. Here $\varphi_{i_1 \ldots i_p} \in \mathbb{R}$.

Alternatively, we can allow $\varphi_{i_1 \ldots i_p}$ to be defined for all indices, in which case it is a *completely asymmetric tensor* with values in $\mathbb{R}$

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

## Inner derivative
The inner derivative may be expressed in components by
```{math}
\iota_v \varphi = \frac{1}{(p-1)!} \sum_{i_1 \ldots i_{p-1}} \left( \sum_j v^j \varphi_{j i_1 \ldots i_{p-1}} \right) \beta^{i_1} \wedge \ldots \wedge \beta^{i_{p-1}},
```

for some $v \sum_j v^j b_j \in V$, where $b_i$ is, as usual, a basis for $V$.