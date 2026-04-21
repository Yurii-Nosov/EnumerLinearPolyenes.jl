module AllSmallParts


include("../src/jfiles/allSmallParts.jl")

export zam, invert, intg_digits, func, min_edge_code, min_vertex_code, check_min_edge, 
       check_min_vertex, edge_to_vertex, edge_to_vertex_code,
       graph_type_from_edge, graph_type_from_vertex,graph_subtype_edge,graph_subtype_vertex,
       parsing_vertex_code, lpdval,lpdstr,concate_zeros, remove_trailing_zeros
       
# Aliases for backward compatibility
export intgdig, minze, minbcd, checkminze, checkminbcd,fromzetobcd, 
       inzetobcd, graphtypefromze, graphtypefrombcd,graphsubtypeedge,graphsubtypevertex,
       lpdval,lpdst, parsingvertexcode, concatezeros, removetrailingzeros 
       




# ============================================================
# Aliases for backward compatibility (old names)
# ============================================================

const minze = min_edge_code
const minbcd = min_vertex_code
const checkminze = check_min_edge
const checkminbcd = check_min_vertex
const fromzetobcd = edge_to_vertex
const inzetobcd = edge_to_vertex_code
const graphtypefromze = graph_type_from_edge
const graphtypefrombcd = graph_type_from_vertex
const graphsubtypeedge = graph_subtype_edge
const graphsubtypevertex = graph_subtype_vertex
const intgdig = intg_digits
const parsingvertexcode = parsing_vertex_code
const removetrailingzeros = remove_trailing_zeros
const concatezeros  = concate_zeros


end  # end of module

