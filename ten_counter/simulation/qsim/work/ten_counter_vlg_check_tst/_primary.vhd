library verilog;
use verilog.vl_types.all;
entity ten_counter_vlg_check_tst is
    port(
        count           : in     vl_logic_vector(3 downto 0);
        cout            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ten_counter_vlg_check_tst;
