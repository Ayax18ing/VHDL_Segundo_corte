library verilog;
use verilog.vl_types.all;
entity memoria_vlg_check_tst is
    port(
        adres_1         : in     vl_logic_vector(6 downto 0);
        adres_2         : in     vl_logic_vector(6 downto 0);
        data_out_1      : in     vl_logic_vector(6 downto 0);
        data_out_2      : in     vl_logic_vector(6 downto 0);
        port_out_00     : in     vl_logic_vector(7 downto 0);
        port_out_01     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end memoria_vlg_check_tst;
