#' Evaluate all function arguments
#' 
#' Evaluates all function arguments at location where construct.arglist is called in that function
#' (they might have changed during running the function, or may be in variables)
#' construct.arglist gets rid of the variables and so on, and returns the argument list as a list
#' 
#' @param funobj the function whose arguments are to be evaluated
#' @param framepos TBD
#' 
#' @return named list containing function arguments

construct.arglist <- function(funobj, framepos = -1) {
  namedlist = formals(funobj)
  argnames = names(namedlist)
  for (argn in seq_along(namedlist)) {
    if  (exists(argnames[argn], where = sys.frame(framepos))) {
      namedlist[[argn]] = get(argnames[argn], envir = sys.frame(framepos))
    }
  }
  return(namedlist)
}