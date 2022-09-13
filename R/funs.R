#' Return Series
#' 
#' @description 
#' Returns a series created in Python.
#' 
#' @return 
#' An `array`.
#' 
#' @examples 
#' returnSeries()
#' 
#' @importFrom reticulate import_from_path
#' 
#' @export
returnSeries = function() {
  
  pyfuns = reticulate::import_from_path(
    "funs"
    , path = system.file(
      "python"
      , package = "testpypkg"
    )
    , delay_load = TRUE
  )
  
  pyfuns$return_series()
}
