library IEEE;
use IEEE.std_logic_1164.all;

entity Gowin_SDPB is
    port (
        dout: out std_logic_vector(7 downto 0);
        clka: in std_logic;
        cea: in std_logic;
        reseta: in std_logic;
        clkb: in std_logic;
        ceb: in std_logic;
        resetb: in std_logic;
        oce: in std_logic;
        ada: in std_logic_vector(14 downto 0);
        din: in std_logic_vector(7 downto 0);
        adb: in std_logic_vector(14 downto 0)
    );
end Gowin_SDPB;

architecture Behavioral of Gowin_SDPB is

    signal sdpb_inst_0_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_0_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_1_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_1_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_2_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_2_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_3_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_3_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_4_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_4_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_5_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_5_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_6_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_6_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_7_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_7_dout: std_logic_vector(3 downto 0);
    signal sdpb_inst_8_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_8_dout: std_logic_vector(7 downto 4);
    signal sdpb_inst_9_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_9_dout: std_logic_vector(7 downto 4);
    signal sdpb_inst_10_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_10_dout: std_logic_vector(7 downto 4);
    signal sdpb_inst_11_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_11_dout: std_logic_vector(7 downto 4);
    signal sdpb_inst_12_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_12_dout: std_logic_vector(7 downto 4);
    signal sdpb_inst_13_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_13_dout: std_logic_vector(7 downto 4);
    signal sdpb_inst_14_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_14_dout: std_logic_vector(7 downto 4);
    signal sdpb_inst_15_dout_w: std_logic_vector(27 downto 0);
    signal sdpb_inst_15_dout: std_logic_vector(7 downto 4);
    signal dff_q_0: std_logic;
    signal dff_q_1: std_logic;
    signal dff_q_2: std_logic;
    signal mux_o_0: std_logic;
    signal mux_o_1: std_logic;
    signal mux_o_2: std_logic;
    signal mux_o_3: std_logic;
    signal mux_o_4: std_logic;
    signal mux_o_5: std_logic;
    signal mux_o_7: std_logic;
    signal mux_o_8: std_logic;
    signal mux_o_9: std_logic;
    signal mux_o_10: std_logic;
    signal mux_o_11: std_logic;
    signal mux_o_12: std_logic;
    signal mux_o_14: std_logic;
    signal mux_o_15: std_logic;
    signal mux_o_16: std_logic;
    signal mux_o_17: std_logic;
    signal mux_o_18: std_logic;
    signal mux_o_19: std_logic;
    signal mux_o_21: std_logic;
    signal mux_o_22: std_logic;
    signal mux_o_23: std_logic;
    signal mux_o_24: std_logic;
    signal mux_o_25: std_logic;
    signal mux_o_26: std_logic;
    signal mux_o_28: std_logic;
    signal mux_o_29: std_logic;
    signal mux_o_30: std_logic;
    signal mux_o_31: std_logic;
    signal mux_o_32: std_logic;
    signal mux_o_33: std_logic;
    signal mux_o_35: std_logic;
    signal mux_o_36: std_logic;
    signal mux_o_37: std_logic;
    signal mux_o_38: std_logic;
    signal mux_o_39: std_logic;
    signal mux_o_40: std_logic;
    signal mux_o_42: std_logic;
    signal mux_o_43: std_logic;
    signal mux_o_44: std_logic;
    signal mux_o_45: std_logic;
    signal mux_o_46: std_logic;
    signal mux_o_47: std_logic;
    signal mux_o_49: std_logic;
    signal mux_o_50: std_logic;
    signal mux_o_51: std_logic;
    signal mux_o_52: std_logic;
    signal mux_o_53: std_logic;
    signal mux_o_54: std_logic;
    signal gw_gnd: std_logic;
    signal sdpb_inst_0_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_0_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_0_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_0_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_0_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_0_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_1_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_1_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_1_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_1_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_1_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_1_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_2_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_2_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_2_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_2_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_2_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_2_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_3_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_3_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_3_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_3_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_3_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_3_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_4_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_4_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_4_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_4_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_4_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_4_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_5_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_5_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_5_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_5_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_5_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_5_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_6_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_6_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_6_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_6_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_6_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_6_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_7_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_7_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_7_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_7_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_7_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_7_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_8_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_8_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_8_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_8_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_8_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_8_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_9_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_9_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_9_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_9_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_9_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_9_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_10_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_10_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_10_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_10_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_10_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_10_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_11_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_11_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_11_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_11_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_11_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_11_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_12_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_12_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_12_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_12_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_12_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_12_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_13_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_13_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_13_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_13_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_13_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_13_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_14_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_14_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_14_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_14_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_14_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_14_DO_o: std_logic_vector(31 downto 0);
    signal sdpb_inst_15_BLKSELA_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_15_BLKSELB_i: std_logic_vector(2 downto 0);
    signal sdpb_inst_15_ADA_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_15_DI_i: std_logic_vector(31 downto 0);
    signal sdpb_inst_15_ADB_i: std_logic_vector(13 downto 0);
    signal sdpb_inst_15_DO_o: std_logic_vector(31 downto 0);

    --component declaration
    component SDPB
        generic (
            READ_MODE: in bit := '0';
            BIT_WIDTH_0: in integer :=16;
            BIT_WIDTH_1: in integer :=16;
            BLK_SEL_0: in bit_vector := "000";
            BLK_SEL_1: in bit_vector := "000";
            RESET_MODE: in string := "SYNC";
            INIT_RAM_00: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_01: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_02: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_03: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_04: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_05: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_06: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_07: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_08: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_09: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_0A: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_0B: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_0C: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_0D: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_0E: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_0F: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_10: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_11: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_12: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_13: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_14: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_15: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_16: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_17: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_18: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_19: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_1A: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_1B: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_1C: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_1D: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_1E: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_1F: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_20: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_21: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_22: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_23: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_24: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_25: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_26: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_27: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_28: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_29: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_2A: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_2B: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_2C: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_2D: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_2E: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_2F: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_30: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_31: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_32: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_33: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_34: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_35: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_36: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_37: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_38: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_39: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_3A: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_3B: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_3C: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_3D: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_3E: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
            INIT_RAM_3F: in bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000"
        );
        port (
            DO: out std_logic_vector(31 downto 0);
            CLKA: in std_logic;
            CEA: in std_logic;
            RESETA: in std_logic;
            CLKB: in std_logic;
            CEB: in std_logic;
            RESETB: in std_logic;
            OCE: in std_logic;
            BLKSELA: in std_logic_vector(2 downto 0);
            BLKSELB: in std_logic_vector(2 downto 0);
            ADA: in std_logic_vector(13 downto 0);
            DI: in std_logic_vector(31 downto 0);
            ADB: in std_logic_vector(13 downto 0)
        );
    end component;

    -- component declaration
    component DFFE
        port (
            Q: out std_logic;
            D: in std_logic;
            CLK: in std_logic;
            CE: in std_logic
        );
    end component;

    -- component declaration
    component MUX2
        port (
            O: out std_logic;
            I0: in std_logic;
            I1: in std_logic;
            S0: in std_logic
        );
    end component;

