module OutputGraphs

using Plots

using ..AllSmallParts
using ..CreateGraphs


include("../src/jfiles/outputGraphs.jl")



export show_graph_cc, show_graph_hyd, show_graph_wait, output_graph_cc,
       output_graph_hyd,show_list_graphs_cc, show_list_graphs_hyd,
       print_list_graphs_hyd, print_list_graphs_cc 

# Aliases for backward compatibility
export showgraphcc, showgraphhyd, outputgraphcc, outputgraphhyd,
        showgraphwait, showlistgraphscc, showlistgraphshyd,
       printlistgraphscc, printlistgraphshyd


const  showgraphcc = show_graph_cc
const  showgraphhyd = show_graph_hyd
const  outputgraphcc = output_graph_cc
const  outputgraphhyd = output_graph_hyd
const  showgraphwait = show_graph_wait
const  showlistgraphscc = show_list_graphs_cc
const  showlistgraphshyd = show_list_graphs_hyd
const  printlistgraphscc = print_list_graphs_cc
const  printlistgraphshyd = print_list_graphs_hyd


end  #  end of module