library verilog;
use verilog.vl_types.all;
entity ten_counter is
    port(
        cout            : out    vl_logic;
        CLR             : in     vl_logic;
        CLK             : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0)
    );
end ten_counter;
