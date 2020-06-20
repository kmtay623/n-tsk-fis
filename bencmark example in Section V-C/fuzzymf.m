function [fuzziness,size_fuzziness,complete_fuzzyrule]=  fuzzymf(x)

mf1_x1 = trap_mf(x(1), [0  0   0.2 0.5 1]);%key in
mf2_x1 = trap_mf(x(1), [0.3 0.6 0.7 1  0.7]);%key in
mf3_x1 = trap_mf(x(1), [0.6 0.8 1 1  0.9]);%key in
fuzziness{1,:} = [mf1_x1 mf2_x1 mf3_x1];%key in

mf1_x2 = trap_mf(x(2), [0  0   0.1 0.5 0.9]);%key in
mf2_x2 = trap_mf(x(2), [0.3 0.5 0.5 1  0.9]);%key in
mf3_x2 = trap_mf(x(2), [0.5 0.7 1 1  0.9]);%key in
fuzziness{2,:} = [mf1_x2 mf2_x2 mf3_x2];

mf1_x3 = trap_mf(x(3), [0  0   0.3 0.5 0.8]);%key in
mf2_x3 = trap_mf(x(3), [0.2 0.6 0.7 1  0.9]);%key in
mf3_x3 = trap_mf(x(3), [0.7 1 1 1  0.7]);%key in
fuzziness{3,:} = [mf1_x3 mf2_x3 mf3_x3];%key in

mf1_x4 = trap_mf(x(4), [0  0   0.3 0.7 1]);%key in
mf2_x4 = trap_mf(x(4), [0.4 0.5 0.8 1  1]);%key in
mf3_x4 = trap_mf(x(4), [0.7 0.9 1 1  1]);%key in
fuzziness{4,:} = [mf1_x4 mf2_x4 mf3_x4];%key in

mf1_x5 = trap_mf(x(5), [0  0   0 0.5 1]);%key in
mf2_x5 = trap_mf(x(5), [0 0.5 0.5 1  1]);%key in
mf3_x5 = trap_mf(x(5), [0.5 1 1 1  1]);%key in
fuzziness{5,:} = [mf1_x5 mf2_x5 mf3_x5];%key in

size_fuzziness=[3,3,3,3,3]; %key in

complete_fuzzyrule=(combvec(1:3', 1:3',1:3',1:3',1:3')'); %key in