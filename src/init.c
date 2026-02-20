#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

/* Declarations of registered .C routines */
void main_ermg(int*, int*, int*, int*, int*, int*, int*, int*, double*,
               int*, double*, int*, int*, int*, int*, int*, int*, int*,
               int*, double*);
void main_ermgo(int*, int*, int*, int*, int*, int*, int*, int*, int*,
                int*, int*, int*, int*, double*);

static const R_CMethodDef CEntries[] = {
    {"main_ermg",  (DL_FUNC) &main_ermg,  20},
    {"main_ermgo", (DL_FUNC) &main_ermgo, 14},
    {NULL, NULL, 0}
};

void R_init_mixnet(DllInfo *dll)
{
    R_registerRoutines(dll, CEntries, NULL, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
