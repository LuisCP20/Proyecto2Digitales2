`timescale 1ns / 100ps
`include "pcie_trans.v"
`include "pcie_trans_est.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas;

//Parametros
parameter BITNUMBER = 6;
parameter LENGTH = 4;

//Wires
wire clk, reset, push, pop_D1, pop_D0, D0_can_pop, D1_can_pop, Main_pause;
wire /*push, pop_D1, pop_D0,*/ D0_can_pop_est, D1_can_pop_est, Main_pause_est;
wire [BITNUMBER-1:0] data_in, data_out0, data_out1,data_out0_est, data_out1_est;

pcie_trans #(.BITNUMBER (BITNUMBER), .LENGTH (LENGTH))pcie_(/*AUTOINST*/
							    // Outputs
							    .data_out0		(data_out0[BITNUMBER-1:0]),
							    .data_out1		(data_out1[BITNUMBER-1:0]),
							    .D0_can_pop		(D0_can_pop),
							    .D1_can_pop		(D1_can_pop),
							    .Main_pause		(Main_pause),
							    // Inputs
							    .data_in		(data_in[BITNUMBER-1:0]),
							    .clk		(clk),
							    .reset		(reset),
							    .push		(push),
							    .pop_D0		(pop_D0),
							    .pop_D1		(pop_D1));

pcie_trans_est pcie_est(/*AUTOINST*/
			// Outputs
			.D0_can_pop_est	(D0_can_pop_est),
			.D1_can_pop_est	(D1_can_pop_est),
			.Main_pause_est	(Main_pause_est),
			.data_out0_est	(data_out0_est[5:0]),
			.data_out1_est	(data_out1_est[5:0]),
			// Inputs
			.clk		(clk),
			.data_in	(data_in[5:0]),
			.pop_D0		(pop_D0),
			.pop_D1		(pop_D1),
			.push		(push),
			.reset		(reset));


probador #(.BITNUMBER (BITNUMBER), .LENGTH (LENGTH))probador_(/*AUTOINST*/
							      // Outputs
							      .reset		(reset),
							      .clk		(clk),
							      .push		(push),
							      .pop_D1		(pop_D1),
							      .pop_D0		(pop_D0),
							      .data_in		(data_in[BITNUMBER-1:0]),
							      // Inputs
							      .Main_pause	(Main_pause),
							      .D0_can_pop	(D0_can_pop),
							      .D1_can_pop	(D1_can_pop));

endmodule