.First.lib <- function (libname, pkgname)
{
    # For development, the reportr package may not be available, so we assign into .GlobalEnv
    # In deployment this should never be necessary, but it's a useful fallback
    pos <- match(c("package:reportr",".GlobalEnv"), search())
    pos <- pos[!is.na(pos)][1]
    
    tempOL <- list(Debug=1, Verbose=2, Info=3, Warning=4, Question=5, Error=6)
    
    assign("OL", tempOL, pos=pos)
    assign(".ReportrFlags", NULL, pos=pos)
}
