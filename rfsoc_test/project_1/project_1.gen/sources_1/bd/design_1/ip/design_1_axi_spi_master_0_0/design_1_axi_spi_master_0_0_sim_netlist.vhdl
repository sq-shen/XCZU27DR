-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jul  3 17:33:08 2025
-- Host        : XD_CHU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_axi_spi_master_0_0 -prefix
--               design_1_axi_spi_master_0_0_ design_1_axi_spi_master_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_spi_master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu27dr-fsve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_spi_master_0_0_s_axi_lite_reg is
  port (
    axi_spi_wr_vld : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    \wready_reg[0]_0\ : out STD_LOGIC;
    axi_spi_rd_en : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arready_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_reg : out STD_LOGIC;
    \o_reg_wr_addr_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_reg_wr_dat_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \o_reg_wr_dat_reg[1]_0\ : out STD_LOGIC;
    \o_reg_wr_dat_reg[3]_0\ : out STD_LOGIC;
    \o_reg_rd_addr_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    en_reg_0 : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    rw_en_reg : in STD_LOGIC;
    cs_sel : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    D : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_axi_spi_master_0_0_s_axi_lite_reg;

architecture STRUCTURE of design_1_axi_spi_master_0_0_s_axi_lite_reg is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arready : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \arready[0]_i_1_n_0\ : STD_LOGIC;
  signal \arready[2]_i_1_n_0\ : STD_LOGIC;
  signal \^arready_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal awready : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \awready[0]_i_1_n_0\ : STD_LOGIC;
  signal \awready[2]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_spi_rd_en\ : STD_LOGIC;
  signal \^axi_spi_wr_vld\ : STD_LOGIC;
  signal axil_awvalid : STD_LOGIC;
  signal axil_awvalid0 : STD_LOGIC;
  signal axil_awvalid_i_1_n_0 : STD_LOGIC;
  signal axil_rvalid_i_1_n_0 : STD_LOGIC;
  signal axil_wvalid : STD_LOGIC;
  signal axil_wvalid_i_1_n_0 : STD_LOGIC;
  signal axil_wvalid_i_2_n_0 : STD_LOGIC;
  signal bvalid0 : STD_LOGIC;
  signal bvalid_i_1_n_0 : STD_LOGIC;
  signal \o_reg_rd_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_reg_rd_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal o_reg_rd_vld_i_1_n_0 : STD_LOGIC;
  signal \^o_reg_wr_addr_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o_reg_wr_dat_reg[14]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal reg_rd_valid : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal wready1 : STD_LOGIC;
  signal \wready[0]_i_1_n_0\ : STD_LOGIC;
  signal \^wready_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_reg_rd_addr[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of o_reg_rd_vld_i_1 : label is "soft_lutpair19";
begin
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  \arready_reg[2]_0\(0) <= \^arready_reg[2]_0\(0);
  axi_spi_rd_en <= \^axi_spi_rd_en\;
  axi_spi_wr_vld <= \^axi_spi_wr_vld\;
  \o_reg_wr_addr_reg[1]_0\(1 downto 0) <= \^o_reg_wr_addr_reg[1]_0\(1 downto 0);
  \o_reg_wr_dat_reg[14]_0\(14 downto 0) <= \^o_reg_wr_dat_reg[14]_0\(14 downto 0);
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  \wready_reg[0]_0\ <= \^wready_reg[0]_0\;
\FSM_onehot_cs[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\arready[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => arready(0),
      O => \arready[0]_i_1_n_0\
    );
\arready[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^arready_reg[2]_0\(0),
      I1 => s00_axi_aresetn,
      O => \arready[2]_i_1_n_0\
    );
\arready_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \arready[0]_i_1_n_0\,
      Q => arready(0),
      R => \arready[2]_i_1_n_0\
    );
\arready_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => arready(0),
      Q => arready(1),
      R => \arready[2]_i_1_n_0\
    );
\arready_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => arready(1),
      Q => \^arready_reg[2]_0\(0),
      R => \arready[2]_i_1_n_0\
    );
\awready[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => awready(0),
      O => \awready[0]_i_1_n_0\
    );
\awready[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^q\(0),
      I2 => s00_axi_aresetn,
      O => \awready[2]_i_1_n_0\
    );
\awready_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \awready[0]_i_1_n_0\,
      Q => awready(0),
      R => \awready[2]_i_1_n_0\
    );
\awready_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => awready(0),
      Q => awready(1),
      R => \awready[2]_i_1_n_0\
    );
\awready_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => awready(1),
      Q => \^q\(0),
      R => \awready[2]_i_1_n_0\
    );
axil_awvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^q\(0),
      I1 => s00_axi_awvalid,
      I2 => axil_awvalid,
      O => axil_awvalid_i_1_n_0
    );
axil_awvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axil_awvalid_i_1_n_0,
      Q => axil_awvalid,
      R => axil_wvalid_i_1_n_0
    );
\axil_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => s00_axi_rdata(0),
      R => '0'
    );
\axil_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(10),
      Q => s00_axi_rdata(10),
      R => '0'
    );
\axil_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(11),
      Q => s00_axi_rdata(11),
      R => '0'
    );
\axil_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(12),
      Q => s00_axi_rdata(12),
      R => '0'
    );
\axil_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(13),
      Q => s00_axi_rdata(13),
      R => '0'
    );
\axil_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(14),
      Q => s00_axi_rdata(14),
      R => '0'
    );
\axil_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => s00_axi_rdata(1),
      R => '0'
    );
\axil_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => s00_axi_rdata(2),
      R => '0'
    );
\axil_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => s00_axi_rdata(3),
      R => '0'
    );
\axil_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => s00_axi_rdata(4),
      R => '0'
    );
\axil_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => s00_axi_rdata(5),
      R => '0'
    );
\axil_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => s00_axi_rdata(6),
      R => '0'
    );
\axil_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(7),
      Q => s00_axi_rdata(7),
      R => '0'
    );
\axil_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(8),
      Q => s00_axi_rdata(8),
      R => '0'
    );
\axil_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(9),
      Q => s00_axi_rdata(9),
      R => '0'
    );
axil_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => reg_rd_valid,
      I1 => s00_axi_aresetn,
      I2 => s00_axi_rready,
      I3 => \^s00_axi_rvalid\,
      O => axil_rvalid_i_1_n_0
    );
axil_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axil_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => '0'
    );
axil_wvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_aresetn,
      O => axil_wvalid_i_1_n_0
    );
