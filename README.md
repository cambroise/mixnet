# mixnet — Random Graph Clustering via Erdos-Renyi Mixture

<!-- badges: start -->
[![R-CMD-check](https://github.com/cambroise/mixnet/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/cambroise/mixnet/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

**mixnet** fits the Erdos-Renyi Mixture for Graphs (ERMG) model for discovering community
structure in networks. Each pair of nodes belongs to latent classes, and edge probabilities depend
only on class memberships. Model selection (number of classes *Q*) is performed via the Integrated
Classification Likelihood (ICL) criterion.

> **Note:** This package was originally published on CRAN in 2008 (Ambroise, Hoebeke, Miele &
> Zanghi). It has been revived and modernised in 2026 with the assistance of Claude (Anthropic) to
> meet current CRAN standards: C++17 compatibility, updated Fortran code, and refreshed
> documentation.

---

## Installation

```r
# From CRAN (once accepted):
install.packages("mixnet")

# Development version from GitHub:
# install.packages("remotes")
remotes::install_github("cambroise/mixnet")
```

---

## Quick start

```r
library(mixnet)

# Simulate an affiliation graph with 3 communities
g <- graph.affiliation(n = 100, c(1/3, 1/3, 1/3), pi_in = 0.8, pi_out = 0.2)

# Fit the ERMG model for Q = 2 to 6 classes
xout <- mixnet(g$x, qmin = 2, qmax = 6)

# Plot ICL profile and reordered adjacency matrix
plot(xout)
```

---

## Vignette

A detailed introduction is available as a package vignette:

```r
vignette("mixnet-intro", package = "mixnet")
```

The vignette covers:

- Simulating random graphs with `graph.affiliation()`
- Fitting the ERMG model with `mixnet()`
- Visualising results with `plot()`
- Analysing the French political blogosphere dataset

---

## Citation

If you use **mixnet** in published work, please cite:

```r
citation("mixnet")
```

```
Ambroise, C., Hoebeke, M., Miele, V. and Zanghi, H. (2008)
Random graph clustering via Erdos-Renyi Mixture. Unpublished.
```

**BibTeX:**

```bibtex
@Unpublished{mixnet2008,
  author = {Christophe Ambroise and Mark Hoebeke and Vincent Miele and Hugo Zanghi},
  title  = {Random graph clustering via {Erdos-Renyi} Mixture},
  year   = {2008},
  note   = {Unpublished manuscript}
}
```

**Key references:**

- Daudin, J.-J., Picard, F. and Robin, S. (2008). A mixture model for random graphs.
  *Statistics and Computing*, **18**, 173–183.
- Zanghi, H., Ambroise, C. and Miele, V. (2008). Fast online graph clustering via
  Erdos-Renyi mixture. *Pattern Recognition*, **41**, 3592–3599.

---

## Maintainer

Christophe Ambroise — <christophe.ambroise@univ-evry.fr>
