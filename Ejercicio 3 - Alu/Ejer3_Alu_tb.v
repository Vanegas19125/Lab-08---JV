module testBench();

    reg [3:0] A,B;
    reg [2:0] op;
    wire [3:0] salida;

    Alu #(4) alu(A,B,op,salida);

    initial begin
        $display("| Operacion |  A  |  B  | Resultado  ");
        $display("-------------------------------------");
        $monitor("|    %b    | %b|%b |  %b ",op,A,B,salida);
    end

    initial begin
        op=0; A=4'B1010; B=4'B1101;
        #1 B=4'B0000;
        #1 op = 1; A=4'B0101; B=4'B1010;
        #1 A=0;
        #1 op = 2; A=1;
        #1  B=7;
        #1  op=3;
        #1 op=4; B=0; A=15;
        #1 op=5;
        #1 A=0;
        #1 op = 6;A=5;B=3;
        #1 A=6;
        #1 op = 7;
        #1 A=1; B=2; 
        #1 A=4; B=7;
        #1 B=2;
        #2 $finish;
    end



endmodule