axil_wvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^wready_reg[0]_0\,
      I1 => s00_axi_wvalid,
      I2 => axil_wvalid,
      O => axil_wvalid_i_2_n_0
    );
axil_wvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axil_wvalid_i_2_n_0,
      Q => axil_wvalid,
      R => axil_wvalid_i_1_n_0
    );
bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => axil_wvalid,
      I1 => axil_awvalid,
      I2 => \^s00_axi_bvalid\,
      I3 => s00_axi_bready,
      O => bvalid_i_1_n_0
    );
bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => '0'
    );
cs_sel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \^o_reg_wr_dat_reg[14]_0\(3),
      I1 => s00_axi_aresetn,
      I2 => \^o_reg_wr_addr_reg[1]_0\(1),
      I3 => \^o_reg_wr_addr_reg[1]_0\(0),
      I4 => \^axi_spi_wr_vld\,
      I5 => cs_sel,
      O => \o_reg_wr_dat_reg[3]_0\
    );
en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEA20000AAAAAAAA"
    )
        port map (
      I0 => en_reg_0,
      I1 => \^o_reg_wr_addr_reg[1]_0\(1),
      I2 => \^o_reg_wr_addr_reg[1]_0\(0),
      I3 => \^o_reg_wr_dat_reg[14]_0\(2),
      I4 => \^axi_spi_wr_vld\,
      I5 => s00_axi_aresetn,
      O => en_reg
    );
\o_reg_rd_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^arready_reg[2]_0\(0),
      I1 => s00_axi_arvalid,
      I2 => s00_axi_araddr(0),
      O => \o_reg_rd_addr[0]_i_1_n_0\
    );
\o_reg_rd_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^arready_reg[2]_0\(0),
      I1 => s00_axi_arvalid,
      I2 => s00_axi_araddr(1),
      O => \o_reg_rd_addr[1]_i_1_n_0\
    );
\o_reg_rd_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_reg_rd_addr[0]_i_1_n_0\,
      Q => \o_reg_rd_addr_reg[1]_0\(0),
      R => '0'
    );
\o_reg_rd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_reg_rd_addr[1]_i_1_n_0\,
      Q => \o_reg_rd_addr_reg[1]_0\(1),
      R => '0'
    );
o_reg_rd_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^arready_reg[2]_0\(0),
      I2 => s00_axi_aresetn,
      I3 => \^axi_spi_rd_en\,
      O => o_reg_rd_vld_i_1_n_0
    );
o_reg_rd_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => o_reg_rd_vld_i_1_n_0,
      Q => \^axi_spi_rd_en\,
      R => '0'
    );
\o_reg_wr_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^q\(0),
      O => axil_awvalid0
    );
\o_reg_wr_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axil_awvalid0,
      D => s00_axi_awaddr(0),
      Q => \^o_reg_wr_addr_reg[1]_0\(0),
      R => \^sr\(0)
    );
\o_reg_wr_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axil_awvalid0,
      D => s00_axi_awaddr(1),
      Q => \^o_reg_wr_addr_reg[1]_0\(1),
      R => \^sr\(0)
    );
\o_reg_wr_dat[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^wready_reg[0]_0\,
      O => wready1
    );
\o_reg_wr_dat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(0),
      Q => \^o_reg_wr_dat_reg[14]_0\(0),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(10),
      Q => \^o_reg_wr_dat_reg[14]_0\(10),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(11),
      Q => \^o_reg_wr_dat_reg[14]_0\(11),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(12),
      Q => \^o_reg_wr_dat_reg[14]_0\(12),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(13),
      Q => \^o_reg_wr_dat_reg[14]_0\(13),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(14),
      Q => \^o_reg_wr_dat_reg[14]_0\(14),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(1),
      Q => \^o_reg_wr_dat_reg[14]_0\(1),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(2),
      Q => \^o_reg_wr_dat_reg[14]_0\(2),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(3),
      Q => \^o_reg_wr_dat_reg[14]_0\(3),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(4),
      Q => \^o_reg_wr_dat_reg[14]_0\(4),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(5),
      Q => \^o_reg_wr_dat_reg[14]_0\(5),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(6),
      Q => \^o_reg_wr_dat_reg[14]_0\(6),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(7),
      Q => \^o_reg_wr_dat_reg[14]_0\(7),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(8),
      Q => \^o_reg_wr_dat_reg[14]_0\(8),
      R => \^sr\(0)
    );
\o_reg_wr_dat_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wready1,
      D => s00_axi_wdata(9),
      Q => \^o_reg_wr_dat_reg[14]_0\(9),
      R => \^sr\(0)
    );
o_reg_wr_vld_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axil_wvalid,
      I1 => axil_awvalid,
      O => bvalid0
    );
o_reg_wr_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bvalid0,
      Q => \^axi_spi_wr_vld\,
      R => \^sr\(0)
    );
reg_rd_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => E(0),
      Q => reg_rd_valid,
      R => '0'
    );
rw_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => \^o_reg_wr_dat_reg[14]_0\(1),
      I1 => \^axi_spi_wr_vld\,
      I2 => \^o_reg_wr_addr_reg[1]_0\(0),
      I3 => \^o_reg_wr_addr_reg[1]_0\(1),
      I4 => rw_en_reg,
      O => \o_reg_wr_dat_reg[1]_0\
    );
\wready[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C80"
    )
        port map (
      I0 => axil_awvalid,
      I1 => s00_axi_aresetn,
      I2 => s00_axi_wvalid,
      I3 => \^wready_reg[0]_0\,
      O => \wready[0]_i_1_n_0\
    );
