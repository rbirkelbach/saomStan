example_data <- saomStan::create_example_data()
options(mc.cores = parallel::detectCores())
Sys.setenv(MAKEFLAGS = "-j4") 
test <- rstan::stan(file = here::here("R/stan/rate_function.stan"), model_name = "rate_function", data = example_data, iter=100000, control = list(adapt_delta = 0.95))
