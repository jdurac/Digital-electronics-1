----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 12:16:47 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux_3bit_4to1 is
--  Port ( );
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is

 signal a_i           : std_logic_vector(2 downto 0);
 signal b_i           : std_logic_vector(2 downto 0);
 signal c_i           : std_logic_vector(2 downto 0);
 signal d_i           : std_logic_vector(2 downto 0);
 signal sel_i         : std_logic_vector(1 downto 0);
 signal f_o           : std_logic_vector(2 downto 0);

begin

p_stimulus : process
    begin
    
    a_i <= "111";
    b_i <= "101";
    c_i <= "110";
    d_i <= "001";
    
    
    report "Stimulus process started" severity note;
    
    sel_i <=  "00";
    wait for 100 ns;
    assert (f_o = "111") report "Fail sel 00" severity error;
    
    sel_i <=  "01";
    wait for 100 ns;
    assert (f_o = "111") report "Fail sel 01" severity error;
    
    sel_i <=  "10";
    wait for 100 ns;
    assert (f_o = "111") report "Fail sel 10" severity error;
    
    sel_i <=  "11";
    wait for 100 ns;
    assert (f_o = "111") report "Fail sel 11" severity error;
    
    
    end process p_stimulus;
end Behavioral;