\wready_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \wready[0]_i_1_n_0\,
      Q => \^wready_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_spi_master_0_0_spi_master_ctrl is
  port (
    spi_clk : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_csn : out STD_LOGIC;
    spi_csn1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    en_d_reg_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_spi_rd_dat_reg[2]\ : in STD_LOGIC;
    spi_miso : in STD_LOGIC;
    \wr_data_d_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_spi_rd_dat_reg[3]\ : in STD_LOGIC;
    \axi_spi_rd_dat_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rw_addr_reg[14]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
end design_1_axi_spi_master_0_0_spi_master_ctrl;

architecture STRUCTURE of design_1_axi_spi_master_0_0_spi_master_ctrl is
  signal \FSM_onehot_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_cs_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_cs_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_cs_reg_n_0_[5]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \div_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal div_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal en_d : STD_LOGIC;
  signal en_d1 : STD_LOGIC;
  signal is_busy : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal rd_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_data_d0 : STD_LOGIC;
  signal run : STD_LOGIC;
  signal run_i_1_n_0 : STD_LOGIC;
  signal \rw_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[15]_i_2_n_0\ : STD_LOGIC;
  signal \rw_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[10]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[11]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[12]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[13]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[14]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \rw_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal rw_flag : STD_LOGIC;
  signal rw_flag05_out : STD_LOGIC;
  signal rw_flag_i_1_n_0 : STD_LOGIC;
  signal \^spi_clk\ : STD_LOGIC;
  signal spi_clk_i_1_n_0 : STD_LOGIC;
  signal spi_csn_d_i_1_n_0 : STD_LOGIC;
  signal spi_csn_d_reg_n_0 : STD_LOGIC;
  signal \^spi_mosi\ : STD_LOGIC;
  signal spi_mosi_i_1_n_0 : STD_LOGIC;
  signal spi_mosi_i_2_n_0 : STD_LOGIC;
  signal spi_mosi_i_3_n_0 : STD_LOGIC;
  signal trans_cnt : STD_LOGIC;
  signal trans_cnt04_out : STD_LOGIC;
  signal \trans_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal trans_cnt_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \wr_data_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[2]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[3]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[5]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[6]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_d[7]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_data_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_data_d_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_data_d_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_data_d_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_data_d_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_data_d_reg_n_0_[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_cs[0]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[0]\ : label is "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[1]\ : label is "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[2]\ : label is "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[3]\ : label is "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[4]\ : label is "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_reg[5]\ : label is "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010";
  attribute SOFT_HLUTNM of \div_cnt[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \div_cnt[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \div_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \div_cnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rw_addr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rw_addr[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rw_addr[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rw_addr[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rw_addr[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rw_addr[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rw_addr[15]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rw_addr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rw_addr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rw_addr[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rw_addr[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rw_addr[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rw_addr[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rw_addr[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rw_addr[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rw_addr[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of spi_clk_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of spi_csn1_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of spi_csn_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of spi_csn_d_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of spi_mosi_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of spi_mosi_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \trans_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \trans_cnt[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \trans_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \trans_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \trans_cnt[5]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_data_d[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_data_d[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_data_d[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_data_d[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_data_d[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_data_d[7]_i_3\ : label is "soft_lutpair6";
begin
  Q(0) <= \^q\(0);
  spi_clk <= \^spi_clk\;
  spi_mosi <= \^spi_mosi\;
\FSM_onehot_cs[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_cs_reg_n_0_[1]\,
      I1 => en_d,
      I2 => \FSM_onehot_cs_reg_n_0_[0]\,
      O => \FSM_onehot_cs[0]_i_1_n_0\
    );
\FSM_onehot_cs[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => \^q\(0),
      I2 => \FSM_onehot_cs[2]_i_4_n_0\,
      O => \FSM_onehot_cs[1]_i_1_n_0\
    );
\FSM_onehot_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => \FSM_onehot_cs[2]_i_3_n_0\,
      I1 => \FSM_onehot_cs_reg_n_0_[4]\,
      I2 => rw_flag,
      I3 => \FSM_onehot_cs[2]_i_4_n_0\,
      I4 => \^q\(0),
      O => \FSM_onehot_cs[2]_i_2_n_0\
    );
\FSM_onehot_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => trans_cnt_reg(1),
      I1 => trans_cnt_reg(0),
      I2 => trans_cnt_reg(5),
      I3 => trans_cnt_reg(4),
      I4 => trans_cnt_reg(2),
      I5 => trans_cnt_reg(3),
      O => \FSM_onehot_cs[2]_i_3_n_0\
    );
\FSM_onehot_cs[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => trans_cnt_reg(1),
      I1 => trans_cnt_reg(0),
      I2 => trans_cnt_reg(2),
      I3 => trans_cnt_reg(3),
      I4 => trans_cnt_reg(4),
      I5 => trans_cnt_reg(5),
      O => \FSM_onehot_cs[2]_i_4_n_0\
    );
\FSM_onehot_cs[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \FSM_onehot_cs[2]_i_4_n_0\,
      I1 => p_1_in2_in,
      I2 => \FSM_onehot_cs[2]_i_3_n_0\,
      I3 => \FSM_onehot_cs_reg_n_0_[4]\,
      I4 => rw_flag,
      O => \FSM_onehot_cs[3]_i_1_n_0\
    );
\FSM_onehot_cs[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_cs_reg_n_0_[5]\,
      I1 => \FSM_onehot_cs_reg_n_0_[4]\,
      I2 => \FSM_onehot_cs[2]_i_3_n_0\,
      O => \FSM_onehot_cs[4]_i_1_n_0\
    );
\FSM_onehot_cs[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_cs_reg_n_0_[0]\,
      I1 => en_d,
      O => \FSM_onehot_cs[5]_i_1_n_0\
    );
\FSM_onehot_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_cs_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_cs[1]_i_1_n_0\,
      Q => \FSM_onehot_cs_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_cs[2]_i_2_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\FSM_onehot_cs_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_cs[3]_i_1_n_0\,
      Q => p_1_in2_in,
      R => SR(0)
    );
\FSM_onehot_cs_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_cs[4]_i_1_n_0\,
      Q => \FSM_onehot_cs_reg_n_0_[4]\,
      R => SR(0)
    );
\FSM_onehot_cs_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_cs[5]_i_1_n_0\,
      Q => \FSM_onehot_cs_reg_n_0_[5]\,
      R => SR(0)
    );
\axi_spi_rd_dat[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rd_data(0),
      I1 => \wr_data_d_reg[7]_0\(0),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => is_busy,
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      I5 => \rw_addr_reg[14]_0\(0),
      O => D(0)
    );
\axi_spi_rd_dat[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => rd_data(1),
      I1 => \wr_data_d_reg[7]_0\(1),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => \rw_addr_reg[14]_0\(1),
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      O => D(1)
    );
\axi_spi_rd_dat[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rd_data(2),
      I1 => \wr_data_d_reg[7]_0\(2),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => \axi_spi_rd_dat_reg[2]\,
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      I5 => \rw_addr_reg[14]_0\(2),
      O => D(2)
    );
\axi_spi_rd_dat[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rd_data(3),
      I1 => \wr_data_d_reg[7]_0\(3),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => \axi_spi_rd_dat_reg[3]\,
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      I5 => \rw_addr_reg[14]_0\(3),
      O => D(3)
    );
\axi_spi_rd_dat[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => rd_data(4),
      I1 => \wr_data_d_reg[7]_0\(4),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => \rw_addr_reg[14]_0\(4),
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      O => D(4)
    );
\axi_spi_rd_dat[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => rd_data(5),
      I1 => \wr_data_d_reg[7]_0\(5),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => \rw_addr_reg[14]_0\(5),
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      O => D(5)
    );
\axi_spi_rd_dat[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => rd_data(6),
      I1 => \wr_data_d_reg[7]_0\(6),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => \rw_addr_reg[14]_0\(6),
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      O => D(6)
    );
\axi_spi_rd_dat[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => rd_data(7),
      I1 => \wr_data_d_reg[7]_0\(7),
      I2 => \axi_spi_rd_dat_reg[0]\(0),
      I3 => \rw_addr_reg[14]_0\(7),
      I4 => \axi_spi_rd_dat_reg[0]\(1),
      O => D(7)
    );
\div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => div_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => div_cnt_reg(0),
      I1 => div_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => div_cnt_reg(2),
      I1 => div_cnt_reg(1),
      I2 => div_cnt_reg(0),
      O => \p_0_in__1\(2)
    );
\div_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => div_cnt_reg(1),
      I1 => div_cnt_reg(0),
      I2 => div_cnt_reg(3),
      I3 => div_cnt_reg(2),
      I4 => run,
      O => \div_cnt[3]_i_1_n_0\
    );
\div_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => div_cnt_reg(3),
      I1 => div_cnt_reg(0),
      I2 => div_cnt_reg(1),
      I3 => div_cnt_reg(2),
      O => \p_0_in__1\(3)
    );
\div_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => div_cnt_reg(0),
      R => \div_cnt[3]_i_1_n_0\
    );
\div_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => div_cnt_reg(1),
      R => \div_cnt[3]_i_1_n_0\
    );
\div_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => div_cnt_reg(2),
      R => \div_cnt[3]_i_1_n_0\
    );
\div_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => div_cnt_reg(3),
      R => \div_cnt[3]_i_1_n_0\
    );
en_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => en_d,
      Q => en_d1,
      R => '0'
    );
en_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => en_d_reg_0,
      Q => en_d,
      R => '0'
    );
is_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '1',
      Q => is_busy,
      R => \FSM_onehot_cs_reg_n_0_[0]\
    );
\rd_data_d[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => div_cnt_reg(2),
      I2 => div_cnt_reg(3),
      I3 => div_cnt_reg(0),
      I4 => div_cnt_reg(1),
      O => rd_data_d0
    );
\rd_data_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => spi_miso,
      Q => rd_data(0),
      R => '0'
    );
\rd_data_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => rd_data(0),
      Q => rd_data(1),
      R => '0'
    );
\rd_data_d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => rd_data(1),
      Q => rd_data(2),
      R => '0'
    );
\rd_data_d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => rd_data(2),
      Q => rd_data(3),
      R => '0'
    );
\rd_data_d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => rd_data(3),
      Q => rd_data(4),
      R => '0'
    );
\rd_data_d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => rd_data(4),
      Q => rd_data(5),
      R => '0'
    );
\rd_data_d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => rd_data(5),
      Q => rd_data(6),
      R => '0'
    );
