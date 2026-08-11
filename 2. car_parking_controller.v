module car_parking_controller (
    input  wire       clk,
    input  wire       reset,
    input  wire       car_enter,
    input  wire       car_exit,
    output reg  [3:0] count,
    output wire       full
);

    parameter MAX_CAPACITY = 8;

    assign full = (count == MAX_CAPACITY);

    always @(posedge clk) begin
        if (reset) begin
            count <= 4'd0;
        end
        else begin
            case ({car_enter, car_exit})

                2'b10: begin
                    // Car enters
                    if (count < MAX_CAPACITY)
                        count <= count + 1'b1;
                end

                2'b01: begin
                    // Car exits
                    if (count > 0)
                        count <= count - 1'b1;
                end

                2'b11: begin
                    // One car enters and one car exits
                    count <= count;
                end

                default: begin
                    count <= count;
                end

            endcase
        end
    end

endmodule