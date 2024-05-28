library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
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
		data_out		: out std_logic_vector (7 downto 0)
	);
end memoria;

architecture arch_memoria of memoria is

	Component rw_96x8_sync
	port
		(	
			clock		: in std_logic;
			address 	: in std_logic_vector(7 downto 0);
			data_in 	: in std_logic_vector(7 downto 0);
			writee	: in std_logic;
			data_out	: out std_logic_vector(7 downto 0)
		);
	end Component;
	
	Component rom_128x8_sync
	port
		(
			-- Input ports
			address	: in  std_logic_vector (7 downto 0);
			clock		: in	std_logic;

			-- Output ports
			data_out	: out std_logic_vector (7 downto 0)
		);
	end Component;
	
	Component output_ports
	port
		(	
			clock	: in std_logic;
			address 	: in std_logic_vector(7 downto 0);
			data_in 	: in std_logic_vector(7 downto 0);
			writee	: in std_logic;
			reset : in std_logic;
			port_out_00: out std_logic_vector(7 downto 0);
			port_out_01: out std_logic_vector(7 downto 0)
		);
	end Component;
	
	Component BCD7Seg
		port
		(
			-- Input ports
			IA,IB, IC, ID : in STD_LOGIC;
			-- Output ports
			F : out std_logic_vector (6 downto 0)
		);
	end Component;

	signal rom_data_out : std_logic_vector (7 downto 0);
	signal rw_data_out  : std_logic_vector (7 downto 0);

begin

	MUX1 : process (address, rom_data_out, rw_data_out, port_in_00, port_in_01)
	begin
		if ( (to_integer(unsigned(address)) >= 0) and (to_integer(unsigned(address)) <= 127)) then
			data_out <= rom_data_out;
		elsif ( (to_integer(unsigned(address)) >= 128) and (to_integer(unsigned(address)) <= 223)) then
			data_out <= rw_data_out;
		elsif (address = x"E0") then 
			data_out <= port_in_00;
		elsif (address = x"E1") then 
			data_out <= port_in_01;
		end if;
	end process;
	
	ROM					:	rom_128x8_sync port map (address, clk, rom_data_out);
	RAM					:	rw_96x8_sync	port map	(clk, address, data_in, writee, rw_data_out);
	OUT_ports			:	output_ports	port map	(clk, address, data_in, writee, reset, port_out_00, port_out_01);

end arch_memoria;