\rd_data_d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rd_data_d0,
      D => rd_data(6),
      Q => rd_data(7),
      R => '0'
    );
run_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en_d1,
      I1 => run,
      O => run_i_1_n_0
    );
run_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => run_i_1_n_0,
      Q => run,
      R => \FSM_onehot_cs_reg_n_0_[0]\
    );
\rw_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_d_reg_0,
      I1 => \rw_addr_reg[14]_0\(0),
      O => \rw_addr[0]_i_1_n_0\
    );
\rw_addr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(10),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[9]\,
      O => \rw_addr[10]_i_1_n_0\
    );
\rw_addr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(11),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[10]\,
      O => \rw_addr[11]_i_1_n_0\
    );
\rw_addr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(12),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[11]\,
      O => \rw_addr[12]_i_1_n_0\
    );
\rw_addr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(13),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[12]\,
      O => \rw_addr[13]_i_1_n_0\
    );
\rw_addr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(14),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[13]\,
      O => \rw_addr[14]_i_1_n_0\
    );
\rw_addr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => en_d_reg_0,
      I1 => div_cnt_reg(0),
      I2 => \FSM_onehot_cs_reg_n_0_[4]\,
      I3 => div_cnt_reg(1),
      I4 => div_cnt_reg(3),
      I5 => div_cnt_reg(2),
      O => \rw_addr[15]_i_1_n_0\
    );
\rw_addr[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \rw_addr_reg_n_0_[14]\,
      I1 => en_d_reg_0,
      I2 => \axi_spi_rd_dat_reg[2]\,
      O => \rw_addr[15]_i_2_n_0\
    );
\rw_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(1),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[0]\,
      O => \rw_addr[1]_i_1_n_0\
    );
\rw_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(2),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[1]\,
      O => \rw_addr[2]_i_1_n_0\
    );
\rw_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(3),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[2]\,
      O => \rw_addr[3]_i_1_n_0\
    );
\rw_addr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(4),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[3]\,
      O => \rw_addr[4]_i_1_n_0\
    );
\rw_addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(5),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[4]\,
      O => \rw_addr[5]_i_1_n_0\
    );
\rw_addr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(6),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[5]\,
      O => \rw_addr[6]_i_1_n_0\
    );
\rw_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(7),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[6]\,
      O => \rw_addr[7]_i_1_n_0\
    );
\rw_addr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(8),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[7]\,
      O => \rw_addr[8]_i_1_n_0\
    );
\rw_addr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rw_addr_reg[14]_0\(9),
      I1 => en_d_reg_0,
      I2 => \rw_addr_reg_n_0_[8]\,
      O => \rw_addr[9]_i_1_n_0\
    );
\rw_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[0]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[0]\,
      R => '0'
    );
\rw_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[10]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[10]\,
      R => '0'
    );
\rw_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[11]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[11]\,
      R => '0'
    );
\rw_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[12]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[12]\,
      R => '0'
    );
\rw_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[13]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[13]\,
      R => '0'
    );
\rw_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[14]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[14]\,
      R => '0'
    );
\rw_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[15]_i_2_n_0\,
      Q => p_1_in,
      R => '0'
    );
