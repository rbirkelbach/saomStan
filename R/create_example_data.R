#' Create example data
#'
#' \code{create_example_data} Creates example data
#'
#' @export
#'

create_example_data <- function(){
    set.seed(1)
    network1 <- matrix(rbinom(n=16*16, size = 1, prob = 0.5), nrow = 16, ncol = 16)
    diag(network1) <- 0
    set.seed(2)
    network2 <- matrix(rbinom(n=16*16, size = 1, prob = 0.5), nrow = 16, ncol = 16)
    diag(network2) <- 0
    nw_list <- list(network1, network2)

    networks_dat <- list(waves = length(nw_list),
                         y = nw_list,
                         n_actors = nrow(network1))
    return(networks_dat)
}

