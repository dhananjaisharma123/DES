// ccs_block_macros.h
#include "ccs_testbench.h"

#ifndef EXCLUDE_CCS_BLOCK_INTERCEPT
#ifndef INCLUDE_CCS_BLOCK_INTERCEPT
#define INCLUDE_CCS_BLOCK_INTERCEPT
#ifdef  CCS_DESIGN_FUNC_des_check
extern void mc_testbench_capture_IN(ac_int<64, false > input, ac_int<64, false > key);
extern void mc_testbench_capture_OUT(ac_int<64, false > _retvalue,ac_int<64, false > input, ac_int<64, false > key);
extern void mc_testbench_wait_for_idle_sync();

#define ccs_intercept_des_check_8 \
  ccs_real_des_check(ac_int<64, false > input,ac_int<64, false > key);\
  ac_int<64, false > des_check(ac_int<64, false > input,ac_int<64, false > key)\
{\
    static bool ccs_intercept_flag = false;\
    if (!ccs_intercept_flag) {\
      std::cout << "SCVerify intercepting C++ function 'des_check' for RTL block 'des_check'" << std::endl;\
      ccs_intercept_flag=true;\
    }\
    mc_testbench_capture_IN(input,key);\
    ac_int<64, false > _retvalue = ccs_real_des_check(input,key);\
    mc_testbench_capture_OUT(_retvalue,input,key);\
    return _retvalue;\
}\
  ac_int<64, false > ccs_real_des_check
#else
#define ccs_intercept_des_check_8 des_check
#endif //CCS_DESIGN_FUNC_des_check
#endif //INCLUDE_CCS_BLOCK_INTERCEPT
#endif //EXCLUDE_CCS_BLOCK_INTERCEPT