\rw_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[1]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[1]\,
      R => '0'
    );
\rw_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[2]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[2]\,
      R => '0'
    );
\rw_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[3]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[3]\,
      R => '0'
    );
\rw_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[4]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[4]\,
      R => '0'
    );
\rw_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[5]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[5]\,
      R => '0'
    );
\rw_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[6]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[6]\,
      R => '0'
    );
\rw_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[7]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[7]\,
      R => '0'
    );
\rw_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[8]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[8]\,
      R => '0'
    );
\rw_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rw_addr[15]_i_1_n_0\,
      D => \rw_addr[9]_i_1_n_0\,
      Q => \rw_addr_reg_n_0_[9]\,
      R => '0'
    );
rw_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rw_flag,
      I1 => en_d_reg_0,
      I2 => \axi_spi_rd_dat_reg[2]\,
      O => rw_flag_i_1_n_0
    );
rw_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rw_flag_i_1_n_0,
      Q => rw_flag,
      R => '0'
    );
spi_clk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0040"
    )
        port map (
      I0 => div_cnt_reg(2),
      I1 => div_cnt_reg(1),
      I2 => div_cnt_reg(0),
      I3 => div_cnt_reg(3),
      I4 => \^spi_clk\,
      O => spi_clk_i_1_n_0
    );
spi_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spi_clk_i_1_n_0,
      Q => \^spi_clk\,
      R => \FSM_onehot_cs_reg_n_0_[0]\
    );
spi_csn1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => spi_csn_d_reg_n_0,
      I1 => \axi_spi_rd_dat_reg[3]\,
      O => spi_csn1
    );
spi_csn_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => spi_csn_d_reg_n_0,
      I1 => \axi_spi_rd_dat_reg[3]\,
      O => spi_csn
    );
spi_csn_d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \FSM_onehot_cs_reg_n_0_[5]\,
      I1 => \FSM_onehot_cs_reg_n_0_[1]\,
      I2 => spi_csn_d_reg_n_0,
      O => spi_csn_d_i_1_n_0
    );
spi_csn_d_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spi_csn_d_i_1_n_0,
      Q => spi_csn_d_reg_n_0,
      S => SR(0)
    );
spi_mosi_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => spi_mosi_i_2_n_0,
      I3 => spi_mosi_i_3_n_0,
      I4 => \^spi_mosi\,
      O => spi_mosi_i_1_n_0
    );
spi_mosi_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => div_cnt_reg(2),
      I1 => div_cnt_reg(3),
      I2 => div_cnt_reg(1),
      I3 => div_cnt_reg(0),
      I4 => p_1_in2_in,
      O => spi_mosi_i_2_n_0
    );
spi_mosi_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => div_cnt_reg(2),
      I1 => div_cnt_reg(3),
      I2 => div_cnt_reg(1),
      I3 => \FSM_onehot_cs_reg_n_0_[4]\,
      I4 => div_cnt_reg(0),
      O => spi_mosi_i_3_n_0
    );
spi_mosi_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spi_mosi_i_1_n_0,
      Q => \^spi_mosi\,
      R => '0'
    );
\trans_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => trans_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\trans_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => trans_cnt_reg(0),
      I1 => trans_cnt_reg(1),
      O => \p_0_in__0\(1)
    );
\trans_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => trans_cnt_reg(2),
      I1 => trans_cnt_reg(1),
      I2 => trans_cnt_reg(0),
      O => \p_0_in__0\(2)
    );
\trans_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => trans_cnt_reg(3),
      I1 => trans_cnt_reg(0),
      I2 => trans_cnt_reg(1),
      I3 => trans_cnt_reg(2),
      O => \p_0_in__0\(3)
    );
\trans_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => trans_cnt_reg(4),
      I1 => trans_cnt_reg(2),
      I2 => trans_cnt_reg(1),
      I3 => trans_cnt_reg(0),
      I4 => trans_cnt_reg(3),
      O => \p_0_in__0\(4)
    );
\trans_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \FSM_onehot_cs_reg_n_0_[0]\,
      I1 => \FSM_onehot_cs_reg_n_0_[4]\,
      I2 => \FSM_onehot_cs[2]_i_3_n_0\,
      O => trans_cnt
    );
\trans_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020202000"
    )
        port map (
      I0 => \trans_cnt[5]_i_4_n_0\,
      I1 => div_cnt_reg(3),
      I2 => div_cnt_reg(2),
      I3 => \^q\(0),
      I4 => p_1_in2_in,
      I5 => \FSM_onehot_cs_reg_n_0_[4]\,
      O => trans_cnt04_out
    );
\trans_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => trans_cnt_reg(5),
      I1 => trans_cnt_reg(3),
      I2 => trans_cnt_reg(0),
      I3 => trans_cnt_reg(1),
      I4 => trans_cnt_reg(2),
      I5 => trans_cnt_reg(4),
      O => \p_0_in__0\(5)
    );
\trans_cnt[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => div_cnt_reg(0),
      I1 => div_cnt_reg(1),
      O => \trans_cnt[5]_i_4_n_0\
    );
\trans_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => trans_cnt04_out,
      D => \p_0_in__0\(0),
      Q => trans_cnt_reg(0),
      R => trans_cnt
    );
\trans_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => trans_cnt04_out,
      D => \p_0_in__0\(1),
      Q => trans_cnt_reg(1),
      R => trans_cnt
    );
\trans_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => trans_cnt04_out,
      D => \p_0_in__0\(2),
      Q => trans_cnt_reg(2),
      R => trans_cnt
    );
\trans_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => trans_cnt04_out,
      D => \p_0_in__0\(3),
      Q => trans_cnt_reg(3),
      R => trans_cnt
    );
\trans_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => trans_cnt04_out,
      D => \p_0_in__0\(4),
      Q => trans_cnt_reg(4),
      R => trans_cnt
    );
\trans_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => trans_cnt04_out,
      D => \p_0_in__0\(5),
      Q => trans_cnt_reg(5),
      R => trans_cnt
    );
\wr_data_d[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(0),
      I1 => en_d_reg_0,
      I2 => \axi_spi_rd_dat_reg[2]\,
      O => \wr_data_d[0]_i_1_n_0\
    );
\wr_data_d[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(1),
      I1 => \axi_spi_rd_dat_reg[2]\,
      I2 => en_d_reg_0,
      I3 => \wr_data_d_reg_n_0_[0]\,
      O => \wr_data_d[1]_i_1_n_0\
    );