begin
    gw_gnd <= '0';

    sdpb_inst_0_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_0_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_0_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_0_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_0_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_0_dout(3 downto 0) <= sdpb_inst_0_DO_o(3 downto 0) ;
    sdpb_inst_0_dout_w(27 downto 0) <= sdpb_inst_0_DO_o(31 downto 4) ;
    sdpb_inst_1_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_1_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_1_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_1_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_1_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_1_dout(3 downto 0) <= sdpb_inst_1_DO_o(3 downto 0) ;
    sdpb_inst_1_dout_w(27 downto 0) <= sdpb_inst_1_DO_o(31 downto 4) ;
    sdpb_inst_2_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_2_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_2_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_2_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_2_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_2_dout(3 downto 0) <= sdpb_inst_2_DO_o(3 downto 0) ;
    sdpb_inst_2_dout_w(27 downto 0) <= sdpb_inst_2_DO_o(31 downto 4) ;
    sdpb_inst_3_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_3_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_3_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_3_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_3_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_3_dout(3 downto 0) <= sdpb_inst_3_DO_o(3 downto 0) ;
    sdpb_inst_3_dout_w(27 downto 0) <= sdpb_inst_3_DO_o(31 downto 4) ;
    sdpb_inst_4_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_4_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_4_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_4_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_4_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_4_dout(3 downto 0) <= sdpb_inst_4_DO_o(3 downto 0) ;
    sdpb_inst_4_dout_w(27 downto 0) <= sdpb_inst_4_DO_o(31 downto 4) ;
    sdpb_inst_5_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_5_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_5_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_5_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_5_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_5_dout(3 downto 0) <= sdpb_inst_5_DO_o(3 downto 0) ;
    sdpb_inst_5_dout_w(27 downto 0) <= sdpb_inst_5_DO_o(31 downto 4) ;
    sdpb_inst_6_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_6_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_6_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_6_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_6_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_6_dout(3 downto 0) <= sdpb_inst_6_DO_o(3 downto 0) ;
    sdpb_inst_6_dout_w(27 downto 0) <= sdpb_inst_6_DO_o(31 downto 4) ;
    sdpb_inst_7_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_7_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_7_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_7_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(3 downto 0);
    sdpb_inst_7_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_7_dout(3 downto 0) <= sdpb_inst_7_DO_o(3 downto 0) ;
    sdpb_inst_7_dout_w(27 downto 0) <= sdpb_inst_7_DO_o(31 downto 4) ;
    sdpb_inst_8_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_8_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_8_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_8_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_8_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_8_dout(7 downto 4) <= sdpb_inst_8_DO_o(3 downto 0) ;
    sdpb_inst_8_dout_w(27 downto 0) <= sdpb_inst_8_DO_o(31 downto 4) ;
    sdpb_inst_9_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_9_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_9_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_9_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_9_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_9_dout(7 downto 4) <= sdpb_inst_9_DO_o(3 downto 0) ;
    sdpb_inst_9_dout_w(27 downto 0) <= sdpb_inst_9_DO_o(31 downto 4) ;
    sdpb_inst_10_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_10_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_10_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_10_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_10_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_10_dout(7 downto 4) <= sdpb_inst_10_DO_o(3 downto 0) ;
    sdpb_inst_10_dout_w(27 downto 0) <= sdpb_inst_10_DO_o(31 downto 4) ;
    sdpb_inst_11_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_11_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_11_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_11_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_11_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_11_dout(7 downto 4) <= sdpb_inst_11_DO_o(3 downto 0) ;
    sdpb_inst_11_dout_w(27 downto 0) <= sdpb_inst_11_DO_o(31 downto 4) ;
    sdpb_inst_12_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_12_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_12_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_12_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_12_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_12_dout(7 downto 4) <= sdpb_inst_12_DO_o(3 downto 0) ;
    sdpb_inst_12_dout_w(27 downto 0) <= sdpb_inst_12_DO_o(31 downto 4) ;
    sdpb_inst_13_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_13_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_13_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_13_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_13_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_13_dout(7 downto 4) <= sdpb_inst_13_DO_o(3 downto 0) ;
    sdpb_inst_13_dout_w(27 downto 0) <= sdpb_inst_13_DO_o(31 downto 4) ;
    sdpb_inst_14_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_14_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_14_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_14_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_14_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_14_dout(7 downto 4) <= sdpb_inst_14_DO_o(3 downto 0) ;
    sdpb_inst_14_dout_w(27 downto 0) <= sdpb_inst_14_DO_o(31 downto 4) ;
    sdpb_inst_15_BLKSELA_i <= ada(14) & ada(13) & ada(12);
    sdpb_inst_15_BLKSELB_i <= adb(14) & adb(13) & adb(12);
    sdpb_inst_15_ADA_i <= ada(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_15_DI_i <= gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & gw_gnd & din(7 downto 4);
    sdpb_inst_15_ADB_i <= adb(11 downto 0) & gw_gnd & gw_gnd;
    sdpb_inst_15_dout(7 downto 4) <= sdpb_inst_15_DO_o(3 downto 0) ;
    sdpb_inst_15_dout_w(27 downto 0) <= sdpb_inst_15_DO_o(31 downto 4) ;

    sdpb_inst_0: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "000",
            BLK_SEL_1 => "000",
            INIT_RAM_00 => X"914D440604429C0E9C545F04522D0026CB00525A2525052529830B08AA8A0288",
            INIT_RAM_01 => X"0A35C0C6251580D59AC30C58E509E5F559F5882610251620156006830D450441",
            INIT_RAM_02 => X"09808965C034E0F9F9C580A0512C95A9C509F9C5D6E0165655A958975AA15596",
            INIT_RAM_03 => X"655A9575693535D9B589067020CC034D009066020CB03420066005B589E00620",
            INIT_RAM_04 => X"525E98E0255035895655A95697549353529165020CA03509D0164020C9035095",
            INIT_RAM_05 => X"A155916903549F0252509C193535D9D0C5103549701670D0A925265655A95697",
            INIT_RAM_06 => X"891019A5A80E6647240B0F980F9C5B21056C953055E5F935D9355655A956975A",
            INIT_RAM_07 => X"5E0A509607640748814C0A509807640148874C0A509E529E0E6207660A0590A5",
            INIT_RAM_08 => X"F6B049C393019703940599079D5F004E5C58966600565C0A50920C5096680650",
            INIT_RAM_09 => X"F98B58393B0B5793B060C5AAAAAD5100F96090850F6B049C393039A06080F930",
            INIT_RAM_0A => X"50B03087040F6B0F5AAA89D560F6C60F939203449804940590039406979D5100",
            INIT_RAM_0B => X"59555E9C5E0DA79AAA05B009F0B940D066E0F9C5B5E8DA79D5508F602C64040A",
            INIT_RAM_0C => X"AC905A0F5DAAA4915C0393546A09300055B9A15865897088C60D9D9C26075F9B",
            INIT_RAM_0D => X"595198755029A57549A0F1DAAAA890575E975295049A595D98857545558F1DAA",
            INIT_RAM_0E => X"4C0050295099555095565958F7DAA696590FBDAAA4975C009A5B0FDDAAAAA090",
            INIT_RAM_0F => X"00000000000035F920A3548CD5A559B52515B024D0002A5B9C555C5A5254C065",
            INIT_RAM_10 => X"D41A050442582502DEFDAC0F9805A6D625F5E5F942CAAF0859542CA04B004D55",
            INIT_RAM_11 => X"21F5018AC5B5A58F5E1E5C1AAAA5A5C561501084B59988F501E521F5E1E5C10B",
            INIT_RAM_12 => X"5C561C0808485B5B5A6A5B5C525B5D58F5E509B541602044805B5C58E5B5B5E5",
            INIT_RAM_13 => X"00080505EF98AC0F98254FCAA8085954ACAAE045555BC353562EFDAC0F9AF58B",
            INIT_RAM_14 => X"0442551C358140CC56130F084A651CAA10859556CA042008D9558CA041004D55",
            INIT_RAM_15 => X"E521F5E1E5C10445AAD5A525A10CD6130E084A0AF501E521F5E1E5C10BD4140F",
            INIT_RAM_16 => X"25E5D0DF5E0DAA15F5C6DE5CEDD6AA430D4B4D4850100EDAA0955D5B0B48F501",
            INIT_RAM_17 => X"0000000000066C3519356075A049A5A0B915001526C30152529F4E4B08AAAAAA",
            INIT_RAM_18 => X"501C5E1B5C18AA5A0A424E1B5C1815150515C5B5097565C95444645430A49025",
            INIT_RAM_19 => X"58A7910990575C301935C9393506555B5C5B50980A6B5C4B5C6B5861B541A21B",
            INIT_RAM_1A => X"198408915806E01984039158A0000635F935601984089158A790582019840391",
            INIT_RAM_1B => X"B9350009E01984099158A690583509B9358009C0198408069980B91535F93560",
            INIT_RAM_1C => X"5E029C0198402915880635093560295019840298F00915A6905835B935603509",
            INIT_RAM_1D => X"404505558988055400545798C00098AAA1915855690582009053579356035093",
            INIT_RAM_1E => X"1984039758A89108965A58979A5D6009095575295595C9300098AAA891589055",
            INIT_RAM_1F => X"F9A56019840A9758A66F01984039758AC01066A5F9A56019840A9758A8965820",
            INIT_RAM_20 => X"79A582CA579A5F029D019840B9758A79658A579A56029901984066B940F975A5",
            INIT_RAM_21 => X"A3009A8A5C9A0ECB024DA5F9A560298402975866E029840298800975A79658A5",
            INIT_RAM_22 => X"D45E0DAAC5D642F5E5D5AB0D6F9C5039B08AA50E0C410055D9450A98A58AAAAA",
            INIT_RAM_23 => X"2F0C088D62005AAA41820D54080550E0E41B0AF4B276746484C42434040055E1",
            INIT_RAM_24 => X"F20500088A589A09618A589AAAF9618020075C950F9C534F016F220F960F9C50",
            INIT_RAM_25 => X"2452925D90589E53965C5F9A0D590880D9A0F9005E579C549D5B5A509B0AA589",
            INIT_RAM_26 => X"F7DAF9B545F7DAAAAA09850AB5B5B5A6882B509A5F9C525F905E9E599C549102",
            INIT_RAM_27 => X"E9F7DAF9CAAAA0970E5AAA8AB5B539600F5E5F9D5A5952515B024DA519864265",
            INIT_RAM_28 => X"6A4C30768CC83030C57096409526C30152529B0A2562F5E52560065C5F910B60",
            INIT_RAM_29 => X"65B2D5792509D04910C9F6A068270F9C6205940B98019C079E68240C965C0F97",
            INIT_RAM_2A => X"85AFDAA0F9AAAA40AEDAA6565F94066D62019F6824079658575D8DA796590AA5",
            INIT_RAM_2B => X"00707707677600B05505455400201234605699B0B6BB4B97000A5A86508585A9",
            INIT_RAM_2C => X"488000D4672D0A000E1000408000D4E0000000000852600E00746FDBA87421FD",
            INIT_RAM_2D => X"800064EB19C500905100400000F260801EA4A15702908C2054E7F0170D71D000",
            INIT_RAM_2E => X"00546B2FB4E000F112288000F4EB091AC195E226880000F467E4014792000210",
            INIT_RAM_2F => X"0000A19D194B9726800000D260903A1070602680802034E010E7900919122022",
            INIT_RAM_30 => X"0050450000B90000BB44476977719121209000001B1B80E1974D11240800074E",
            INIT_RAM_31 => X"904E9C4E980000B9000800AE1E0E5E0E5800EECCEEEEEEBC0EEECEEEBB0000A4",
            INIT_RAM_32 => X"4110A8011450A10E0E8CAE0194004CAE11E0C0EEEEB80000BB188E414ECC114C",
            INIT_RAM_33 => X"00AA2000005555400000C1E004E001EE04EE0100088000C404E4B00CCEEE0E80",
            INIT_RAM_34 => X"91D90B91F2E8080006061905707D19026888C60D4EB02D10B701A00400800A46",
            INIT_RAM_35 => X"0000000031230001000000005A000005888880000000000008052002E0004660",
            INIT_RAM_36 => X"C84C0004F96F0005C84C00043123000100000000F96F000500000000C84C0004",
            INIT_RAM_37 => X"FFFFFFFFFEC80000C84C000400000000C000C008F96F0005F123C009F96F0005",
            INIT_RAM_38 => X"3210012332100123D2DCD6D0C0B7B1BBB5BFB9B3BDB7B1BBFFFF731000000000",
            INIT_RAM_39 => X"A2CE2EC240CA2CEEECE40CA2CEE6C8C000000A7610BDCD8682C2C2C85AF44FA5",
            INIT_RAM_3A => X"E0842AC2A8CCEE0844AC228CCCE08448C2ACCEEE0A66ECCCCCC0846AECEE600C",
            INIT_RAM_3B => X"006640006640006640006AAE26AAE26AAE26AAE2EE222EE222222842AC2ACCEE",
            INIT_RAM_3C => X"E2044A216CACAAAAA44E8C8E4AEAA06060E8C8EE8C8E00000222222222222222",
            INIT_RAM_3D => X"DCC0408C4CEF5DCC8808C4CEE6EECCC00000000808C808C8C8C8C8CCC8CCCCCC",
            INIT_RAM_3E => X"00000CE26F7377E6608C15F6046E6008C4CEF5DCCCC08C4CEE6EEC8808C4CEF5",
            INIT_RAM_3F => X"00000000000E147F0FE147AD0C160B00800CE26F7377E6600000CE26F7377E66"
        )
        port map (
            DO => sdpb_inst_0_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_0_BLKSELA_i,
            BLKSELB => sdpb_inst_0_BLKSELB_i,
            ADA => sdpb_inst_0_ADA_i,
            DI => sdpb_inst_0_DI_i,
            ADB => sdpb_inst_0_ADB_i
        );

    sdpb_inst_1: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "001",
            BLK_SEL_1 => "001",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_1_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_1_BLKSELA_i,
            BLKSELB => sdpb_inst_1_BLKSELB_i,
            ADA => sdpb_inst_1_ADA_i,
            DI => sdpb_inst_1_DI_i,
            ADB => sdpb_inst_1_ADB_i
        );

    sdpb_inst_2: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "010",
            BLK_SEL_1 => "010",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_2_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_2_BLKSELA_i,
            BLKSELB => sdpb_inst_2_BLKSELB_i,
            ADA => sdpb_inst_2_ADA_i,
            DI => sdpb_inst_2_DI_i,
            ADB => sdpb_inst_2_ADB_i
        );

    sdpb_inst_3: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "011",
            BLK_SEL_1 => "011",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_3_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_3_BLKSELA_i,
            BLKSELB => sdpb_inst_3_BLKSELB_i,
            ADA => sdpb_inst_3_ADA_i,
            DI => sdpb_inst_3_DI_i,
            ADB => sdpb_inst_3_ADB_i
        );

    sdpb_inst_4: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "100",
            BLK_SEL_1 => "100",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_4_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_4_BLKSELA_i,
            BLKSELB => sdpb_inst_4_BLKSELB_i,
            ADA => sdpb_inst_4_ADA_i,
            DI => sdpb_inst_4_DI_i,
            ADB => sdpb_inst_4_ADB_i
        );

    sdpb_inst_5: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "101",
            BLK_SEL_1 => "101",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_5_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_5_BLKSELA_i,
            BLKSELB => sdpb_inst_5_BLKSELB_i,
            ADA => sdpb_inst_5_ADA_i,
            DI => sdpb_inst_5_DI_i,
            ADB => sdpb_inst_5_ADB_i
        );

    sdpb_inst_6: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "110",
            BLK_SEL_1 => "110",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_6_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_6_BLKSELA_i,
            BLKSELB => sdpb_inst_6_BLKSELB_i,
            ADA => sdpb_inst_6_ADA_i,
            DI => sdpb_inst_6_DI_i,
            ADB => sdpb_inst_6_ADB_i
        );

    sdpb_inst_7: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "111",
            BLK_SEL_1 => "111",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_7_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_7_BLKSELA_i,
            BLKSELB => sdpb_inst_7_BLKSELB_i,
            ADA => sdpb_inst_7_ADA_i,
            DI => sdpb_inst_7_DI_i,
            ADB => sdpb_inst_7_ADB_i
        );

    sdpb_inst_8: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "000",
            BLK_SEL_1 => "000",
            INIT_RAM_00 => X"A88F80D05820A0B0CCA881F8C08A0A0982A08084080808080AFA2FD49CA80AD7",
            INIT_RAM_01 => X"94DA1DCE888A0DFAF5401CADC806CAC806CA1F8C1F8A8C0F8A0D8CFA2C80D820",
            INIT_RAM_02 => X"3C091C8AE1D21D0C02CAFB48AF94885AC88002CACC0DDC8E184180A1844DE6A2",
            INIT_RAM_03 => X"E18018180AD8D2FA080ADC1708215D20F0ADE0308201D2DDDCDBDC080ADDDEE9",
            INIT_RAM_04 => X"8DE0A31FDA3FD20A8E180180A180AD8D00ADE1D0821FD21A0DDC0D0820FD22A8",
            INIT_RAM_05 => X"4DE6ADC1FD20A1DDAD80A20AD8D2FA030A1DD20A19DE1B1F0CDADE8E180180A1",
            INIT_RAM_06 => X"0A6F02DAF32E4180A0A0D0C0F02CA0A0A8C2180D8AE81AD8F2DA8E180180A184",
            INIT_RAM_07 => X"A0FD24A2DDC0BDCCCDA0FD22A3DDE0BDC88DA0FD21AD80A41DC59DC5B48A0FD2",
            INIT_RAM_08 => X"DB0A0A2CA0F0C1B0C3B0C7F02EA7D82EA080ADE0BDCDA0FD28A1F080ADC0BDCD",
            INIT_RAM_09 => X"DBAB6302FE2B802FE23FEC44444EA4F0D943F180FDB0A0A2CA0F0C53F180D90D",
            INIT_RAM_0A => X"0F0D4EE031FDB0AE844412EA21ECEE0D9CA01820A0D0A0D0C1DCA0D0C02EA2D0",
            INIT_RAM_0B => X"8C8C8FAF8F4BA024448A0DDA0DCA094E8A0D0CCAE8F4BA02EAE18D90AEC0B8EC",
            INIT_RAM_0C => X"402DA0DFEBA4402DA0F02DAD8A80096ED80EADA3081AF188B90B9FA5A0AC8FAC",
            INIT_RAM_0D => X"AD81E3DA1F02DA088A3DFFBA444128AC8FA084A1F02DAD80E3D8DAC8DE3FEBA4",
            INIT_RAM_0E => X"FE2DA0AD880DAD880DAC8DE3FEBA402DA0DFEBA4402DA0F32DA1DFEBA4444328",
            INIT_RAM_0F => X"00000000000688C40908AF140808CA280808FD08A6A0AB80A2808DA2808FE2DA",
            INIT_RAM_10 => X"8CBC1CFDC08828018F0BAFB0E3FBBA18080808FAF64EE4DD8DAF44E023D0D8DA",
            INIT_RAM_11 => X"CB08CB3EB8BE8B308BB08BBA0028BA18CBB1BFDCB80E9308CB08CB08BB08BB01",
            INIT_RAM_12 => X"818CB212FDCC8BEEABAC8BEFAC8BE8B308080A18CB414FDC8C8BE8B3B8BE8B08",
            INIT_RAM_13 => X"006E1929F0BAEFB0E308FB4EEDDD8DAF94EEBDD8DAF3428180AF0BAFB0E0DB82",
            INIT_RAM_14 => X"FDC08F9428CBF2418CBF1EFDCBCF34EE1DD8DAF64E025D0D8DAF44E024D0D8DA",
            INIT_RAM_15 => X"08CB08BB08BB020800182828CB018CBB1AFDCCFC08CB08CB08BB08BB018CBC1B",
            INIT_RAM_16 => X"0808FFB08F0BA48A08FFB08FEBCAE080A1818088AD0C018EE0A08DAA1DC808CB",
            INIT_RAM_17 => X"00000000000F64D800DA010A0D02DA090CDA130A0982A08080A0808DD8EEEEEE",
            INIT_RAM_18 => X"8CB18BB18BBA4BA0D2808BB18BBC2818182808081A08080A080828280AB80A08",
            INIT_RAM_19 => X"A3A062B8CDAFA40F02D8C002DA628281818180AD1BC18181818BAACBB8CBACB1",
            INIT_RAM_1A => X"0CF720EDA3DA0F0CF720EDA3191EDAD872DA0D0CF720EDA3A06DA11F0CF720ED",
            INIT_RAM_1B => X"D2DA1F0C0F0CF720EDA3A06DA1D820D2DA0F0C2F0CF72EDA0E390CDAD8B2DA0D",
            INIT_RAM_1C => X"A0D0C0F0CF720EDA3EDAD810DA0D0C2F0CF720E32B6CDAA06DA1D8D2DA0DD820",
            INIT_RAM_1D => X"03DCDAD806113DC03DCD80611F0FBA4440EDA3D806DA15F420AD8E2DA0DD810D",
            INIT_RAM_1E => X"0CF720EDA3A062B8CDAD8F002DAFC0F90A88180A18180A1F0FBA4440EDA303DC",
            INIT_RAM_1F => X"B2DA0D0CF720EDA3CDA0F0CF720EDA3C191EDAD872DA0D0CF720EDA3A06DA11F",
            INIT_RAM_20 => X"D2DAF44D8F2DA0D0C0F0CF720EDA3A06DA1D8F2DA0D0C2F0CF72DA0E390CDAD8",
            INIT_RAM_21 => X"4231E83B8F24F04FD08AD8E2DA0F0CF720EDA3DA0D0CF720E31B6CDAA06DA1D8",
            INIT_RAM_22 => X"BC8F1BA0C8C80AC8C8F880DCA02CA602FD8440FF3BCB0AC8FAC808BAB6144A44",
            INIT_RAM_23 => X"AE90ECEFE0FF9000CBE2DFAFDC090FF5BCBF1CD90A8E888888E8D8D8880AC8F1",
            INIT_RAM_24 => X"2A6E93ECE89664F2CBE896600002CB10A0AC8FA2F0CCA880A881A0F0C0F02CA0",
            INIT_RAM_25 => X"AC83AC82AC82AB82AC8B80A1DCAF1880B90AFA698886A886A888888CAF1C896A",
            INIT_RAM_26 => X"F3BA02BAC8F3BA4444F2DFDCB8B6BAB0F0AB80AB802CAC80AC81AB81AB81A4D4",
            INIT_RAM_27 => X"B9F3BA0224444F20BCBA44A0BAB80AF020808FA0818180808FD08A080A088AC8",
            INIT_RAM_28 => X"8FC4038CF64FA2030A0D8C0F8A0982A08080AFDC08AA080808F02C8B80AE1BC0",
            INIT_RAM_29 => X"9B1AE8EAF80A1B2C291C88C986A0D2C8C0D3C0F3C0F4C0F4C886A0D5C8A5D0C8",
            INIT_RAM_2A => X"18FFBA0F0244440BFCBA48A885A018CFC0D0C886A0D1C8A9898F5BA028AF1C99",
            INIT_RAM_2B => X"00966960960900644640640600120420560B609609905A860061848C0F8A881A",
            INIT_RAM_2C => X"13800252400000100001001680023D2000000000000331212208111111111100",
            INIT_RAM_2D => X"10025F8000001001000012600239700000000000034183025050000000000000",
            INIT_RAM_2E => X"2292400000000100013220027D2010000000000255400255A000000000010431",
            INIT_RAM_2F => X"00010000000000043160029971000001000003418501B0510000001000013233",
            INIT_RAM_30 => X"7F0F0D2F0F7D2F0FBB7076343454343405B07070BB0001000000004512002DF8",
            INIT_RAM_31 => X"DBF0D600770000DBF0F0F0992207009027002F7D7F300F6B00FFFDFFBB002F0D",
            INIT_RAM_32 => X"3A0030DDFF0F00DBF300023009000F3F9F0F7B02F2DBF0F0BB700AF0D70003F0",
            INIT_RAM_33 => X"002000000055555540000D0F3030AF0000F2F00F3B27000B23033A2036000007",
            INIT_RAM_34 => X"0000100000242200195D00100100001013321227BB010000001000011442275A",
            INIT_RAM_35 => X"C84C000400000000000000005A000005B976ECCC000000000000181112204101",
            INIT_RAM_36 => X"F96F000531230001C84C000431230001F96F0005000000003123000100000000",
            INIT_RAM_37 => X"7777777777777640312300013000300200000000F84C3006F96F0005F96F0005",
            INIT_RAM_38 => X"0000000000000000F4F2F1F0F0FEFDFBFAF8F7F6F4F3F2F07310000000000000",
            INIT_RAM_39 => X"3136733720131365114201313663111000000DDDDDDDDE0CFFEFEFEFDDDEEDDD",
            INIT_RAM_3A => X"3033137333333303313733333330331373333333012657377600566733333301",
            INIT_RAM_3B => X"001100001F0000F100000102B0102C0102D0102E30D1130DFF00033137333333",
            INIT_RAM_3C => X"445544544E8C8E4AAA4AEAAA68AA68888EAAA448888E0000089ABCDEF0123456",
            INIT_RAM_3D => X"AAB3301BCABA8AAB910138EBA8AAB8A000000007C707C7C7C70707CCC7000004",
            INIT_RAM_3E => X"00000014755455545013AFBBABBBBB09F8ABA8AEF6001BCABA8AAB9109F8ABA8",
            INIT_RAM_3F => X"F0F0F000000BBA9BDBAA98766887666112245499901110100004654559899101"
        )
        port map (
            DO => sdpb_inst_8_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_8_BLKSELA_i,
            BLKSELB => sdpb_inst_8_BLKSELB_i,
            ADA => sdpb_inst_8_ADA_i,
            DI => sdpb_inst_8_DI_i,
            ADB => sdpb_inst_8_ADB_i
        );

    sdpb_inst_9: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "001",
            BLK_SEL_1 => "001",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_9_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_9_BLKSELA_i,
            BLKSELB => sdpb_inst_9_BLKSELB_i,
            ADA => sdpb_inst_9_ADA_i,
            DI => sdpb_inst_9_DI_i,
            ADB => sdpb_inst_9_ADB_i
        );

    sdpb_inst_10: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "010",
            BLK_SEL_1 => "010",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_10_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_10_BLKSELA_i,
            BLKSELB => sdpb_inst_10_BLKSELB_i,
            ADA => sdpb_inst_10_ADA_i,
            DI => sdpb_inst_10_DI_i,
            ADB => sdpb_inst_10_ADB_i
        );

    sdpb_inst_11: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "011",
            BLK_SEL_1 => "011",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_11_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_11_BLKSELA_i,
            BLKSELB => sdpb_inst_11_BLKSELB_i,
            ADA => sdpb_inst_11_ADA_i,
            DI => sdpb_inst_11_DI_i,
            ADB => sdpb_inst_11_ADB_i
        );

    sdpb_inst_12: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "100",
            BLK_SEL_1 => "100",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_12_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_12_BLKSELA_i,
            BLKSELB => sdpb_inst_12_BLKSELB_i,
            ADA => sdpb_inst_12_ADA_i,
            DI => sdpb_inst_12_DI_i,
            ADB => sdpb_inst_12_ADB_i
        );

    sdpb_inst_13: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "101",
            BLK_SEL_1 => "101",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_13_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_13_BLKSELA_i,
            BLKSELB => sdpb_inst_13_BLKSELB_i,
            ADA => sdpb_inst_13_ADA_i,
            DI => sdpb_inst_13_DI_i,
            ADB => sdpb_inst_13_ADB_i
        );

    sdpb_inst_14: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "110",
            BLK_SEL_1 => "110",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_14_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_14_BLKSELA_i,
            BLKSELB => sdpb_inst_14_BLKSELB_i,
            ADA => sdpb_inst_14_ADA_i,
            DI => sdpb_inst_14_DI_i,
            ADB => sdpb_inst_14_ADB_i
        );

    sdpb_inst_15: SDPB
        generic map (
            READ_MODE => '0',
            BIT_WIDTH_0 => 4,
            BIT_WIDTH_1 => 4,
            RESET_MODE => "SYNC",
            BLK_SEL_0 => "111",
            BLK_SEL_1 => "111",
            INIT_RAM_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_RAM_3F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => sdpb_inst_15_DO_o,
            CLKA => clka,
            CEA => cea,
            RESETA => reseta,
            CLKB => clkb,
            CEB => ceb,
            RESETB => resetb,
            OCE => oce,
            BLKSELA => sdpb_inst_15_BLKSELA_i,
            BLKSELB => sdpb_inst_15_BLKSELB_i,
            ADA => sdpb_inst_15_ADA_i,
            DI => sdpb_inst_15_DI_i,
            ADB => sdpb_inst_15_ADB_i
        );

    dff_inst_0: DFFE
        port map (
            Q => dff_q_0,
            D => adb(14),
            CLK => clkb,
            CE => ceb
        );

    dff_inst_1: DFFE
        port map (
            Q => dff_q_1,
            D => adb(13),
            CLK => clkb,
            CE => ceb
        );

    dff_inst_2: DFFE
        port map (
            Q => dff_q_2,
            D => adb(12),
            CLK => clkb,
            CE => ceb
        );

    mux_inst_0: MUX2
        port map (
            O => mux_o_0,
            I0 => sdpb_inst_0_dout(0),
            I1 => sdpb_inst_1_dout(0),
            S0 => dff_q_2
        );

    mux_inst_1: MUX2
        port map (
            O => mux_o_1,
            I0 => sdpb_inst_2_dout(0),
            I1 => sdpb_inst_3_dout(0),
            S0 => dff_q_2
        );

    mux_inst_2: MUX2
        port map (
            O => mux_o_2,
            I0 => sdpb_inst_4_dout(0),
            I1 => sdpb_inst_5_dout(0),
            S0 => dff_q_2
        );

    mux_inst_3: MUX2
        port map (
            O => mux_o_3,
            I0 => sdpb_inst_6_dout(0),
            I1 => sdpb_inst_7_dout(0),
            S0 => dff_q_2
        );

    mux_inst_4: MUX2
        port map (
            O => mux_o_4,
            I0 => mux_o_0,
            I1 => mux_o_1,
            S0 => dff_q_1
        );

    mux_inst_5: MUX2
        port map (
            O => mux_o_5,
            I0 => mux_o_2,
            I1 => mux_o_3,
            S0 => dff_q_1
        );

    mux_inst_6: MUX2
        port map (
            O => dout(0),
            I0 => mux_o_4,
            I1 => mux_o_5,
            S0 => dff_q_0
        );

    mux_inst_7: MUX2
        port map (
            O => mux_o_7,
            I0 => sdpb_inst_0_dout(1),
            I1 => sdpb_inst_1_dout(1),
            S0 => dff_q_2
        );

    mux_inst_8: MUX2
        port map (
            O => mux_o_8,
            I0 => sdpb_inst_2_dout(1),
            I1 => sdpb_inst_3_dout(1),
            S0 => dff_q_2
        );

    mux_inst_9: MUX2
        port map (
            O => mux_o_9,
            I0 => sdpb_inst_4_dout(1),
            I1 => sdpb_inst_5_dout(1),
            S0 => dff_q_2
        );

    mux_inst_10: MUX2
        port map (
            O => mux_o_10,
            I0 => sdpb_inst_6_dout(1),
            I1 => sdpb_inst_7_dout(1),
            S0 => dff_q_2
        );

    mux_inst_11: MUX2
        port map (
            O => mux_o_11,
            I0 => mux_o_7,
            I1 => mux_o_8,
            S0 => dff_q_1
        );

    mux_inst_12: MUX2
        port map (
            O => mux_o_12,
            I0 => mux_o_9,
            I1 => mux_o_10,
            S0 => dff_q_1
        );

    mux_inst_13: MUX2
        port map (
            O => dout(1),
            I0 => mux_o_11,
            I1 => mux_o_12,
            S0 => dff_q_0
        );

    mux_inst_14: MUX2
        port map (
            O => mux_o_14,
            I0 => sdpb_inst_0_dout(2),
            I1 => sdpb_inst_1_dout(2),
            S0 => dff_q_2
        );

    mux_inst_15: MUX2
        port map (
            O => mux_o_15,
            I0 => sdpb_inst_2_dout(2),
            I1 => sdpb_inst_3_dout(2),
            S0 => dff_q_2
        );

    mux_inst_16: MUX2
        port map (
            O => mux_o_16,
            I0 => sdpb_inst_4_dout(2),
            I1 => sdpb_inst_5_dout(2),
            S0 => dff_q_2
        );

    mux_inst_17: MUX2
        port map (
            O => mux_o_17,
            I0 => sdpb_inst_6_dout(2),
            I1 => sdpb_inst_7_dout(2),
            S0 => dff_q_2
        );

    mux_inst_18: MUX2
        port map (
            O => mux_o_18,
            I0 => mux_o_14,
            I1 => mux_o_15,
            S0 => dff_q_1
        );

    mux_inst_19: MUX2
        port map (
            O => mux_o_19,
            I0 => mux_o_16,
            I1 => mux_o_17,
            S0 => dff_q_1
        );

    mux_inst_20: MUX2
        port map (
            O => dout(2),
            I0 => mux_o_18,
            I1 => mux_o_19,
            S0 => dff_q_0
        );

    mux_inst_21: MUX2
        port map (
            O => mux_o_21,
            I0 => sdpb_inst_0_dout(3),
            I1 => sdpb_inst_1_dout(3),
            S0 => dff_q_2
        );

    mux_inst_22: MUX2
        port map (
            O => mux_o_22,
            I0 => sdpb_inst_2_dout(3),
            I1 => sdpb_inst_3_dout(3),
            S0 => dff_q_2
        );

    mux_inst_23: MUX2
        port map (
            O => mux_o_23,
            I0 => sdpb_inst_4_dout(3),
            I1 => sdpb_inst_5_dout(3),
            S0 => dff_q_2
        );

    mux_inst_24: MUX2
        port map (
            O => mux_o_24,
            I0 => sdpb_inst_6_dout(3),
            I1 => sdpb_inst_7_dout(3),
            S0 => dff_q_2
        );

    mux_inst_25: MUX2
        port map (
            O => mux_o_25,
            I0 => mux_o_21,
            I1 => mux_o_22,
            S0 => dff_q_1
        );

    mux_inst_26: MUX2
        port map (
            O => mux_o_26,
            I0 => mux_o_23,
            I1 => mux_o_24,
            S0 => dff_q_1
        );

    mux_inst_27: MUX2
        port map (
            O => dout(3),
            I0 => mux_o_25,
            I1 => mux_o_26,
            S0 => dff_q_0
        );

    mux_inst_28: MUX2
        port map (
            O => mux_o_28,
            I0 => sdpb_inst_8_dout(4),
            I1 => sdpb_inst_9_dout(4),
            S0 => dff_q_2
        );

    mux_inst_29: MUX2
        port map (
            O => mux_o_29,
            I0 => sdpb_inst_10_dout(4),
            I1 => sdpb_inst_11_dout(4),
            S0 => dff_q_2
        );

    mux_inst_30: MUX2
        port map (
            O => mux_o_30,
            I0 => sdpb_inst_12_dout(4),
            I1 => sdpb_inst_13_dout(4),
            S0 => dff_q_2
        );

    mux_inst_31: MUX2
        port map (
            O => mux_o_31,
            I0 => sdpb_inst_14_dout(4),
            I1 => sdpb_inst_15_dout(4),
            S0 => dff_q_2
        );

    mux_inst_32: MUX2
        port map (
            O => mux_o_32,
            I0 => mux_o_28,
            I1 => mux_o_29,
            S0 => dff_q_1
        );

    mux_inst_33: MUX2
        port map (
            O => mux_o_33,
            I0 => mux_o_30,
            I1 => mux_o_31,
            S0 => dff_q_1
        );

    mux_inst_34: MUX2
        port map (
            O => dout(4),
            I0 => mux_o_32,
            I1 => mux_o_33,
            S0 => dff_q_0
        );

    mux_inst_35: MUX2
        port map (
            O => mux_o_35,
            I0 => sdpb_inst_8_dout(5),
            I1 => sdpb_inst_9_dout(5),
            S0 => dff_q_2
        );

    mux_inst_36: MUX2
        port map (
            O => mux_o_36,
            I0 => sdpb_inst_10_dout(5),
            I1 => sdpb_inst_11_dout(5),
            S0 => dff_q_2
        );

    mux_inst_37: MUX2
        port map (
            O => mux_o_37,
            I0 => sdpb_inst_12_dout(5),
            I1 => sdpb_inst_13_dout(5),
            S0 => dff_q_2
        );

    mux_inst_38: MUX2
        port map (
            O => mux_o_38,
            I0 => sdpb_inst_14_dout(5),
            I1 => sdpb_inst_15_dout(5),
            S0 => dff_q_2
        );

    mux_inst_39: MUX2
        port map (
            O => mux_o_39,
            I0 => mux_o_35,
            I1 => mux_o_36,
            S0 => dff_q_1
        );

    mux_inst_40: MUX2
        port map (
            O => mux_o_40,
            I0 => mux_o_37,
            I1 => mux_o_38,
            S0 => dff_q_1
        );

    mux_inst_41: MUX2
        port map (
            O => dout(5),
            I0 => mux_o_39,
            I1 => mux_o_40,
            S0 => dff_q_0
        );

    mux_inst_42: MUX2
        port map (
            O => mux_o_42,
            I0 => sdpb_inst_8_dout(6),
            I1 => sdpb_inst_9_dout(6),
            S0 => dff_q_2
        );

    mux_inst_43: MUX2
        port map (
            O => mux_o_43,
            I0 => sdpb_inst_10_dout(6),
            I1 => sdpb_inst_11_dout(6),
            S0 => dff_q_2
        );

    mux_inst_44: MUX2
        port map (
            O => mux_o_44,
            I0 => sdpb_inst_12_dout(6),
            I1 => sdpb_inst_13_dout(6),
            S0 => dff_q_2
        );

    mux_inst_45: MUX2
        port map (
            O => mux_o_45,
            I0 => sdpb_inst_14_dout(6),
            I1 => sdpb_inst_15_dout(6),
            S0 => dff_q_2
        );

    mux_inst_46: MUX2
        port map (
            O => mux_o_46,
            I0 => mux_o_42,
            I1 => mux_o_43,
            S0 => dff_q_1
        );

    mux_inst_47: MUX2
        port map (
            O => mux_o_47,
            I0 => mux_o_44,
            I1 => mux_o_45,
            S0 => dff_q_1
        );

    mux_inst_48: MUX2
        port map (
            O => dout(6),
            I0 => mux_o_46,
            I1 => mux_o_47,
            S0 => dff_q_0
        );

    mux_inst_49: MUX2
        port map (
            O => mux_o_49,
            I0 => sdpb_inst_8_dout(7),
            I1 => sdpb_inst_9_dout(7),
            S0 => dff_q_2
        );

    mux_inst_50: MUX2
        port map (
            O => mux_o_50,
            I0 => sdpb_inst_10_dout(7),
            I1 => sdpb_inst_11_dout(7),
            S0 => dff_q_2
        );

    mux_inst_51: MUX2
        port map (
            O => mux_o_51,
            I0 => sdpb_inst_12_dout(7),
            I1 => sdpb_inst_13_dout(7),
            S0 => dff_q_2
        );

    mux_inst_52: MUX2
        port map (
            O => mux_o_52,
            I0 => sdpb_inst_14_dout(7),
            I1 => sdpb_inst_15_dout(7),
            S0 => dff_q_2
        );

    mux_inst_53: MUX2
        port map (
            O => mux_o_53,
            I0 => mux_o_49,
            I1 => mux_o_50,
            S0 => dff_q_1
        );

    mux_inst_54: MUX2
        port map (
            O => mux_o_54,
            I0 => mux_o_51,
            I1 => mux_o_52,
            S0 => dff_q_1
        );

    mux_inst_55: MUX2
        port map (
            O => dout(7),
            I0 => mux_o_53,
            I1 => mux_o_54,
            S0 => dff_q_0
        );

end Behavioral; --Gowin_SDPB
