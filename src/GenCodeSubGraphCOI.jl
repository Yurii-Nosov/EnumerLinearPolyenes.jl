module GenCodeSubGraphCOI

using ..AppConstants
using ..AllSmallParts

include("../src/jfiles/genCodeSubGraphCOI.jl")


export gen_coi_subtype_edge, gen_coi_subtype_vertex
export generate_coi_non_cis3p, generate_coi_cis3, generate_coi_cis4p

# Aliases for backward compatibility
 
export gencoisubtypeedge, gencoisubtypevertex,
       generatecoinoncis3p, generatecoicis3, generatecoicis4p


const gencoisubtypeedge = gen_coi_subtype_edge 
const gencoisubtypevertex = gen_coi_subtype_vertex

const  generatecoinoncis3p =  generate_coi_non_cis3p
const  generatecoicis3 =  generate_coi_cis3
const  generatecoicis4p =  generate_coi_cis4p

end  ##end of module