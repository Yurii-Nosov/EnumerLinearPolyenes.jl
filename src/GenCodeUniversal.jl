module GenCodeUniversal

using ..AppConstants
using ..AllSmallParts

include("../src/jfiles/genCodeUniversal.jl")



export gen_codes_all_graphs, gen_codes_graphs_type, gen_codes_graphs_coiso, 
       check_yeh_vertex, check_yeh_edge, gen_codes_yeh_graphs

# Aliases for backward compatibility
export gencodesallgraphs, gencodesgraphstype, gencodesgraphscoiso, checkyehvertex,
       checkyehedge,gencodesyehgraphs


const gencodesallgraphs =  gen_codes_all_graphs
const gencodesgraphstype = gen_codes_graphs_type
const gencodesgraphscoiso = gen_codes_graphs_coiso
const checkyehvertex =  check_yeh_vertex
const checkyehedge =   check_yeh_edge
const gencodesyehgraphs = gen_codes_yeh_graphs




end  ## end of module