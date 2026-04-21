module DistribGraphsOverlapping

using ..AllSmallParts
using ..GenCodeUniversal
using ..CreateGraphs
using ..OutputGraphs

include("../src/jfiles/distribGraphsOverlapping.jl")


export npov, max_overlap_pairs, count_intersect, show_all_graphs_overlap, show_select_graphs_overlap,
    calc_distr_all_graphs_overlap, output_distr_all_graphs_overlap,output_list_distr_yeh_graphs,
    distribution_graphs_overlap


# Aliases for backward compatibility
export maxoverlappairs, countintersect,showallgraphsoverlap, showselectgraphsoverlap, 
       calcdistrallgraphsoverlap, outputdistrallgraphsoverlap, outputlistdistryehgraphs,
       distribgraphsoverlap


# ============================================================
# Aliases for backward compatibility (old names)
# ============================================================
const maxoverlappairs = max_overlap_pairs
const countintersect = count_intersect 
const showallgraphsoverlap = show_all_graphs_overlap
const showselectgraphsoverlap = show_select_graphs_overlap
const outputdistrallgraphsoverlap = output_distr_all_graphs_overlap
const calcdistrallgraphsoverlap = calc_distr_all_graphs_overlap
const outputlistdistryehgraphs = output_list_distr_yeh_graphs
const distribgraphsoverlap = distribution_graphs_overlap

end