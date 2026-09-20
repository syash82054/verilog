library ieee;
use ieee.std_logic_1164.all;

--	MODEL FOR INV_GATE
entity inv_gate is
port(B: out std_logic; A: in std_logic);
end inv_gate;

architecture Boolean_Equation of inv_gate is
begin
B <= not A;
end Boolean_Equation;

--MODEL FOR NAND GATE
entity nand3_gate is 
port(D: out std_logic; A,B,C: in std_logic);
end nand3_gate;

architecture Boolean_Eq of nand3_gate is
begin
D <= not(A and B and C);
end Boolean_Eq;

--GATE LEVEL DESCRIPTION OF TWO TO FOUR LINE DECODER
entity decoder_2x4_gates_vhdl is 
port(A,B,enable : in std_logic; D: out std_logic_vector range 0 to 3);
end decoder_2x4_gates_vhdl;

architecture Structure of decoder_2x4_gates_vhdl is
--identify components and ports
component inv_gate
port(B: out std_logic;A: in std_logic);
end component;

component nand3_gate
port(D: out std_logic; A,B,C: in std_logic);
end component;

signal A_not,B_not,enable_not: --internal signal - wire
begin --//initiate components and connect ports via port maps
g1: inv_gate port map(A_not,A);
g2: inv_gate port map(B_not,B);
g3: inv_gate port map(C_not,C);

g4: nand3_gate port map(D(0), A_not,B_not,enable_not);
g5: nand3_gate port map(D(1), A_not, B,enable_not);
g6: nand3_gate port map(D(2), A,B_not,enable_not);
g7: nand3_gate port map(D(3), A,B,enable_not);

end Structure;
