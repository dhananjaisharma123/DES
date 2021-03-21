// ----------------------------------------------------------------------------
// User Testbench Interface Header
//
//    HLS version: 10.5c/896140 Production Release
//       HLS date: Sun Sep  6 22:45:38 PDT 2020
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4.1
//
//   Generated by: ds6365@hansolo.poly.edu
// Generated date: Sun Mar 21 13:06:32 EDT 2021
//
// ----------------------------------------------------------------------------

#ifndef CCS_TESTBENCH_H
#define CCS_TESTBENCH_H
#include <ac_int.h>
#include "mc_wait_ctrl.h"
#include <string.h>
#include <iostream>

class testbench
{
   public:
   int argc;
   char** argv;
   int main(); //CCS_MAIN
   static bool enable_idle_sync_mode;
   static unsigned short idle_sync_stable_cycles;
   static void set_enable_stalls(bool flag);
   static void reset_request();
   static bool input_ignore;
   static bool input_skip;
   static bool input_skip_quiet;
   static bool input_skip_once;
   static bool input_skip_noerr;
   static int  input_array_comp_first;
   static int  input_array_comp_last;
   static mc_wait_ctrl input_wait_ctrl;
   static bool key_ignore;
   static bool key_skip;
   static bool key_skip_quiet;
   static bool key_skip_once;
   static bool key_skip_noerr;
   static int  key_array_comp_first;
   static int  key_array_comp_last;
   static mc_wait_ctrl key_wait_ctrl;
   static bool return_ignore;
   static bool return_skip;
   static bool return_skip_quiet;
   static bool return_skip_once;
   static bool return_skip_noerr;
   static int  return_array_comp_first;
   static int  return_array_comp_last;
   static bool return_use_mask;
   static ac_int<64, false > return_output_mask;
   static mc_wait_ctrl return_wait_ctrl;
   #ifndef CCS_SCVERIFY_USE_CCS_BLOCK
   static ac_int<64, false > exec_des_check(ac_int<64, false > input, ac_int<64, false > key);
   #endif
   explicit testbench(int _argc, const char* const *_argv)
      :argc(_argc), argv(const_cast<char**>(_argv))
   {
   }
   ~testbench()
   {
   }
   private:
   testbench() {}
};
extern void mc_testbench_reset_request();
extern void mc_testbench_input_skip(bool v);
extern void mc_testbench_key_skip(bool v);
extern void mc_testbench_return_skip(bool v);
#endif //CCS_TESTBENCH_H
