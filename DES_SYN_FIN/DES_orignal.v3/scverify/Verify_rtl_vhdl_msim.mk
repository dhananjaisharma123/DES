# ----------------------------------------------------------------------------
# RTL VHDL output 'rtl.vhdl' vs Untimed C++
#
#    HLS version: 10.5c/896140 Production Release
#       HLS date: Sun Sep  6 22:45:38 PDT 2020
#  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4.1
#
#   Generated by: ds6365@hansolo.poly.edu
# Generated date: Sun Mar 21 13:06:33 EDT 2021
#
# ----------------------------------------------------------------------------
# ===================================================
# DEFAULT GOAL is the help target
.PHONY: all
all: help

# ===================================================
# Directories (at the time this makefile was created)
#   MGC_HOME      /opt/mentorgraphics/Catapult_10.5c/Mgc_home
#   PROJECT_HOME  /home/ds6365
#   SOLUTION_DIR  /home/ds6365/DES_SYN_FIN/DES_orignal.v3
#   WORKING_DIR   /home/ds6365/DES_SYN_FIN/DES_orignal.v3/.

# ===================================================
# VARIABLES
# 
MGC_HOME          = /opt/mentorgraphics/Catapult_10.5c/Mgc_home
export MGC_HOME

WORK_DIR  = $(CURDIR)
WORK2PROJ = ../..
WORK2SOLN = .
PROJ2WORK = ./DES_SYN_FIN/DES_orignal.v3
PROJ2SOLN = ./DES_SYN_FIN/DES_orignal.v3
export WORK_DIR
export WORK2PROJ
export WORK2SOLN
export PROJ2WORK
export PROJ2SOLN

# Variables that can be overridden from the make command line
ifeq "$(INCL_DIRS)" ""
INCL_DIRS                   = ./scverify . ../..
endif
export INCL_DIRS
ifeq "$(STAGE)" ""
STAGE                       = rtl
endif
export STAGE
ifeq "$(NETLIST_LEAF)" ""
NETLIST_LEAF                = rtl
endif
export NETLIST_LEAF
ifeq "$(SIMTOOL)" ""
SIMTOOL                     = msim
endif
export SIMTOOL
ifeq "$(NETLIST)" ""
NETLIST                     = vhdl
endif
export NETLIST
ifeq "$(RTL_NETLIST_FNAME)" ""
RTL_NETLIST_FNAME           = /home/ds6365/DES_SYN_FIN/DES_orignal.v3/rtl.vhdl
endif
export RTL_NETLIST_FNAME
ifeq "$(GATE_FNAME_BASE)" ""
GATE_FNAME_BASE             = gate.dc.vhdl
endif
export GATE_FNAME_BASE
ifeq "$(INVOKE_ARGS)" ""
INVOKE_ARGS                 = 
endif
export INVOKE_ARGS
export SCVLIBS
export MODELSIM
TOP_HDL_ENTITY           := des_check
TOP_DU                   := scverify_top
CXX_TYPE                 := gcc
MSIM_SCRIPT              := ./DES_SYN_FIN/DES_orignal.v3/scverify_msim.tcl
TARGET                   := scverify/$(NETLIST_LEAF)_$(NETLIST)_$(SIMTOOL)
export TOP_HDL_ENTITY
export TARGET

ifeq ($(RECUR),)
ifeq ($(STAGE),mapped)
ifeq ($(RTLTOOL),)
   $(error This makefile requires specifying the RTLTOOL variable on the make command line)
endif
endif
endif
# ===================================================
# Include environment variables set by flow options
include ./ccs_env.mk

# ===================================================
# Include makefile for default commands and variables
include $(MGC_HOME)/shared/include/mkfiles/ccs_default_cmds.mk

