module CreateGraphs

include("../src/jfiles/createGraphs.jl")

export create_carbon_chain, create_hydrogen_tree

# Aliases for backward compatibility
export makepolyenpathcc, makepolyentreehh



# ============================================================
# Aliases
# ============================================================

const makepolyenpathcc = create_carbon_chain
const makepolyentreehh = create_hydrogen_tree

end  # end of module