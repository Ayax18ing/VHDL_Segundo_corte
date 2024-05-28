library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_test is
port
	(
		-- Input ports
		clk		: in	std_logic;
		reset		: in	std_logic;
		writee	: in	std_logic;
		address	: in  std_logic_vector (7 downto 0);
		data_in	: in	std_logic_vector (7 downto 0);
		port_in_00	: in	std_logic_vector (7 downto 0);
		port_in_01	: in	std_logic_vector (7 downto 0);

		-- Output ports
		port_out_00	: out	std_logic_vector (7 downto 0);
		port_out_01	: out	std_logic_vector (7 downto 0);
		data_out_1	: out std_logic_vector (6 downto 0);
		data_out_2	: out std_logic_vector (6 downto 0);
		adres_1		: out std_logic_vector (6 downto 0);
		adres_2		: out std_logic_vector (6 downto 0)
	);
end memory_test;

architecture arch_memory_test of memory_test is
	
	Component BCD7Seg
		port
			(
				-- Input ports
				IA,IB, IC, ID : in STD_LOGIC;
				-- Output ports
				F : out std_logic_vector (6 downto 0)
			);
	end Component;
	
	Component memoria 
		port
			(
				-- Input ports
				clk		: in	std_logic;
				reset		: in	std_logic;
				writee	: in	std_logic;
				address	: in  std_logic_vector (7 downto 0);
				data_in	: in	std_logic_vector (7 downto 0);
				port_in_00	: in	std_logic_vector (7 downto 0);
				port_in_01	: in	std_logic_vector (7 downto 0);

				-- Output ports
				port_out_00	: out	std_logic_vector (7 downto 0);
				port_out_01	: out	std_logic_vector (7 downto 0);
				data_out	: out std_logic_vector (7 downto 0)
			);
		end Component;
	
	signal data_out : std_logic_vector (7 downto 0);
	
begin
	
	memoria_port	: 	memoria			port map (clk, reset, writee, address, data_in, port_in_00, port_in_01, port_out_00, port_out_01, data_out);
	
	ADDress_7Seg_1	:	BCD7Seg			port map (address(7), address(6), address(5), address(4), adres_1); -- Decenas
	ADDress_7Seg_2	:	BCD7Seg			port map (address(3), address(2), address(1), address(0), adres_2); -- Unidades
	
	DATA_OUT_7Seg_1:	BCD7Seg			port map (data_out(7), data_out(6), data_out(5), data_out(4), data_out_1); -- Decenas
	DATA_OUT_7Seg_2:	BCD7Seg			port map (data_out(3), data_out(2), data_out(1), data_out(0), data_out_2); -- Unidades

end arch_memory_test;