SYNTHESIS_FLOWPKG := DesignCompiler
SYN_FLOW          := DesignCompiler
# ===================================================
# SOURCES
# 
# Specify list of Questa SIM libraries to create
HDL_LIB_NAMES = mgc_hls work
# ===================================================
# Simulation libraries required by loaded Catapult libraries or gate simulation
SIMLIBS_V   += 
SIMLIBS_VHD += 
# 
# Specify list of source files - MUST be ordered properly
ifeq ($(STAGE),gate)
ifeq ($(RTLTOOL),)
# Unless overridden on make command line, GATE_*_DEP is the last item in the netlist dependency list
ifeq ($(GATE_VHDL_DEP),)
GATE_VHDL_DEP = ./rtl.vhdl/rtl.vhdl_11.vhdlts
endif
ifeq ($(GATE_VLOG_DEP),)
GATE_VLOG_DEP = 
endif
endif
VHDL_SRC += $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.vhd/ccs_in_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/ccs_out_v1.vhd/ccs_out_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/mgc_io_sync_v2.vhd/mgc_io_sync_v2.vhd.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3_0/rtl.vhdl/rtl.vhdl.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3_0/rtl.vhdl/rtl.vhdl_4.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3_0/rtl.vhdl/rtl.vhdl_5.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3_0/rtl.vhdl/rtl.vhdl_6.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3_0/rtl.vhdl/rtl.vhdl_7.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3_0/rtl.vhdl/rtl.vhdl_8.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3_0/rtl.vhdl/rtl.vhdl_9.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3_0/rtl.vhdl/rtl.vhdl_10.vhdlts $(GATE_VHDL_DEP)
VLOG_SRC +=  $(GATE_VLOG_DEP)
else
VHDL_SRC += $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.vhd/ccs_in_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/ccs_out_v1.vhd/ccs_out_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/mgc_io_sync_v2.vhd/mgc_io_sync_v2.vhd.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3_0/rtl.vhdl/rtl.vhdl.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3_0/rtl.vhdl/rtl.vhdl_4.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3_0/rtl.vhdl/rtl.vhdl_5.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3_0/rtl.vhdl/rtl.vhdl_6.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3_0/rtl.vhdl/rtl.vhdl_7.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3_0/rtl.vhdl/rtl.vhdl_8.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3_0/rtl.vhdl/rtl.vhdl_9.vhdlts ../td_ccore_solutions/ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3_0/rtl.vhdl/rtl.vhdl_10.vhdlts ./rtl.vhdl/rtl.vhdl_11.vhdlts
VLOG_SRC += 
endif
CXX_SRC  = ../../des_tb.cpp/des_tb.cpp.cxxts ./scverify/mc_testbench.cpp/mc_testbench.cpp.cxxts ./scverify/scverify_top.cpp/scverify_top.cpp.cxxts
# Specify RTL synthesis scripts (if any)
RTL_SCRIPT = 

# Specify hold time file name (for verifying synthesized netlists)
HLD_CONSTRAINT_FNAME = top_gate_constraints.cpp

# ===================================================
# GLOBAL OPTIONS
# 
# CXXFLAGS - global C++ options (apply to all C++ compilations) except for include file search paths
CXXFLAGS += -DCCS_SCVERIFY -DSC_INCLUDE_DYNAMIC_PROCESSES -DSC_USE_STD_STRING -DCCS_SYSC_DEBUG -DTOP_HDL_ENTITY=$(TOP_HDL_ENTITY) -DCCS_DESIGN_FUNC_des_check -DCCS_DESIGN_TOP_$(TOP_HDL_ENTITY) -DCCS_MISMATCHED_OUTPUTS_ONLY $(F_WRAP_OPT)
# 
# If the make command line includes a definition of the special variable MC_DEFAULT_TRANSACTOR_LOG
# then define that value for all compilations as well
ifneq "$(MC_DEFAULT_TRANSACTOR_LOG)" ""
CXXFLAGS += -DMC_DEFAULT_TRANSACTOR_LOG=$(MC_DEFAULT_TRANSACTOR_LOG)
endif
# 
# CXX_INCLUDES - include file search paths
CXX_INCLUDES = ./scverify . ../..
# 
# TCL shell
TCLSH_CMD = /opt/mentorgraphics/Catapult_10.5c/Mgc_home/bin/tclsh8.5

