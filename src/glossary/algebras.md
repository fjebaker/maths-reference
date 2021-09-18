# Algebras

(sec_grassman)=
## Grassman Algebra
The Grassman algebra is the *exterior algebra* of $p$-forms. The exterior algebra may be expressed as the direct sum 
```{math}
\Lambda V := \bigoplus_{p=0}^n \Lambda^p V,
```
with dimensionality
```{math}
\text{dim}\, \Lambda V = 2^n.
```

This is relatively straight forward to show.

````{toggle}
**Proof:** We begin by noting a result for the dimension of direct sums, along with eq. {eq}`eq_dim_basis`,
```{math}
\text{dim}\, \Lambda V 
    &= 
    \sum_{p=0}^n \text{dim}\, \Lambda^p V. \\
    &= 
    \sum_{p=0}^n {n \choose p},
```
which is just the [binomial theorem](https://en.wikipedia.org/wiki/Binomial_theorem),
```{math}
\left( 1 + x \right)^n = \sum_{k=0}^n {n \choose k} x^k,
```
for the case of $x = 1$. Therefore:
```{math}
\text{dim}\, \Lambda V = 2^n. \ \ \square
```
````
