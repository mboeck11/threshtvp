Y <- matrix(rnorm(100), 100, 1)
X <- matrix(rnorm(100*2), 100, 2)
nburn <- nsave <- 1000
priorbtheta <- list(B_1 = 2, B_2 = 1, kappa0 = 1e-07)
priorb0 <- list(a_tau = 0.1, c_tau = 0.01, d_tau = 0.01)
priorsig <- c(0.01, 0.01)
priorphi <- c(2, 2)
priormu <- c(0, 10^2)
h0prior <- "stationary"
grid.length <- 150
thrsh.pct <- 0.1
thrsh.pct.high <- 1
sv_on <- TRUE
TVS <- TRUE
cons.mod <- FALSE
nr <- 1
thin <- 1
robust <- TRUE
a.approx <- FALSE
sim.kappa <- TRUE

if (FALSE) {
res <- MCMC_tvp(Y = Y, X = X, nburn = nburn, nsave = nsave,
  priorbtheta = priorbtheta,
  priorb0 = priorb0,
  priormu = priormu, priorsig = priorsig,  priorphi = priorphi,
  h0prior = h0prior, grid.length = grid.length, thrsh.pct = thrsh.pct,
  thrsh.pct.high = thrsh.pct.high, sv_on = sv_on, TVS = TVS, cons.mod = cons.mod,
  nr = nr, thin = thin, robust = robust, a.approx = a.approx, sim.kappa = sim.kappa,
  kappa.grid = seq(1e-4, 0.1, 10))
}
