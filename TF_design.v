module TF_design (
    input wire clk,
    input wire rst,
    output reg [2:0] led_M1,
    output reg [2:0] led_MT,
    output reg [2:0] led_M2,
    output reg [2:0] led_S
);
    reg [2:0] state;
    reg [39:0] count;
    
    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            state <= 3'b000;
            count <= 40'd0;
            led_M1 <= 3'b0;
            led_M2 <= 3'b0;
            led_MT <= 3'b0;
            led_S <= 3'b0;
        end
        else
        begin
            count <= count + 1;
            
            case (state)
                3'b000: begin // ST1
                    led_M1 <= 3'b001;
                    led_M2 <= 3'b001;
                    led_MT <= 3'b100;
                    led_S <= 3'b100;
                    if (count >= 3_000_000_000) begin
                        state <= 3'b001;
                        count <= 40'd0;
                    end
                end
                
                3'b001: begin // ST2
                    led_M1 <= 3'b001;
                    led_M2 <= 3'b010;
                    led_MT <= 3'b100;
                    led_S <= 3'b100;
                    if (count >= 400_000_000) begin
                        state <= 3'b010;
                        count <= 40'd0;
                    end
                end
                
                3'b010: begin // ST3
                    led_M1 <= 3'b001;
                    led_M2 <= 3'b100;
                    led_MT <= 3'b001;
                    led_S <= 3'b100;
                    if (count >= 3_000_000_000) begin
                        state <= 3'b011;
                        count <= 40'd0;
                    end
                end
                
                3'b011: begin // ST4
                    led_M1 <= 3'b010;
                    led_M2 <= 3'b100;
                    led_MT <= 3'b010;
                    led_S <= 3'b100;
                    if (count >= 400_000_000) begin
                        state <= 3'b100;
                        count <= 40'd0;
                    end
                end
                
                3'b100: begin // ST5
                    led_M1 <= 3'b100;
                    led_M2 <= 3'b100;
                    led_MT <= 3'b100;
                    led_S <= 3'b001;
                    if (count >= 2_000_000_000) begin
                        state <= 3'b101;
                        count <= 40'd0;
                    end
                end
                
                3'b101: begin // ST6
                    led_M1 <= 3'b100;
                    led_M2 <= 3'b100;
                    led_MT <= 3'b100;
                    led_S <= 3'b010;
                    if (count >= 400_000_000) begin
                        state <= 3'b000;
                        count <= 40'd0;
                    end
                end
            endcase
        end
    end
endmodule