# Pass along SCVerify_DEADLOCK_DETECTION option
ifneq "$(SCVerify_DEADLOCK_DETECTION)" "false"
CXXFLAGS += -DDEADLOCK_DETECTION
endif
# ===================================================
# PER SOURCE FILE SPECIALIZATIONS
# 
# Specify source file paths
$(TARGET)/ccs_in_v1.vhd.vhdlts: $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.vhd
$(TARGET)/ccs_out_v1.vhd.vhdlts: $(MGC_HOME)/pkgs/siflibs/ccs_out_v1.vhd
$(TARGET)/mgc_io_sync_v2.vhd.vhdlts: $(MGC_HOME)/pkgs/siflibs/mgc_io_sync_v2.vhd
$(TARGET)/rtl.vhdl.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_4.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_5.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_6.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_7.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_8.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_9.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_10.vhdlts: ../td_ccore_solutions/ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3_0/rtl.vhdl
$(TARGET)/rtl.vhdl_11.vhdlts: ./rtl.vhdl
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): $(dir $(GATE_VHDL_DEP))
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): $(dir $(GATE_VLOG_DEP))
endif
endif
$(TARGET)/des_tb.cpp.cxxts: ../../des_tb.cpp
$(TARGET)/mc_testbench.cpp.cxxts: ./scverify/mc_testbench.cpp
$(TARGET)/scverify_top.cpp.cxxts: ./scverify/scverify_top.cpp
# 
# Specify additional C++ options per C++ source by setting CXX_OPTS
$(TARGET)/des_tb.cpp.cxxts: CXX_OPTS=
$(TARGET)/scverify_top.cpp.cxxts: CXX_OPTS=
$(TARGET)/mc_testbench.cpp.cxxts: CXX_OPTS=$(F_WRAP_OPT)
# 
# Specify dependencies
$(TARGET)/des_tb.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/mc_testbench.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/scverify_top.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts .ccs_env_opts/SCVerify_DEADLOCK_DETECTION.ts
# 
# Specify compilation library for HDL source
$(TARGET)/rtl.vhdl.vhdlts: HDL_LIB=work
$(TARGET)/rtl.vhdl_11.vhdlts: HDL_LIB=work
$(TARGET)/rtl.vhdl_4.vhdlts: HDL_LIB=work
$(TARGET)/rtl.vhdl_8.vhdlts: HDL_LIB=work
$(TARGET)/mgc_io_sync_v2.vhd.vhdlts: HDL_LIB=mgc_hls
$(TARGET)/rtl.vhdl_6.vhdlts: HDL_LIB=work
$(TARGET)/rtl.vhdl_7.vhdlts: HDL_LIB=work
$(TARGET)/ccs_out_v1.vhd.vhdlts: HDL_LIB=mgc_hls
$(TARGET)/rtl.vhdl_5.vhdlts: HDL_LIB=work
$(TARGET)/rtl.vhdl_9.vhdlts: HDL_LIB=work
$(TARGET)/rtl.vhdl_10.vhdlts: HDL_LIB=work
$(TARGET)/ccs_in_v1.vhd.vhdlts: HDL_LIB=mgc_hls
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): HDL_LIB=work
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): HDL_LIB=work
endif
endif
# 
# Specify additional HDL source compilation options if any
$(TARGET)/rtl.vhdl.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_11.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_4.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_8.vhdlts: VHDL_F_OPTS=
$(TARGET)/mgc_io_sync_v2.vhd.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_6.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_7.vhdlts: VHDL_F_OPTS=
$(TARGET)/ccs_out_v1.vhd.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_5.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_9.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_10.vhdlts: VHDL_F_OPTS=
$(TARGET)/ccs_in_v1.vhd.vhdlts: VHDL_F_OPTS=
# 
# Specify top design unit for HDL source
$(TARGET)/rtl.vhdl_11.vhdlts: DUT_E=des_check
$(TARGET)/rtl.vhdl_10.vhdlts: DUT_E=ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3
$(TARGET)/rtl.vhdl_8.vhdlts: DUT_E=ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
$(TARGET)/rtl.vhdl_4.vhdlts: DUT_E=ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3
$(TARGET)/rtl.vhdl.vhdlts: DUT_E=ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
$(TARGET)/rtl.vhdl_6.vhdlts: DUT_E=ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
$(TARGET)/rtl.vhdl_9.vhdlts: DUT_E=ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3
$(TARGET)/rtl.vhdl_7.vhdlts: DUT_E=ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
$(TARGET)/rtl.vhdl_5.vhdlts: DUT_E=ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3

# Specify top design unit
$(TARGET)/rtl.vhdl_11.vhdlts: VHDL_TOP=1

ifneq "$(RTLTOOL)" ""
# ===================================================
# Include makefile for RTL synthesis
include $(MGC_HOME)/shared/include/mkfiles/ccs_$(RTLTOOL).mk
else
# ===================================================
# Include makefile for simulator
include $(MGC_HOME)/shared/include/mkfiles/ccs_questasim.mk
endif

