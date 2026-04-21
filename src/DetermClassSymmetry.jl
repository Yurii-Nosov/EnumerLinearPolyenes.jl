module DetermClassSymmetry

using ..AppConstants
using ..AllSmallParts


include("../src/jfiles/determClassSymmetry.jl")



export  symmetry_class_from_vertex,symmetry_class_from_edge,
        count_graphs_by_symmetry_vertex, count_graphs_by_symmetry_edge,
        count_graphs_by_symmetry_range, output_graphs_by_symmetry_range

# Aliases for backward compatibility       
export symclassfromvertex, symclassfromedge,countgraphsbysymvertex,countgraphsbysymedge,
       countgraphsbysymrange, outputgraphsbysymrange


# ============================================================
# Aliases for backward compatibility
# ============================================================

const  symclassfromvertex = symmetry_class_from_vertex
const  symclassfromedge = symmetry_class_from_edge
const  countgraphsbysymvertex = count_graphs_by_symmetry_vertex
const  countgraphsbysymedge = count_graphs_by_symmetry_edge
const  countgraphsbysymrange = count_graphs_by_symmetry_range
const  outputgraphsbysymrange = output_graphs_by_symmetry_range


end