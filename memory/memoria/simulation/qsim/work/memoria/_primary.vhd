library verilog;
use verilog.vl_types.all;
entity memoria is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        writee          : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        port_in_00      : in     vl_logic_vector(7 downto 0);
        port_in_01      : in     vl_logic_vector(7 downto 0);
        port_out_00     : out    vl_logic_vector(7 downto 0);
        port_out_01     : out    vl_logic_vector(7 downto 0);
        data_out_1      : out    vl_logic_vector(6 downto 0);
        data_out_2      : out    vl_logic_vector(6 downto 0);
        adres_1         : out    vl_logic_vector(6 downto 0);
        adres_2         : out    vl_logic_vector(6 downto 0)
    );
end memoria;