\wr_data_d[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(2),
      I1 => \axi_spi_rd_dat_reg[2]\,
      I2 => en_d_reg_0,
      I3 => \wr_data_d_reg_n_0_[1]\,
      O => \wr_data_d[2]_i_1_n_0\
    );
\wr_data_d[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(3),
      I1 => \axi_spi_rd_dat_reg[2]\,
      I2 => en_d_reg_0,
      I3 => \wr_data_d_reg_n_0_[2]\,
      O => \wr_data_d[3]_i_1_n_0\
    );
\wr_data_d[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(4),
      I1 => \axi_spi_rd_dat_reg[2]\,
      I2 => en_d_reg_0,
      I3 => \wr_data_d_reg_n_0_[3]\,
      O => \wr_data_d[4]_i_1_n_0\
    );
\wr_data_d[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(5),
      I1 => \axi_spi_rd_dat_reg[2]\,
      I2 => en_d_reg_0,
      I3 => \wr_data_d_reg_n_0_[4]\,
      O => \wr_data_d[5]_i_1_n_0\
    );
\wr_data_d[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(6),
      I1 => \axi_spi_rd_dat_reg[2]\,
      I2 => en_d_reg_0,
      I3 => \wr_data_d_reg_n_0_[5]\,
      O => \wr_data_d[6]_i_1_n_0\
    );
\wr_data_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAEA"
    )
        port map (
      I0 => rw_flag05_out,
      I1 => p_1_in2_in,
      I2 => div_cnt_reg(0),
      I3 => div_cnt_reg(1),
      I4 => div_cnt_reg(3),
      I5 => div_cnt_reg(2),
      O => \wr_data_d[7]_i_1_n_0\
    );
\wr_data_d[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \wr_data_d_reg[7]_0\(7),
      I1 => \axi_spi_rd_dat_reg[2]\,
      I2 => en_d_reg_0,
      I3 => \wr_data_d_reg_n_0_[6]\,
      O => \wr_data_d[7]_i_2_n_0\
    );
\wr_data_d[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_spi_rd_dat_reg[2]\,
      I1 => en_d_reg_0,
      O => rw_flag05_out
    );
\wr_data_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[0]_i_1_n_0\,
      Q => \wr_data_d_reg_n_0_[0]\,
      R => '0'
    );
\wr_data_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[1]_i_1_n_0\,
      Q => \wr_data_d_reg_n_0_[1]\,
      R => '0'
    );
\wr_data_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[2]_i_1_n_0\,
      Q => \wr_data_d_reg_n_0_[2]\,
      R => '0'
    );
\wr_data_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[3]_i_1_n_0\,
      Q => \wr_data_d_reg_n_0_[3]\,
      R => '0'
    );
\wr_data_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[4]_i_1_n_0\,
      Q => \wr_data_d_reg_n_0_[4]\,
      R => '0'
    );
\wr_data_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[5]_i_1_n_0\,
      Q => \wr_data_d_reg_n_0_[5]\,
      R => '0'
    );
\wr_data_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[6]_i_1_n_0\,
      Q => \wr_data_d_reg_n_0_[6]\,
      R => '0'
    );
\wr_data_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wr_data_d[7]_i_1_n_0\,
      D => \wr_data_d[7]_i_2_n_0\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_spi_master_0_0_axi_spi_master_ctrl is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_reg_0 : out STD_LOGIC;
    rw_en_reg_0 : out STD_LOGIC;
    cs_sel : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    \FSM_onehot_cs_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    spi_csn : out STD_LOGIC;
    spi_csn1 : out STD_LOGIC;
    axi_spi_rd_en : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_spi_wr_vld : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rw_en_reg_1 : in STD_LOGIC;
    cs_sel_reg_0 : in STD_LOGIC;
    en_reg_1 : in STD_LOGIC;
    spi_miso : in STD_LOGIC;
    \addr_reg[14]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \axi_spi_rd_dat_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_axi_spi_master_0_0_axi_spi_master_ctrl;

architecture STRUCTURE of design_1_axi_spi_master_0_0_axi_spi_master_ctrl is
  signal addr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal addr_1 : STD_LOGIC;
  signal axi_spi_rd_dat : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_spi_rd_dat[14]_i_1_n_0\ : STD_LOGIC;
  signal \^cs_sel\ : STD_LOGIC;
  signal \^en_reg_0\ : STD_LOGIC;
  signal \^rw_en_reg_0\ : STD_LOGIC;
  signal wr_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_data_0 : STD_LOGIC;
begin
  cs_sel <= \^cs_sel\;
  en_reg_0 <= \^en_reg_0\;
  rw_en_reg_0 <= \^rw_en_reg_0\;
\__5/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => Q(0),
      I2 => Q(1),
      I3 => axi_spi_wr_vld,
      O => wr_data_0
    );
\__7/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => Q(0),
      I2 => Q(1),
      I3 => axi_spi_wr_vld,
      O => addr_1
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(0),
      Q => addr(0),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(10),
      Q => addr(10),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(11),
      Q => addr(11),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(12),
      Q => addr(12),
      R => '0'
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(13),
      Q => addr(13),
      R => '0'
    );
\addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(14),
      Q => addr(14),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(1),
      Q => addr(1),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(2),
      Q => addr(2),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(3),
      Q => addr(3),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(4),
      Q => addr(4),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(5),
      Q => addr(5),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(6),
      Q => addr(6),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(7),
      Q => addr(7),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(8),
      Q => addr(8),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => addr_1,
      D => \addr_reg[14]_0\(9),
      Q => addr(9),
      R => '0'
    );
\axi_spi_rd_dat[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \axi_spi_rd_dat_reg[0]_0\(0),
      I1 => \axi_spi_rd_dat_reg[0]_0\(1),
      I2 => axi_spi_rd_en,
      O => \axi_spi_rd_dat[14]_i_1_n_0\
    );
\axi_spi_rd_dat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(0),
      Q => D(0),
      R => '0'
    );
\axi_spi_rd_dat_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => addr(10),
      Q => D(10),
      R => \axi_spi_rd_dat[14]_i_1_n_0\
    );
\axi_spi_rd_dat_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => addr(11),
      Q => D(11),
      R => \axi_spi_rd_dat[14]_i_1_n_0\
    );
\axi_spi_rd_dat_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => addr(12),
      Q => D(12),
      R => \axi_spi_rd_dat[14]_i_1_n_0\
    );
