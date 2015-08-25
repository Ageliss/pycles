cimport Grid
cimport ReferenceState
cimport PrognosticVariables
cimport DiagnosticVariables
cimport ParallelMPI
from NetCDFIO cimport NetCDFIO_Stats

cdef class ScalarDiffusion:

    cdef:
        double [:] flux

    cpdef initialize(self, Grid.Grid Gr, PrognosticVariables.PrognosticVariables PV,
                     DiagnosticVariables.DiagnosticVariables DV, NetCDFIO_Stats NS, ParallelMPI.ParallelMPI Pa)
    cpdef update(self, Grid.Grid Gr, ReferenceState.ReferenceState RS,PrognosticVariables.PrognosticVariables PV,
                     DiagnosticVariables.DiagnosticVariables DV)
    cpdef stats_io(self, Grid.Grid Gr, ReferenceState.ReferenceState RS,PrognosticVariables.PrognosticVariables PV,
                     DiagnosticVariables.DiagnosticVariables DV, NetCDFIO_Stats NS, ParallelMPI.ParallelMPI Pa)