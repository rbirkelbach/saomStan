data {
    real<lower=0> n_actors;
}
transformed data {
    real inv_n_actors = 1/n_actors;
}
parameters {
    real<lower=0> rate_parameter_individual;
}
model {
    rate_parameter_individual ~ exponential(inv_n_actors);
}

