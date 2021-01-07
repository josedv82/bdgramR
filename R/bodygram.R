#' Bdgramr
#'
#' This function returns a dataframe with the coordinates of a unique body diagram.
#'
#' @param data A dataframe. The dataframe with all the coordinates points. Must be equal to `data`.
#' @param model A character string. One of the available models. Check model_types(data = data) if not sure. It defaults to 'futuristic_male
#'
#'  @return A data frame:
#'  \describe{
#'         \item{Id}{Numeric. Unique id of each muscle area.}
#'         \item{View}{A character String. The type of view (Anterior, Posterior, Left or Right)}
#'         \item{Part}{A character string. Upper or Lower Body.}
#'         \item{Group}{A character String. The name of the muscle group.}
#'         \item{Muscle}{A character String. The name of the muscle}
#'         \item{Side}{A character String. Whether it it left or right side of the body}
#'         \item{x}{A number. x coordinates}
#'         \item{y}{A number. y coordinates}
#'     }
#'
#'
#' @export
#' @examples
#' bdgramr(data = data)
#'


bdgramr <- function(data = data, model = "futuristic_male"){

  result <- tryCatch({

    data <- data %>% dplyr::filter(Model == model) %>%
                     dplyr::select(-Model)

    data

  }, error = function(cond){

    message("Check that data is equal data and model is equal to one of the models in `model_types(data = data)`")

    return(NA)

  })

  return(result)

}
