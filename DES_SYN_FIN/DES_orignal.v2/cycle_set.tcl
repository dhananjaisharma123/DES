
# Loop constraints
directive set /des_check/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /des_check/core/core:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds CSTEPS_FROM {{. == 1} {.. == 1}}

# IO operation constraints
directive set /des_check/core/core:rlp/main/input:io_read(input:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/key:io_read(key:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/inv_init_perm_res:io_write(return:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#4 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#5 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#6 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#7 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#8 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#10 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#12 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#13 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#14 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#15 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#16 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#17 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#18 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#19 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#21 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#22 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#23 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#25 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#26 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#28 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#29 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#30 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#34 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#35 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#36 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#37 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#38 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#39 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#41 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#42 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#44 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#45 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#46 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#47 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#49 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#50 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#51 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#52 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#53 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#54 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#55 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#56 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#57 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#58 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#60 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#61 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#11 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#20 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#24 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#27 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#40 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#43 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#48 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/loop_DES_rounds/loop_DES_rounds:mux#59 CSTEPS_FROM {{.. == 1}}

# Probe constraints
