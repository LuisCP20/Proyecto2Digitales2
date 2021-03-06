`include "maquina.v"
`include "probador.v"
`include "cmos_cells.v"
`include "maquina_synth.v"

module BancoPruebas;

wire clk, reset;

wire umbralMF, umbralVC, umbralD;
wire FifoFull, FifoEmpty, FifoRead, FifoWrite;

wire init_out, idle_out, active_out, error_out;
wire idle_out_estr, active_out_estr, error_out_estr, init_out_estr;
wire [3:0] next_state, next_state_estr, state, state_estr;

maquina maquina(.clk	(clk),
		.reset	(reset),
		.umbralMF	(umbralMF),
		.umbralVC	(umbralVC),
		.umbralD	(umbralD),
		.FifoFull	(FifoFull),
		.FifoEmpty	(FifoEmpty),
		.FifoRead	(FifoRead),
		.FifoWrite	(FifoWrite),
		.init_out	(init_out),
		.idle_out	(idle_out),
		.active_out	(active_out),
		.error_out	(error_out),
		.state		(state[3:0]),
		.next_state (next_state[3:0]));

maquina_synth maquina_synth(.clk	(clk),
		.reset	(reset),
		.umbralMF	(umbralMF),
		.umbralVC	(umbralVC),
		.umbralD	(umbralD),
		.FifoFull	(FifoFull),
		.FifoEmpty	(FifoEmpty),
		.FifoRead	(FifoRead),
		.FifoWrite	(FifoWrite),
		.init_out	(init_out_estr),
		.idle_out	(idle_out_estr),
		.active_out	(active_out_estr),
		.error_out	(error_out_estr),
		.state_estr		(state_estr[3:0]),
		.next_state_estr (next_state_estr[3:0]));		

probador probador(.clk	(clk),
		.reset	(reset),
		.umbralMF	(umbralMF),
		.umbralVC	(umbralVC),
		.umbralD	(umbralD),
		.FifoFull	(FifoFull),
		.FifoEmpty	(FifoEmpty),
		.FifoRead	(FifoRead),
		.FifoWrite	(FifoWrite),
		.init_out_estr	(init_out_estr),
		.idle_out_estr	(idle_out_estr),
		.active_out_estr	(active_out_estr),
		.error_out_estr	(error_out_estr),
		.init_out	(init_out),
		.idle_out	(idle_out),
		.active_out	(active_out),
		.error_out	(error_out));

endmodule				


