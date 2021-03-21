void mc_testbench_capture_IN(ac_int<64, false > input, ac_int<64, false > key) { mc_testbench::capture_IN(input,key); }
void mc_testbench_capture_OUT(ac_int<64, false > _retvalue,ac_int<64, false > input, ac_int<64, false > key) { mc_testbench::capture_OUT(_retvalue,input,key); }
void mc_testbench_wait_for_idle_sync() {mc_testbench::wait_for_idle_sync(); }

