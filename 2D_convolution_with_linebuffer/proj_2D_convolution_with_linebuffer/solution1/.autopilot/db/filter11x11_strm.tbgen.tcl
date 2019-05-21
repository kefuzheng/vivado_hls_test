set moduleName filter11x11_strm
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {filter11x11_strm}
set C_modelType { void 0 }
set C_modelArgList {
	{ width int 32 regular  }
	{ height int 32 regular  }
	{ src_V int 32 regular {axi_s 0 volatile  { src_V Data } }  }
	{ dst_V int 32 regular {axi_s 1 volatile  { dst_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "height","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "src_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "src.V","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dst.V","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ width sc_in sc_lv 32 signal 0 } 
	{ height sc_in sc_lv 32 signal 1 } 
	{ src_V_TDATA sc_in sc_lv 32 signal 2 } 
	{ dst_V_TDATA sc_out sc_lv 32 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ src_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ src_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ dst_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ dst_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "src_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_V", "role": "TDATA" }} , 
 	{ "name": "dst_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst_V", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "src_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "src_V", "role": "TVALID" }} , 
 	{ "name": "src_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "src_V", "role": "TREADY" }} , 
 	{ "name": "dst_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst_V", "role": "TVALID" }} , 
 	{ "name": "dst_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst_V", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "14", "35", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "filter11x11_strm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "2070627",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "filter11x11_strm_ent_U0", "ReadyCount" : "filter11x11_strm_ent_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "Loop_HConvH_proc6_U0", "ReadyCount" : "Loop_HConvH_proc6_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "35", "Name" : "Loop_Border_proc_U0"}],
		"Port" : [
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Loop_HConvH_proc6_U0", "Port" : "src_V"}]},
			{"Name" : "dst_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "Loop_Border_proc_U0", "Port" : "dst_V"}]},
			{"Name" : "linebuf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_0"}]},
			{"Name" : "linebuf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_1"}]},
			{"Name" : "linebuf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_2"}]},
			{"Name" : "linebuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_3"}]},
			{"Name" : "linebuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_4"}]},
			{"Name" : "linebuf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_5"}]},
			{"Name" : "linebuf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_6"}]},
			{"Name" : "linebuf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_7"}]},
			{"Name" : "linebuf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_8"}]},
			{"Name" : "linebuf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_VConvH_proc_U0", "Port" : "linebuf_9"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter11x11_strm_ent_U0", "Parent" : "0",
		"CDFG" : "filter11x11_strm_ent",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "width_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "height_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_Block_proc_U0_U",
		"Port" : [
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vconv_xlim_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "vconv_xlim_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "Loop_HConvH_proc6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "2070612",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hconv_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "hconv_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_32ns_32ns_64_3_1_U12", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_8ns_32s_32_3_1_U13", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U14", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_11ns_32s_32_3_1_U15", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_11ns_32s_32_3_1_U16", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U17", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_8ns_32s_32_3_1_U18", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_11ns_32s_32_3_1_U19", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U20", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_HConvH_proc6_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U21", "Parent" : "3"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "Loop_VConvH_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "2059825",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_Loop_VConvH_proc_U0_U",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "6", "FromAddress" : "linebuf_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_85", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "7", "ToAddress" : "linebuf_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_72", "FromFinalSV" : "6", "FromAddress" : "linebuf_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_86", "ToFinalSV" : "7", "ToAddress" : "linebuf_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_73", "FromFinalSV" : "6", "FromAddress" : "linebuf_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_88", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_88", "ToFinalSV" : "7", "ToAddress" : "linebuf_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_74", "FromFinalSV" : "6", "FromAddress" : "linebuf_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "7", "ToAddress" : "linebuf_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_75", "FromFinalSV" : "6", "FromAddress" : "linebuf_5_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_91", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_91", "ToFinalSV" : "7", "ToAddress" : "linebuf_5_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_76", "FromFinalSV" : "6", "FromAddress" : "linebuf_6_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_92", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "7", "ToAddress" : "linebuf_6_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_77", "FromFinalSV" : "6", "FromAddress" : "linebuf_7_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "7", "ToAddress" : "linebuf_7_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_78", "FromFinalSV" : "6", "FromAddress" : "linebuf_8_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_96", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "7", "ToAddress" : "linebuf_8_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_79", "FromFinalSV" : "6", "FromAddress" : "linebuf_9_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_80", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_80", "ToFinalSV" : "6", "ToAddress" : "linebuf_9_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_80", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_80", "FromFinalSV" : "6", "FromAddress" : "linebuf_9_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_79", "ToFinalSV" : "6", "ToAddress" : "linebuf_9_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_70", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_81", "FromFinalSV" : "7", "FromAddress" : "linebuf_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_83", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "7", "ToAddress" : "linebuf_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_83", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "7", "FromAddress" : "linebuf_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state7_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_70", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state8_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_81", "ToFinalSV" : "7", "ToAddress" : "linebuf_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_85", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "7", "FromAddress" : "linebuf_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "6", "ToAddress" : "linebuf_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_86", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_86", "FromFinalSV" : "7", "FromAddress" : "linebuf_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_72", "ToFinalSV" : "6", "ToAddress" : "linebuf_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_88", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_88", "FromFinalSV" : "7", "FromAddress" : "linebuf_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_73", "ToFinalSV" : "6", "ToAddress" : "linebuf_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "7", "FromAddress" : "linebuf_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_74", "ToFinalSV" : "6", "ToAddress" : "linebuf_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_91", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_91", "FromFinalSV" : "7", "FromAddress" : "linebuf_5_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_75", "ToFinalSV" : "6", "ToAddress" : "linebuf_5_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_92", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "7", "FromAddress" : "linebuf_6_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_76", "ToFinalSV" : "6", "ToAddress" : "linebuf_6_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "7", "FromAddress" : "linebuf_7_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_77", "ToFinalSV" : "6", "ToAddress" : "linebuf_7_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_96", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state8_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "7", "FromAddress" : "linebuf_8_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_78", "ToFinalSV" : "6", "ToAddress" : "linebuf_8_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(convolution.cpp:187:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter1_stage0", "ap_enable_state7_pp0_iter2_stage0", "ap_enable_state8_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vconv_xlim_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "vconv_xlim_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hconv_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "hconv_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vconv_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "vconv_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vconv_xlim_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "vconv_xlim_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "linebuf_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_9", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_0_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_1_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_2_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_3_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_4_U", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_5_U", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_6_U", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_7_U", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_8_U", "Parent" : "14"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.linebuf_9_U", "Parent" : "14"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_32ns_32ns_64_3_1_U30", "Parent" : "14"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_8ns_32s_32_3_1_U31", "Parent" : "14"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U32", "Parent" : "14"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_11ns_32s_32_3_1_U33", "Parent" : "14"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_11ns_32s_32_3_1_U34", "Parent" : "14"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U35", "Parent" : "14"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_8ns_32s_32_3_1_U36", "Parent" : "14"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_11ns_32s_32_3_1_U37", "Parent" : "14"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U38", "Parent" : "14"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VConvH_proc_U0.filter11x11_strm_mul_10ns_32s_32_3_1_U39", "Parent" : "14"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Border_proc_U0", "Parent" : "0", "Child" : ["36", "37"],
		"CDFG" : "Loop_Border_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "2070609",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_Loop_Border_proc_U0_U",
		"Port" : [
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vconv_xlim_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "vconv_xlim_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vconv_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "vconv_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Border_proc_U0.borderbuf_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Border_proc_U0.filter11x11_strm_mul_32ns_32ns_64_3_1_U47", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.width_c_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.width_c163_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_c_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_c164_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.width_c165_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_c166_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vconv_xlim_loc_c_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hconv_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vconv_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_c167_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vconv_xlim_loc_c168_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_proc_U0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Loop_Border_proc_U0_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Loop_VConvH_proc_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	filter11x11_strm {
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		src_V {Type I LastRead 4 FirstWrite -1}
		dst_V {Type O LastRead -1 FirstWrite 7}
		linebuf_0 {Type IO LastRead -1 FirstWrite -1}
		linebuf_1 {Type IO LastRead -1 FirstWrite -1}
		linebuf_2 {Type IO LastRead -1 FirstWrite -1}
		linebuf_3 {Type IO LastRead -1 FirstWrite -1}
		linebuf_4 {Type IO LastRead -1 FirstWrite -1}
		linebuf_5 {Type IO LastRead -1 FirstWrite -1}
		linebuf_6 {Type IO LastRead -1 FirstWrite -1}
		linebuf_7 {Type IO LastRead -1 FirstWrite -1}
		linebuf_8 {Type IO LastRead -1 FirstWrite -1}
		linebuf_9 {Type IO LastRead -1 FirstWrite -1}}
	filter11x11_strm_ent {
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width_out {Type O LastRead -1 FirstWrite 0}
		width_out1 {Type O LastRead -1 FirstWrite 0}
		height_out {Type O LastRead -1 FirstWrite 0}
		height_out2 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width_out {Type O LastRead -1 FirstWrite 1}
		height_out {Type O LastRead -1 FirstWrite 1}
		vconv_xlim_out_out {Type O LastRead -1 FirstWrite 1}}
	Loop_HConvH_proc6 {
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		src_V {Type I LastRead 4 FirstWrite -1}
		hconv_V {Type O LastRead -1 FirstWrite 11}}
	Loop_VConvH_proc {
		height {Type I LastRead 0 FirstWrite -1}
		vconv_xlim_loc {Type I LastRead 0 FirstWrite -1}
		hconv_V {Type I LastRead 5 FirstWrite -1}
		vconv_V {Type O LastRead -1 FirstWrite 14}
		height_out {Type O LastRead -1 FirstWrite 0}
		vconv_xlim_loc_out {Type O LastRead -1 FirstWrite 0}
		linebuf_0 {Type IO LastRead -1 FirstWrite -1}
		linebuf_1 {Type IO LastRead -1 FirstWrite -1}
		linebuf_2 {Type IO LastRead -1 FirstWrite -1}
		linebuf_3 {Type IO LastRead -1 FirstWrite -1}
		linebuf_4 {Type IO LastRead -1 FirstWrite -1}
		linebuf_5 {Type IO LastRead -1 FirstWrite -1}
		linebuf_6 {Type IO LastRead -1 FirstWrite -1}
		linebuf_7 {Type IO LastRead -1 FirstWrite -1}
		linebuf_8 {Type IO LastRead -1 FirstWrite -1}
		linebuf_9 {Type IO LastRead -1 FirstWrite -1}}
	Loop_Border_proc {
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		dst_V {Type O LastRead -1 FirstWrite 7}
		vconv_xlim_loc {Type I LastRead 0 FirstWrite -1}
		vconv_V {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "2070627"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "2070613"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	width { ap_none {  { width in_data 0 32 } } }
	height { ap_none {  { height in_data 0 32 } } }
	src_V { axis {  { src_V_TDATA in_data 0 32 }  { src_V_TVALID in_vld 0 1 }  { src_V_TREADY in_acc 1 1 } } }
	dst_V { axis {  { dst_V_TDATA out_data 1 32 }  { dst_V_TVALID out_vld 1 1 }  { dst_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
