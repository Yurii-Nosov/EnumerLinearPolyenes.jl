module VerificationGeometry

using ..AllSmallParts
using ..CreateGraphs
using ..GenCodeBasicIsoConf

include("../src/jfiles/verificationGeometry.jl")



export calc_angles, calc_angles2,check_values,calc_length_cc_edges, calc_length_ch_branchs
export analyz_length_cc_edges, analyz_length_cc_edges_hyd, analyz_length_ch_branchs, 
       analyz_angle_cc_hyd,analyz_angle_cc_edges
export from_vcode_to_list_angles,from_list_angles_to_vcode


# Aliases for backward compatibility
export calcangles, calcangles2,checkvalues,calclengthcc, calclengthch
export analyzlengthcc, analyzlengthhydcc, analyzlengthch,
        analyzanglehydcc,analyzanglecc 
export fromlistanglestovcode, fromvcodetolistangles


const calcangles = calc_angles
const calcangles2 = calc_angles2
const checkvalues = check_values
const calclengthcc =  calc_length_cc_edges
const calclengthch = calc_length_ch_branchs
const analyzlengthcc = analyz_length_cc_edges
const analyzlengthhydcc = analyz_length_cc_edges_hyd
const analyzlengthch  = analyz_length_ch_branchs
const analyzanglehydcc = analyz_angle_cc_hyd
const analyzanglecc = analyz_angle_cc_edges
const fromlistanglestovcode = from_list_angles_to_vcode
const fromvcodetolistangles = from_vcode_to_list_angles


end