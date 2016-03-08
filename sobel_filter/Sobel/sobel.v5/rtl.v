// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mg3115@EEWS104A-013
//  Generated date: Tue Mar 08 14:36:28 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    sobel_core
// ------------------------------------------------------------------


module sobel_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [89:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  reg [29:0] regs_regs_1_1_sva;
  reg [29:0] regs_regs_1_sg2_sva;
  reg [9:0] ACC1_slc_regs_regs_2_sg2_itm;
  reg [9:0] ACC1_slc_regs_regs_2_sg2_1_itm;
  reg [9:0] ACC1_slc_regs_regs_2_sg2_2_itm;
  reg [9:0] ACC1_slc_regs_regs_2_1_itm;
  reg [9:0] ACC1_slc_regs_regs_2_1_1_itm;
  reg [9:0] ACC1_slc_regs_regs_2_1_2_itm;
  reg [9:0] reg_vout_rsc_mgc_out_stdreg_d_tmp;
  wire [10:0] nl_reg_vout_rsc_mgc_out_stdreg_d_tmp;
  reg [5:0] reg_vout_rsc_mgc_out_stdreg_d_tmp_2;
  reg [9:0] reg_vout_rsc_mgc_out_stdreg_d_tmp_3;
  wire [9:0] FRAME_acc_22_cse;
  wire [10:0] nl_FRAME_acc_22_cse;
  wire [10:0] FRAME_acc_5_psp_sva;
  wire [11:0] nl_FRAME_acc_5_psp_sva;
  wire [6:0] acc_imod_sva;
  wire [8:0] nl_acc_imod_sva;
  wire [13:0] ACC1_acc_itm;
  wire [14:0] nl_ACC1_acc_itm;
  wire [7:0] FRAME_acc_33_itm;
  wire [8:0] nl_FRAME_acc_33_itm;


  // Interconnect Declarations for Component Instantiations 
  assign vout_rsc_mgc_out_stdreg_d = {reg_vout_rsc_mgc_out_stdreg_d_tmp , (reg_vout_rsc_mgc_out_stdreg_d_tmp_3[9:6])
      , reg_vout_rsc_mgc_out_stdreg_d_tmp_2 , reg_vout_rsc_mgc_out_stdreg_d_tmp_3};
  assign nl_ACC1_acc_itm = conv_s2s_13_14(conv_s2s_12_13(conv_s2s_11_12(conv_s2s_10_11(vin_rsc_mgc_in_wire_d[79:70])
      + conv_s2s_10_11(vin_rsc_mgc_in_wire_d[89:80])) + conv_s2s_11_12(readslicef_12_11_1((conv_s2s_11_12({ACC1_slc_regs_regs_2_sg2_itm
      , 1'b1}) + conv_s2s_11_12({ACC1_slc_regs_regs_2_sg2_1_itm , 1'b1}))))) + conv_s2s_12_13(conv_s2s_11_12(readslicef_12_11_1((conv_s2s_11_12({ACC1_slc_regs_regs_2_sg2_2_itm
      , 1'b1}) + conv_s2s_11_12({(~ ACC1_slc_regs_regs_2_1_itm) , 1'b1})))) + conv_s2s_11_12(readslicef_12_11_1((conv_s2s_11_12({(~
      ACC1_slc_regs_regs_2_1_1_itm) , 1'b1}) + conv_s2s_11_12({(~ ACC1_slc_regs_regs_2_1_2_itm)
      , 1'b1})))))) + conv_s2s_12_14(conv_s2s_11_12(conv_s2s_10_11(vin_rsc_mgc_in_wire_d[9:0])
      + conv_s2s_10_11(vin_rsc_mgc_in_wire_d[19:10])) + conv_s2s_11_12(conv_s2s_10_11(vin_rsc_mgc_in_wire_d[29:20])
      + conv_s2s_10_11(vin_rsc_mgc_in_wire_d[69:60])));
  assign ACC1_acc_itm = nl_ACC1_acc_itm[13:0];
  assign nl_FRAME_acc_22_cse = conv_u2s_9_11(conv_u2s_18_10(conv_u2u_4_9(ACC1_acc_itm[13:10])
      * 9'b10011)) + conv_s2s_6_10(conv_s2s_4_6(conv_u2s_3_4(conv_u2u_2_3(conv_u2u_1_2(ACC1_acc_itm[5])
      + conv_u2u_1_2(acc_imod_sva[4])) + conv_u2u_2_3(ACC1_acc_itm[9:8])) + conv_s2s_3_4(conv_s2s_2_3(acc_imod_sva[6:5])
      + conv_s2s_1_3(readslicef_5_1_4(((({(acc_imod_sva[4]) , 1'b0 , (acc_imod_sva[4])
      , 1'b0 , (acc_imod_sva[4])}) + conv_u2s_4_5(acc_imod_sva[3:0])) + ({(conv_s2u_2_3(acc_imod_sva[6:5])
      + conv_s2u_1_3(acc_imod_sva[6])) , (acc_imod_sva[6:5])})))))) + conv_u2s_4_6(ACC1_acc_itm[9:6]));
  assign FRAME_acc_22_cse = nl_FRAME_acc_22_cse[9:0];
  assign nl_FRAME_acc_5_psp_sva = conv_u2u_10_11({(ACC1_acc_itm[13]) , (ACC1_acc_itm[13])
      , FRAME_acc_33_itm}) + conv_s2u_10_11(FRAME_acc_22_cse);
  assign FRAME_acc_5_psp_sva = nl_FRAME_acc_5_psp_sva[10:0];
  assign nl_acc_imod_sva = (conv_s2s_6_7(conv_u2s_5_6(conv_u2u_4_5({(ACC1_acc_itm[7:6])
      , (ACC1_acc_itm[7:6])}) + conv_u2u_3_5({(conv_u2u_1_2(ACC1_acc_itm[9]) + conv_u2u_1_2(~
      (ACC1_acc_itm[13]))) , (ACC1_acc_itm[8])})) + conv_s2s_5_6({(ACC1_acc_itm[5])
      , 1'b0 , (ACC1_acc_itm[5]) , 1'b0 , (ACC1_acc_itm[5])})) + conv_u2s_6_7(conv_u2u_5_6({(~
      (ACC1_acc_itm[9:8])) , (~ (ACC1_acc_itm[12:10]))}) + conv_u2u_4_6(ACC1_acc_itm[4:1])))
      + 7'b1011111;
  assign acc_imod_sva = nl_acc_imod_sva[6:0];
  assign nl_FRAME_acc_33_itm = conv_u2u_7_8({(ACC1_acc_itm[13]) , 1'b0 , (signext_5_1(ACC1_acc_itm[13]))})
      + conv_u2u_6_8({(ACC1_acc_itm[13]) , 1'b0 , (signext_4_1(ACC1_acc_itm[13]))});
  assign FRAME_acc_33_itm = nl_FRAME_acc_33_itm[7:0];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      ACC1_slc_regs_regs_2_sg2_itm <= 10'b0;
      ACC1_slc_regs_regs_2_sg2_1_itm <= 10'b0;
      ACC1_slc_regs_regs_2_sg2_2_itm <= 10'b0;
      ACC1_slc_regs_regs_2_1_itm <= 10'b0;
      ACC1_slc_regs_regs_2_1_1_itm <= 10'b0;
      ACC1_slc_regs_regs_2_1_2_itm <= 10'b0;
      regs_regs_1_1_sva <= 30'b0;
      regs_regs_1_sg2_sva <= 30'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp <= 10'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp_2 <= 6'b0;
      reg_vout_rsc_mgc_out_stdreg_d_tmp_3 <= 10'b0;
    end
    else begin
      if ( en ) begin
        ACC1_slc_regs_regs_2_sg2_itm <= regs_regs_1_sg2_sva[9:0];
        ACC1_slc_regs_regs_2_sg2_1_itm <= regs_regs_1_sg2_sva[19:10];
        ACC1_slc_regs_regs_2_sg2_2_itm <= regs_regs_1_sg2_sva[29:20];
        ACC1_slc_regs_regs_2_1_itm <= regs_regs_1_1_sva[9:0];
        ACC1_slc_regs_regs_2_1_1_itm <= regs_regs_1_1_sva[19:10];
        ACC1_slc_regs_regs_2_1_2_itm <= regs_regs_1_1_sva[29:20];
        regs_regs_1_1_sva <= vin_rsc_mgc_in_wire_d[29:0];
        regs_regs_1_sg2_sva <= vin_rsc_mgc_in_wire_d[89:60];
        reg_vout_rsc_mgc_out_stdreg_d_tmp <= (({(ACC1_acc_itm[13]) , (ACC1_acc_itm[13])
            , FRAME_acc_33_itm}) + FRAME_acc_22_cse) | ({9'b0 , (FRAME_acc_5_psp_sva[10])});
        reg_vout_rsc_mgc_out_stdreg_d_tmp_2 <= (FRAME_acc_5_psp_sva[5:0]) | ({5'b0
            , (FRAME_acc_5_psp_sva[10])});
        reg_vout_rsc_mgc_out_stdreg_d_tmp_3 <= FRAME_acc_5_psp_sva[9:0];
      end
    end
  end

  function [10:0] readslicef_12_11_1;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_12_11_1 = tmp[10:0];
  end
  endfunction


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [4:0] signext_5_1;
    input [0:0] vector;
  begin
    signext_5_1= {{4{vector[0]}}, vector};
  end
  endfunction


  function [3:0] signext_4_1;
    input [0:0] vector;
  begin
    signext_4_1= {{3{vector[0]}}, vector};
  end
  endfunction


  function signed [13:0] conv_s2s_13_14 ;
    input signed [12:0]  vector ;
  begin
    conv_s2s_13_14 = {vector[12], vector};
  end
  endfunction


  function signed [12:0] conv_s2s_12_13 ;
    input signed [11:0]  vector ;
  begin
    conv_s2s_12_13 = {vector[11], vector};
  end
  endfunction


  function signed [11:0] conv_s2s_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_12 = {vector[10], vector};
  end
  endfunction


  function signed [10:0] conv_s2s_10_11 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_11 = {vector[9], vector};
  end
  endfunction


  function signed [13:0] conv_s2s_12_14 ;
    input signed [11:0]  vector ;
  begin
    conv_s2s_12_14 = {{2{vector[11]}}, vector};
  end
  endfunction


  function signed [10:0] conv_u2s_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_18_10 ;
    input [17:0]  vector ;
  begin
    conv_u2s_18_10 = vector[9:0];
  end
  endfunction


  function  [8:0] conv_u2u_4_9 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_9 = {{5{1'b0}}, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_6_10 ;
    input signed [5:0]  vector ;
  begin
    conv_s2s_6_10 = {{4{vector[5]}}, vector};
  end
  endfunction


  function signed [5:0] conv_s2s_4_6 ;
    input signed [3:0]  vector ;
  begin
    conv_s2s_4_6 = {{2{vector[3]}}, vector};
  end
  endfunction


  function signed [3:0] conv_u2s_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2s_3_4 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [3:0] conv_s2s_3_4 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_4 = {vector[2], vector};
  end
  endfunction


  function signed [2:0] conv_s2s_2_3 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_3 = {vector[1], vector};
  end
  endfunction


  function signed [2:0] conv_s2s_1_3 ;
    input signed [0:0]  vector ;
  begin
    conv_s2s_1_3 = {{2{vector[0]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_s2u_2_3 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_3 = {vector[1], vector};
  end
  endfunction


  function  [2:0] conv_s2u_1_3 ;
    input signed [0:0]  vector ;
  begin
    conv_s2u_1_3 = {{2{vector[0]}}, vector};
  end
  endfunction


  function signed [5:0] conv_u2s_4_6 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_6 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_s2u_10_11 ;
    input signed [9:0]  vector ;
  begin
    conv_s2u_10_11 = {vector[9], vector};
  end
  endfunction


  function signed [6:0] conv_s2s_6_7 ;
    input signed [5:0]  vector ;
  begin
    conv_s2s_6_7 = {vector[5], vector};
  end
  endfunction


  function signed [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
  end
  endfunction


  function signed [6:0] conv_u2s_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2s_6_7 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_u2u_4_6 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_6 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_6_8 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_8 = {{2{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    sobel
//  Generated from file(s):
//    7) $PROJECT_HOME/sobel.cpp
// ------------------------------------------------------------------


module sobel (
  vin_rsc_z, vout_rsc_z, clk, en, arst_n
);
  input [89:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [89:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(90)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  sobel_core sobel_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule


