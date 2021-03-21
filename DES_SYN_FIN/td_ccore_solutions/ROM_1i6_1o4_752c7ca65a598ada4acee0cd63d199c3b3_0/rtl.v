// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.5c/896140 Production Release
//  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
// 
//  Generated by:   ds6365@hansolo.poly.edu
//  Generated date: Mon Mar  1 00:26:38 2021
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
// ------------------------------------------------------------------


module ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3 (
  I_1, O_1
);
  input [5:0] I_1;
  output [3:0] O_1;



  // Interconnect Declarations for Component Instantiations 
  assign O_1 = MUX_v_4_64_2(4'b0100, 4'b1011, 4'b0010, 4'b1110, 4'b1111, 4'b0000,
      4'b1000, 4'b1101, 4'b0011, 4'b1100, 4'b1001, 4'b0111, 4'b0101, 4'b1010, 4'b0110,
      4'b0001, 4'b1101, 4'b0000, 4'b1011, 4'b0111, 4'b0100, 4'b1001, 4'b0001, 4'b1010,
      4'b1110, 4'b0011, 4'b0101, 4'b1100, 4'b0010, 4'b1111, 4'b1000, 4'b0110, 4'b0001,
      4'b0100, 4'b1011, 4'b1101, 4'b1100, 4'b0011, 4'b0111, 4'b1110, 4'b1010, 4'b1111,
      4'b0110, 4'b1000, 4'b0000, 4'b0101, 4'b1001, 4'b0010, 4'b0110, 4'b1011, 4'b1101,
      4'b1000, 4'b0001, 4'b0100, 4'b1010, 4'b0111, 4'b1001, 4'b0101, 4'b0000, 4'b1111,
      4'b1110, 4'b0010, 4'b0011, 4'b1100, I_1);

  function automatic [3:0] MUX_v_4_64_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [3:0] input_2;
    input [3:0] input_3;
    input [3:0] input_4;
    input [3:0] input_5;
    input [3:0] input_6;
    input [3:0] input_7;
    input [3:0] input_8;
    input [3:0] input_9;
    input [3:0] input_10;
    input [3:0] input_11;
    input [3:0] input_12;
    input [3:0] input_13;
    input [3:0] input_14;
    input [3:0] input_15;
    input [3:0] input_16;
    input [3:0] input_17;
    input [3:0] input_18;
    input [3:0] input_19;
    input [3:0] input_20;
    input [3:0] input_21;
    input [3:0] input_22;
    input [3:0] input_23;
    input [3:0] input_24;
    input [3:0] input_25;
    input [3:0] input_26;
    input [3:0] input_27;
    input [3:0] input_28;
    input [3:0] input_29;
    input [3:0] input_30;
    input [3:0] input_31;
    input [3:0] input_32;
    input [3:0] input_33;
    input [3:0] input_34;
    input [3:0] input_35;
    input [3:0] input_36;
    input [3:0] input_37;
    input [3:0] input_38;
    input [3:0] input_39;
    input [3:0] input_40;
    input [3:0] input_41;
    input [3:0] input_42;
    input [3:0] input_43;
    input [3:0] input_44;
    input [3:0] input_45;
    input [3:0] input_46;
    input [3:0] input_47;
    input [3:0] input_48;
    input [3:0] input_49;
    input [3:0] input_50;
    input [3:0] input_51;
    input [3:0] input_52;
    input [3:0] input_53;
    input [3:0] input_54;
    input [3:0] input_55;
    input [3:0] input_56;
    input [3:0] input_57;
    input [3:0] input_58;
    input [3:0] input_59;
    input [3:0] input_60;
    input [3:0] input_61;
    input [3:0] input_62;
    input [3:0] input_63;
    input [5:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      6'b000000 : begin
        result = input_0;
      end
      6'b000001 : begin
        result = input_1;
      end
      6'b000010 : begin
        result = input_2;
      end
      6'b000011 : begin
        result = input_3;
      end
      6'b000100 : begin
        result = input_4;
      end
      6'b000101 : begin
        result = input_5;
      end
      6'b000110 : begin
        result = input_6;
      end
      6'b000111 : begin
        result = input_7;
      end
      6'b001000 : begin
        result = input_8;
      end
      6'b001001 : begin
        result = input_9;
      end
      6'b001010 : begin
        result = input_10;
      end
      6'b001011 : begin
        result = input_11;
      end
      6'b001100 : begin
        result = input_12;
      end
      6'b001101 : begin
        result = input_13;
      end
      6'b001110 : begin
        result = input_14;
      end
      6'b001111 : begin
        result = input_15;
      end
      6'b010000 : begin
        result = input_16;
      end
      6'b010001 : begin
        result = input_17;
      end
      6'b010010 : begin
        result = input_18;
      end
      6'b010011 : begin
        result = input_19;
      end
      6'b010100 : begin
        result = input_20;
      end
      6'b010101 : begin
        result = input_21;
      end
      6'b010110 : begin
        result = input_22;
      end
      6'b010111 : begin
        result = input_23;
      end
      6'b011000 : begin
        result = input_24;
      end
      6'b011001 : begin
        result = input_25;
      end
      6'b011010 : begin
        result = input_26;
      end
      6'b011011 : begin
        result = input_27;
      end
      6'b011100 : begin
        result = input_28;
      end
      6'b011101 : begin
        result = input_29;
      end
      6'b011110 : begin
        result = input_30;
      end
      6'b011111 : begin
        result = input_31;
      end
      6'b100000 : begin
        result = input_32;
      end
      6'b100001 : begin
        result = input_33;
      end
      6'b100010 : begin
        result = input_34;
      end
      6'b100011 : begin
        result = input_35;
      end
      6'b100100 : begin
        result = input_36;
      end
      6'b100101 : begin
        result = input_37;
      end
      6'b100110 : begin
        result = input_38;
      end
      6'b100111 : begin
        result = input_39;
      end
      6'b101000 : begin
        result = input_40;
      end
      6'b101001 : begin
        result = input_41;
      end
      6'b101010 : begin
        result = input_42;
      end
      6'b101011 : begin
        result = input_43;
      end
      6'b101100 : begin
        result = input_44;
      end
      6'b101101 : begin
        result = input_45;
      end
      6'b101110 : begin
        result = input_46;
      end
      6'b101111 : begin
        result = input_47;
      end
      6'b110000 : begin
        result = input_48;
      end
      6'b110001 : begin
        result = input_49;
      end
      6'b110010 : begin
        result = input_50;
      end
      6'b110011 : begin
        result = input_51;
      end
      6'b110100 : begin
        result = input_52;
      end
      6'b110101 : begin
        result = input_53;
      end
      6'b110110 : begin
        result = input_54;
      end
      6'b110111 : begin
        result = input_55;
      end
      6'b111000 : begin
        result = input_56;
      end
      6'b111001 : begin
        result = input_57;
      end
      6'b111010 : begin
        result = input_58;
      end
      6'b111011 : begin
        result = input_59;
      end
      6'b111100 : begin
        result = input_60;
      end
      6'b111101 : begin
        result = input_61;
      end
      6'b111110 : begin
        result = input_62;
      end
      default : begin
        result = input_63;
      end
    endcase
    MUX_v_4_64_2 = result;
  end
  endfunction

endmodule


