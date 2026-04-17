module CountCodeIsoConf

using ..AppConstants
using ..AllSmallParts


include("../src/jfiles/CountCodeIsoConf.jl")

export count_codes_from_edge, count_codes_from_vertex, 
       count_codes_range_edge, count_codes_range_vertex, save_count_codes_range_edge,
       count_other_conformers, count_other_conformers_range, 
       save_count_other_conformers_range, count_other_conformers_subtype

# Aliases for backward compatibility
export  countcodefromze,  countcodefrombcd, countlistcodefromze,
        countlistcodefrombcd, savecountlistcode,
        countcoi, countlistcoi, savecountlistcoi,countotherconfosubtype

    
# ============================================================
# Алиасы для обратной совместимости
# ============================================================

const countcodefromze = count_codes_from_edge
const countcodefrombcd = count_codes_from_vertex
const countlistcodefromze = count_codes_range_edge
const countlistcodefrombcd = count_codes_range_vertex
const savecountlistcode   =  save_count_codes_range_edge
const countcoi = count_other_conformers
const countlistcoi = count_other_conformers_range
const savecountlistcoi = save_count_other_conformers_range
const countotherconfosubtype  = count_other_conformers_subtype

end  ## End of module