\axi_spi_rd_dat_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => addr(13),
      Q => D(13),
      R => \axi_spi_rd_dat[14]_i_1_n_0\
    );
\axi_spi_rd_dat_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => addr(14),
      Q => D(14),
      R => \axi_spi_rd_dat[14]_i_1_n_0\
    );
\axi_spi_rd_dat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(1),
      Q => D(1),
      R => '0'
    );
\axi_spi_rd_dat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(2),
      Q => D(2),
      R => '0'
    );
\axi_spi_rd_dat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(3),
      Q => D(3),
      R => '0'
    );
\axi_spi_rd_dat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(4),
      Q => D(4),
      R => '0'
    );
\axi_spi_rd_dat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(5),
      Q => D(5),
      R => '0'
    );
\axi_spi_rd_dat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(6),
      Q => D(6),
      R => '0'
    );
\axi_spi_rd_dat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => axi_spi_rd_dat(7),
      Q => D(7),
      R => '0'
    );
\axi_spi_rd_dat_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => addr(8),
      Q => D(8),
      R => \axi_spi_rd_dat[14]_i_1_n_0\
    );
\axi_spi_rd_dat_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_spi_rd_en,
      D => addr(9),
      Q => D(9),
      R => \axi_spi_rd_dat[14]_i_1_n_0\
    );
axi_spi_rd_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_spi_rd_en,
      Q => E(0),
      R => '0'
    );
cs_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cs_sel_reg_0,
      Q => \^cs_sel\,
      R => '0'
    );
en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => en_reg_1,
      Q => \^en_reg_0\,
      R => '0'
    );
rw_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rw_en_reg_1,
      Q => \^rw_en_reg_0\,
      R => SR(0)
    );
u_spi_master_ctrl: entity work.design_1_axi_spi_master_0_0_spi_master_ctrl
     port map (
      D(7 downto 0) => axi_spi_rd_dat(7 downto 0),
      Q(0) => \FSM_onehot_cs_reg[2]\(0),
      SR(0) => SR(0),
      \axi_spi_rd_dat_reg[0]\(1 downto 0) => \axi_spi_rd_dat_reg[0]_0\(1 downto 0),
      \axi_spi_rd_dat_reg[2]\ => \^rw_en_reg_0\,
      \axi_spi_rd_dat_reg[3]\ => \^cs_sel\,
      en_d_reg_0 => \^en_reg_0\,
      \rw_addr_reg[14]_0\(14 downto 0) => addr(14 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      spi_clk => spi_clk,
      spi_csn => spi_csn,
      spi_csn1 => spi_csn1,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      \wr_data_d_reg[7]_0\(7 downto 0) => wr_data(7 downto 0)
    );
\wr_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(0),
      Q => wr_data(0),
      R => '0'
    );
\wr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(1),
      Q => wr_data(1),
      R => '0'
    );
\wr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(2),
      Q => wr_data(2),
      R => '0'
    );
\wr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(3),
      Q => wr_data(3),
      R => '0'
    );
\wr_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(4),
      Q => wr_data(4),
      R => '0'
    );
\wr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(5),
      Q => wr_data(5),
      R => '0'
    );
\wr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(6),
      Q => wr_data(6),
      R => '0'
    );
