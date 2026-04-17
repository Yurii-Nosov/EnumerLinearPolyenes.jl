module GenCodeBasicIsoConf

using ..AppConstants
using ..AllSmallParts


include("../src/jfiles/genCodeBasicIsoConf.jl")


export generate_all_codes, generate_isomer_vertex, generate_isomer_edge,
       generate_trans_conformer_vertex, generate_trans_conformer_edge,
       generate_other_conformer_vertex,generate_other_conformer_edge
# Aliases for backward compatibility
export genallcode, genisovertex, genisoedge, gentransconfvertex,gentransconfedge,
       genotherconfvertex,genotherconfedge

# ============================================================
# Aliases for backward compatibility
# ============================================================


const genallcode = generate_all_codes
const genisovertex = generate_isomer_vertex
const genisoedge = generate_isomer_edge
const gentransconfvertex = generate_trans_conformer_vertex
const gentransconfedge = generate_trans_conformer_edge
const genotherconfvertex = generate_other_conformer_vertex
const genotherconfedge = generate_other_conformer_edge



end  # end of module