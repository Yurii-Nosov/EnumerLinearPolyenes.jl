#using EnumerateLinearPolyenes


include("../allmodules.jl")

#include("../../src/jfiles/allSmallParts.jl")
#include("../../src/jfiles/genCodeSubGraphCOI.jl")
#include("../../src/jfiles/genCodeUniversal.jl")
#include("../../src/jfiles/createGraphs.jl")
#include("../../src/jfiles/distribGraphsOverlapping.jl")

# An example of calculating the distribution of Yeh molecular graphs of order
# 14-26 by # the number of pairs of overlapping vertices with output to a text
#  file in the form of a table.



orders = 14:2:26
dirpath ="C:\\Julia_results\\DistributionYehGraphsByOverlap\\"
fname = "ListDistribYehGraphsOverlap"

if !isdir(dirpath)
    mkpath(dirpath)
end

output_list_distr_yeh_graphs(orders,dirpath, fname)