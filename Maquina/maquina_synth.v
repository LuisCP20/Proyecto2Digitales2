/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "maquina.v:1" *)
module maquina_synth(clk, reset, umbralMF, umbralVC, umbralD, FifoFull, FifoEmpty, FifoWrite, FifoRead, init_out, idle_out, active_out, error_out, state_estr, next_state_estr);
  (* src = "maquina.v:23" *)
  wire [3:0] _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  (* src = "maquina.v:7" *)
  input FifoEmpty;
  (* src = "maquina.v:6" *)
  input FifoFull;
  (* src = "maquina.v:9" *)
  input FifoRead;
  (* src = "maquina.v:8" *)
  input FifoWrite;
  (* src = "maquina.v:12" *)
  output active_out;
  (* src = "maquina.v:1" *)
  input clk;
  (* src = "maquina.v:13" *)
  output error_out;
  (* src = "maquina.v:11" *)
  output idle_out;
  (* src = "maquina.v:10" *)
  output init_out;
  (* src = "maquina.v:15" *)
  output [3:0] next_state_estr;
  (* src = "maquina.v:2" *)
  input reset;
  (* src = "maquina.v:14" *)
  output [3:0] state_estr;
  (* src = "maquina.v:5" *)
  input umbralD;
  (* src = "maquina.v:3" *)
  input umbralMF;
  (* src = "maquina.v:4" *)
  input umbralVC;
  NOT _43_ (
    .A(state_estr[0]),
    .Y(_01_)
  );
  NOT _44_ (
    .A(FifoEmpty),
    .Y(_02_)
  );
  NOT _45_ (
    .A(FifoFull),
    .Y(_03_)
  );
  NOT _46_ (
    .A(reset),
    .Y(_04_)
  );
  NAND _47_ (
    .A(state_estr[2]),
    .B(_01_),
    .Y(_05_)
  );
  NOR _48_ (
    .A(state_estr[3]),
    .B(state_estr[1]),
    .Y(_06_)
  );
  NOT _49_ (
    .A(_06_),
    .Y(_07_)
  );
  NOR _50_ (
    .A(_05_),
    .B(_07_),
    .Y(_08_)
  );
  NOR _51_ (
    .A(FifoRead),
    .B(FifoWrite),
    .Y(_09_)
  );
  NAND _52_ (
    .A(FifoFull),
    .B(_08_),
    .Y(_10_)
  );
  NOR _53_ (
    .A(_09_),
    .B(_10_),
    .Y(error_out)
  );
  NOR _54_ (
    .A(state_estr[3]),
    .B(state_estr[2]),
    .Y(_11_)
  );
  NOT _55_ (
    .A(_11_),
    .Y(_12_)
  );
  NAND _56_ (
    .A(state_estr[1]),
    .B(_11_),
    .Y(_13_)
  );
  NOR _57_ (
    .A(_01_),
    .B(_13_),
    .Y(_14_)
  );
  NOR _58_ (
    .A(FifoEmpty),
    .B(FifoFull),
    .Y(_15_)
  );
  NOT _59_ (
    .A(_15_),
    .Y(_16_)
  );
  NAND _60_ (
    .A(_14_),
    .B(_15_),
    .Y(_17_)
  );
  NOT _61_ (
    .A(_17_),
    .Y(active_out)
  );
  NOR _62_ (
    .A(state_estr[0]),
    .B(_13_),
    .Y(_18_)
  );
  NAND _63_ (
    .A(FifoEmpty),
    .B(_18_),
    .Y(_19_)
  );
  NOR _64_ (
    .A(FifoFull),
    .B(_19_),
    .Y(idle_out)
  );
  NOR _65_ (
    .A(umbralMF),
    .B(umbralVC),
    .Y(_20_)
  );
  NOT _66_ (
    .A(_20_),
    .Y(_21_)
  );
  NOR _67_ (
    .A(umbralD),
    .B(_21_),
    .Y(_22_)
  );
  NOR _68_ (
    .A(state_estr[1]),
    .B(_01_),
    .Y(_23_)
  );
  NAND _69_ (
    .A(_11_),
    .B(_23_),
    .Y(_24_)
  );
  NOR _70_ (
    .A(_22_),
    .B(_24_),
    .Y(init_out)
  );
  NAND _71_ (
    .A(FifoEmpty),
    .B(FifoFull),
    .Y(_25_)
  );
  NOT _72_ (
    .A(_25_),
    .Y(_26_)
  );
  NAND _73_ (
    .A(_01_),
    .B(_16_),
    .Y(_27_)
  );
  NAND _74_ (
    .A(_25_),
    .B(_27_),
    .Y(_28_)
  );
  NAND _75_ (
    .A(state_estr[1]),
    .B(_28_),
    .Y(_29_)
  );
  NOR _76_ (
    .A(_12_),
    .B(_23_),
    .Y(_30_)
  );
  NAND _77_ (
    .A(_29_),
    .B(_30_),
    .Y(_31_)
  );
  NOT _78_ (
    .A(_31_),
    .Y(next_state_estr[0])
  );
  NOR _79_ (
    .A(_04_),
    .B(_31_),
    .Y(_00_[0])
  );
  NAND _80_ (
    .A(state_estr[1]),
    .B(_02_),
    .Y(_32_)
  );
  NAND _81_ (
    .A(FifoFull),
    .B(_32_),
    .Y(_33_)
  );
  NAND _82_ (
    .A(_18_),
    .B(_33_),
    .Y(_34_)
  );
  NAND _83_ (
    .A(_17_),
    .B(_34_),
    .Y(_35_)
  );
  NOR _84_ (
    .A(init_out),
    .B(_35_),
    .Y(_36_)
  );
  NOT _85_ (
    .A(_36_),
    .Y(next_state_estr[1])
  );
  NOR _86_ (
    .A(_04_),
    .B(_36_),
    .Y(_00_[1])
  );
  NOR _87_ (
    .A(state_estr[2]),
    .B(FifoEmpty),
    .Y(_37_)
  );
  NOR _88_ (
    .A(_03_),
    .B(_37_),
    .Y(_38_)
  );
  NAND _89_ (
    .A(_18_),
    .B(_38_),
    .Y(_39_)
  );
  NAND _90_ (
    .A(_14_),
    .B(_26_),
    .Y(_40_)
  );
  NAND _91_ (
    .A(_39_),
    .B(_40_),
    .Y(_41_)
  );
  NOR _92_ (
    .A(error_out),
    .B(_41_),
    .Y(_42_)
  );
  NOT _93_ (
    .A(_42_),
    .Y(next_state_estr[2])
  );
  NOR _94_ (
    .A(_04_),
    .B(_42_),
    .Y(_00_[2])
  );
  (* src = "maquina.v:23" *)
  DFF _95_ (
    .C(clk),
    .D(_00_[0]),
    .Q(state_estr[0])
  );
  (* src = "maquina.v:23" *)
  DFF _96_ (
    .C(clk),
    .D(_00_[1]),
    .Q(state_estr[1])
  );
  (* src = "maquina.v:23" *)
  DFF _97_ (
    .C(clk),
    .D(_00_[2]),
    .Q(state_estr[2])
  );
  (* src = "maquina.v:23" *)
  DFF _98_ (
    .C(clk),
    .D(1'h0),
    .Q(state_estr[3])
  );
  assign _00_[3] = 1'h0;
  assign next_state_estr[3] = 1'h0;
endmodule