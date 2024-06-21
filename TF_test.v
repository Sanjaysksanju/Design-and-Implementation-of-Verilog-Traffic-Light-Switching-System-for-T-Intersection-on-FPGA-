module TF_design_tb;
    reg clk;
    reg rst;
    wire [2:0] led_M1;
    wire [2:0] led_MT;
    wire [2:0] led_M2;
    wire [2:0] led_S;
    
    // Instantiate the unit under test
    TF_design dut (
        .clk(clk),
        .rst(rst),
        .led_M1(led_M1),
        .led_MT(led_MT),
        .led_M2(led_M2),
        .led_S(led_S)
    );
    
    // Clock generator
    always #5 clk = ~clk;
    
    initial
    begin
        clk = 0;
        rst = 0;
        
        // Reset the design for a few clock cycles
        #10 rst = 1;
        #20 rst = 0;
        
        // Simulate ST1 state
        #70;
        
        // Simulate ST2 state
        #20_000_000;
        
        // Simulate ST3 state
        #50_000_000;
        
        // Simulate ST4 state
        #20_000_000;
        
        // Simulate ST5 state
        #30_000_000;
        
        // Simulate ST6 state
        #20_000_000;
        
        $finish;
    end
endmodule
