
# Loop constraints
directive set /des_check/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /des_check/core/core:rlp/main CSTEPS_FROM {{. == 17} {.. == 0}}

# IO operation constraints
directive set /des_check/core/core:rlp/main/input:io_read(input:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/key:io_read(key:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/inv_init_perm_res:io_write(return:rsc.@) CSTEPS_FROM {{.. == 16}}

# Sync operation constraints

# Real operation constraints
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#1 CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#1 CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#1 CSTEPS_FROM {{.. == 1}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#1 CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#1 CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#1 CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#1 CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#1 CSTEPS_FROM {{.. == 2}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#2 CSTEPS_FROM {{.. == 3}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#3 CSTEPS_FROM {{.. == 4}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#4 CSTEPS_FROM {{.. == 5}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#5 CSTEPS_FROM {{.. == 6}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#6 CSTEPS_FROM {{.. == 7}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#7 CSTEPS_FROM {{.. == 8}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#8 CSTEPS_FROM {{.. == 9}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#9 CSTEPS_FROM {{.. == 10}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#10 CSTEPS_FROM {{.. == 11}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#11 CSTEPS_FROM {{.. == 12}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#12 CSTEPS_FROM {{.. == 13}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#13 CSTEPS_FROM {{.. == 14}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#14 CSTEPS_FROM {{.. == 15}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f#15 CSTEPS_FROM {{.. == 16}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f#15 CSTEPS_FROM {{.. == 16}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f#15 CSTEPS_FROM {{.. == 16}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f#15 CSTEPS_FROM {{.. == 16}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f#15 CSTEPS_FROM {{.. == 16}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f#15 CSTEPS_FROM {{.. == 16}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f#15 CSTEPS_FROM {{.. == 16}}
directive set /des_check/core/core:rlp/main/U:ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f#15 CSTEPS_FROM {{.. == 16}}

# Probe constraints
