module Alu(input wire [3:0] A,B, input wire [2:0] operacion, output reg [3:0] sal  );

        always  @* begin
            case(operacion)

                3'b000: sal <=  A & B;
                3'b001: sal <=  A | B;
                3'b010: sal <=  A + B;
                3'b011: sal <= 0;
                3'b100: sal <= A & ~B;
                3'b101: sal <= A | ~B;
                3'b110: sal <= A - B;
                3'b111: sal <=   A<B;

            endcase
        end

endmodule