\wr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_data_0,
      D => \addr_reg[14]_0\(7),
      Q => wr_data(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_spi_master_0_0_axi_spi_master is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arready_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    spi_sdio_t : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \wready_reg[0]\ : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    spi_csn : out STD_LOGIC;
    spi_csn1 : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    spi_miso : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end design_1_axi_spi_master_0_0_axi_spi_master;

architecture STRUCTURE of design_1_axi_spi_master_0_0_axi_spi_master is
  signal axi_spi_rd_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_spi_rd_en : STD_LOGIC;
  signal axi_spi_rd_vld : STD_LOGIC;
  signal axi_spi_wr_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_spi_wr_vld : STD_LOGIC;
  signal axil_wvalid1 : STD_LOGIC;
  signal cs_sel : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_1 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_10 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_11 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_12 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_13 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_14 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_15 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_16 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_17 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_18 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_19 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_2 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_20 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_21 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_7 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_8 : STD_LOGIC;
  signal u_axi_spi_master_ctrl_n_9 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_11 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_12 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_13 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_14 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_15 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_16 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_17 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_18 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_19 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_20 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_21 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_23 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_24 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_25 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_26 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_27 : STD_LOGIC;
  signal u_s_axi_lite_reg_n_8 : STD_LOGIC;
begin
u_axi_spi_master_ctrl: entity work.design_1_axi_spi_master_0_0_axi_spi_master_ctrl
     port map (
      D(14) => u_axi_spi_master_ctrl_n_7,
      D(13) => u_axi_spi_master_ctrl_n_8,
      D(12) => u_axi_spi_master_ctrl_n_9,
      D(11) => u_axi_spi_master_ctrl_n_10,
      D(10) => u_axi_spi_master_ctrl_n_11,
      D(9) => u_axi_spi_master_ctrl_n_12,
      D(8) => u_axi_spi_master_ctrl_n_13,
      D(7) => u_axi_spi_master_ctrl_n_14,
      D(6) => u_axi_spi_master_ctrl_n_15,
      D(5) => u_axi_spi_master_ctrl_n_16,
      D(4) => u_axi_spi_master_ctrl_n_17,
      D(3) => u_axi_spi_master_ctrl_n_18,
      D(2) => u_axi_spi_master_ctrl_n_19,
      D(1) => u_axi_spi_master_ctrl_n_20,
      D(0) => u_axi_spi_master_ctrl_n_21,
      E(0) => axi_spi_rd_vld,
      \FSM_onehot_cs_reg[2]\(0) => spi_sdio_t,
      Q(1 downto 0) => axi_spi_wr_addr(1 downto 0),
      SR(0) => axil_wvalid1,
      \addr_reg[14]_0\(14) => u_s_axi_lite_reg_n_11,
      \addr_reg[14]_0\(13) => u_s_axi_lite_reg_n_12,
      \addr_reg[14]_0\(12) => u_s_axi_lite_reg_n_13,
      \addr_reg[14]_0\(11) => u_s_axi_lite_reg_n_14,
      \addr_reg[14]_0\(10) => u_s_axi_lite_reg_n_15,
      \addr_reg[14]_0\(9) => u_s_axi_lite_reg_n_16,
      \addr_reg[14]_0\(8) => u_s_axi_lite_reg_n_17,
      \addr_reg[14]_0\(7) => u_s_axi_lite_reg_n_18,
      \addr_reg[14]_0\(6) => u_s_axi_lite_reg_n_19,
      \addr_reg[14]_0\(5) => u_s_axi_lite_reg_n_20,
      \addr_reg[14]_0\(4) => u_s_axi_lite_reg_n_21,
      \addr_reg[14]_0\(3) => p_0_in,
      \addr_reg[14]_0\(2) => u_s_axi_lite_reg_n_23,
      \addr_reg[14]_0\(1) => u_s_axi_lite_reg_n_24,
      \addr_reg[14]_0\(0) => u_s_axi_lite_reg_n_25,
      \axi_spi_rd_dat_reg[0]_0\(1 downto 0) => axi_spi_rd_addr(1 downto 0),
      axi_spi_rd_en => axi_spi_rd_en,
      axi_spi_wr_vld => axi_spi_wr_vld,
      cs_sel => cs_sel,
      cs_sel_reg_0 => u_s_axi_lite_reg_n_27,
      en_reg_0 => u_axi_spi_master_ctrl_n_1,
      en_reg_1 => u_s_axi_lite_reg_n_8,
      rw_en_reg_0 => u_axi_spi_master_ctrl_n_2,
      rw_en_reg_1 => u_s_axi_lite_reg_n_26,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      spi_clk => spi_clk,
      spi_csn => spi_csn,
      spi_csn1 => spi_csn1,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi
    );
u_s_axi_lite_reg: entity work.design_1_axi_spi_master_0_0_s_axi_lite_reg
     port map (
      D(14) => u_axi_spi_master_ctrl_n_7,
      D(13) => u_axi_spi_master_ctrl_n_8,
      D(12) => u_axi_spi_master_ctrl_n_9,
      D(11) => u_axi_spi_master_ctrl_n_10,
      D(10) => u_axi_spi_master_ctrl_n_11,
      D(9) => u_axi_spi_master_ctrl_n_12,
      D(8) => u_axi_spi_master_ctrl_n_13,
      D(7) => u_axi_spi_master_ctrl_n_14,
      D(6) => u_axi_spi_master_ctrl_n_15,
      D(5) => u_axi_spi_master_ctrl_n_16,
      D(4) => u_axi_spi_master_ctrl_n_17,
      D(3) => u_axi_spi_master_ctrl_n_18,
      D(2) => u_axi_spi_master_ctrl_n_19,
      D(1) => u_axi_spi_master_ctrl_n_20,
      D(0) => u_axi_spi_master_ctrl_n_21,
      E(0) => axi_spi_rd_vld,
      Q(0) => Q(0),
      SR(0) => axil_wvalid1,
      \arready_reg[2]_0\(0) => \arready_reg[2]\(0),
      axi_spi_rd_en => axi_spi_rd_en,
      axi_spi_wr_vld => axi_spi_wr_vld,
      cs_sel => cs_sel,
      en_reg => u_s_axi_lite_reg_n_8,
      en_reg_0 => u_axi_spi_master_ctrl_n_1,
      \o_reg_rd_addr_reg[1]_0\(1 downto 0) => axi_spi_rd_addr(1 downto 0),
      \o_reg_wr_addr_reg[1]_0\(1 downto 0) => axi_spi_wr_addr(1 downto 0),
      \o_reg_wr_dat_reg[14]_0\(14) => u_s_axi_lite_reg_n_11,
      \o_reg_wr_dat_reg[14]_0\(13) => u_s_axi_lite_reg_n_12,
      \o_reg_wr_dat_reg[14]_0\(12) => u_s_axi_lite_reg_n_13,
      \o_reg_wr_dat_reg[14]_0\(11) => u_s_axi_lite_reg_n_14,
      \o_reg_wr_dat_reg[14]_0\(10) => u_s_axi_lite_reg_n_15,
      \o_reg_wr_dat_reg[14]_0\(9) => u_s_axi_lite_reg_n_16,
      \o_reg_wr_dat_reg[14]_0\(8) => u_s_axi_lite_reg_n_17,
      \o_reg_wr_dat_reg[14]_0\(7) => u_s_axi_lite_reg_n_18,
      \o_reg_wr_dat_reg[14]_0\(6) => u_s_axi_lite_reg_n_19,
      \o_reg_wr_dat_reg[14]_0\(5) => u_s_axi_lite_reg_n_20,
      \o_reg_wr_dat_reg[14]_0\(4) => u_s_axi_lite_reg_n_21,
      \o_reg_wr_dat_reg[14]_0\(3) => p_0_in,
      \o_reg_wr_dat_reg[14]_0\(2) => u_s_axi_lite_reg_n_23,
      \o_reg_wr_dat_reg[14]_0\(1) => u_s_axi_lite_reg_n_24,
      \o_reg_wr_dat_reg[14]_0\(0) => u_s_axi_lite_reg_n_25,
      \o_reg_wr_dat_reg[1]_0\ => u_s_axi_lite_reg_n_26,
      \o_reg_wr_dat_reg[3]_0\ => u_s_axi_lite_reg_n_27,
      rw_en_reg => u_axi_spi_master_ctrl_n_2,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(14 downto 0) => s00_axi_rdata(14 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(14 downto 0) => s00_axi_wdata(14 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \wready_reg[0]_0\ => \wready_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_spi_master_0_0 is
  port (
    spi_csn : out STD_LOGIC;
    spi_csn1 : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_miso : in STD_LOGIC;
    spi_sdio_t : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_spi_master_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_spi_master_0_0 : entity is "design_1_axi_spi_master_0_0,axi_spi_master,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_spi_master_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_spi_master_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_spi_master_0_0 : entity is "axi_spi_master,Vivado 2022.2";
end design_1_axi_spi_master_0_0;

architecture STRUCTURE of design_1_axi_spi_master_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute X_INTERFACE_PARAMETER of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_axi_spi_master_0_0_spi_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14 downto 0) <= \^s00_axi_rdata\(14 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axi_spi_master_0_0_axi_spi_master
     port map (
      Q(0) => s00_axi_awready,
      \arready_reg[2]\(0) => s00_axi_arready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(14 downto 0) => \^s00_axi_rdata\(14 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(14 downto 0) => s00_axi_wdata(14 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      spi_clk => spi_clk,
      spi_csn => spi_csn,
      spi_csn1 => spi_csn1,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_sdio_t => spi_sdio_t,
      \wready_reg[0]\ => s00_axi_wready
    );
end STRUCTURE;
