library verilog;
use verilog.vl_types.all;
entity output_ports is
    port(
        clock           : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        writee          : in     vl_logic;
        reset           : in     vl_logic;
        port_out_00     : out    vl_logic_vector(7 downto 0);
        port_out_01     : out    vl_logic_vector(7 downto 0)
    );
end output_ports;
