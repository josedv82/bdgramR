#' Body Diagram Model Type
#'
#' This function provides a list with the names of all the available diagram's models.
#'
#' @param data A dataframe. The dataframe with all the coordinates points.
#'
#' @return A data frame:
#'  \describe{
#'          \item{Model}{A factor. A column displaying all the available diagram model types}
#'     }
#'
#' @export
#' @examples
#' model_types(data)
#'


model_types <- function(data = data){

  result <- tryCatch({

  model <- data["Model"]
  model1 <- unique(model) %>% dplyr::as_tibble()

  print(model1)

  }, error = function(cond){

    message("data must be equal to `data`")

    return(NA)

  })

  return(result)

}
