`timescale 1ns/1ns

module muon_counter_2(
    input wire clk,          // Clock input
    input wire reset,        // Reset input
    input wire signal_in,    // Continuous digital signal input
    input wire [5:0] switch,
    output wire [7:0] ld,
    output wire [17:0] count, // Output count of high logic signals (up to 32 bits)
    output wire [7:0] count0,
    output wire [7:0] count1,
    output wire [7:0] count2,
    output wire [7:0] count3,
    output wire [7:0] count4,
    output wire [7:0] count5,
    output wire [7:0] count6,
    output wire [7:0] count7,
    output wire [7:0] count8,
    output wire [7:0] count9,
    output wire [7:0] count10,
    output wire [7:0] count11,
    output wire [7:0] count12,
    output wire [7:0] count13,
    output wire [7:0] count14,
    output wire [7:0] count15,
    output wire [7:0] count16,
    output wire [7:0] count17,
    output wire [7:0] count18,
    output wire [7:0] count19,
    output wire [7:0] count20,
    output wire [7:0] count21,
    output wire [7:0] count22,
    output wire [7:0] count23,
    output wire [7:0] count24,
    output wire [7:0] count25,
    output wire [7:0] count26,
    output wire [7:0] count27,
    output wire [7:0] count28,
    output wire [7:0] count29,
    output wire [7:0] count30,
    output wire [7:0] count31,
    output wire [7:0] count32,
    output wire [7:0] count33,
    output wire [7:0] count34,
    output wire [7:0] count35,
    output wire [7:0] count36,
    output wire [7:0] count37,
    output wire [7:0] count38,
    output wire [7:0] count39,
    output wire [7:0] count40,
    output wire [7:0] count41,
    output wire [7:0] count42,
    output wire [7:0] count43,
    output wire [7:0] count44,
    output wire [7:0] count45,
    output wire [7:0] count46,
    output wire [7:0] count47,
    output wire [7:0] count48,
    output wire [7:0] count49
);

reg [7:0] led;
reg [17:0] counter; // 32-bit counter to store the count
reg [7:0] counter0;
reg [7:0] counter1;
reg [7:0] counter2;
reg [7:0] counter3;
reg [7:0] counter4;
reg [7:0] counter5;
reg [7:0] counter6;
reg [7:0] counter7;
reg [7:0] counter8;
reg [7:0] counter9;
reg [7:0] counter10;
reg [7:0] counter11;
reg [7:0] counter12;
reg [7:0] counter13;
reg [7:0] counter14;
reg [7:0] counter15;
reg [7:0] counter16;
reg [7:0] counter17;
reg [7:0] counter18;
reg [7:0] counter19;
reg [7:0] counter20;
reg [7:0] counter21;
reg [7:0] counter22;
reg [7:0] counter23;
reg [7:0] counter24;
reg [7:0] counter25;
reg [7:0] counter26;
reg [7:0] counter27;
reg [7:0] counter28;
reg [7:0] counter29;
reg [7:0] counter30;
reg [7:0] counter31;
reg [7:0] counter32;
reg [7:0] counter33;
reg [7:0] counter34;
reg [7:0] counter35;
reg [7:0] counter36;
reg [7:0] counter37;
reg [7:0] counter38;
reg [7:0] counter39;
reg [7:0] counter40;
reg [7:0] counter41;
reg [7:0] counter42;
reg [7:0] counter43;
reg [7:0] counter44;
reg [7:0] counter45;
reg [7:0] counter46;
reg [7:0] counter47;
reg [7:0] counter48;
reg [7:0] counter49;
integer a=0,b=0,c=0;

always @(posedge clk or negedge reset) begin
	case(switch)
	6'b000000: led = count0;
	6'b000001: led = count1;
	6'b000010: led = counter2;
	6'b000011: led = counter3;
	6'b000100: led = counter4;
	6'b000101: led = counter5;
	6'b000110: led = counter6;
	6'b000111: led = counter7;
	6'b001000: led = counter8;
	6'b001001: led = counter9;
	6'b001010: led = counter10;
	6'b001011: led = counter11;
	6'b001100: led = counter12;
	6'b001101: led = counter13;
	6'b001110: led = counter14;
	6'b001111: led = counter15;
	6'b010000: led = counter16;
	6'b010001: led = counter17;
	6'b010010: led = counter18;
	6'b010011: led = counter19;
	6'b010100: led = counter20;
	6'b010101: led = counter21;
	6'b010110: led = counter22;
	6'b010111: led = counter23;
	6'b011000: led = counter24;
	6'b011001: led = counter25;
	6'b011010: led = counter26;
	6'b011011: led = counter27;
	6'b011100: led = counter28;
	6'b011101: led = counter29;
	6'b011110: led = counter30;
	6'b011111: led = counter31;
	6'b100000: led = counter32;
	6'b100001: led = counter33;
	6'b100010: led = counter34;
	6'b100011: led = counter35;
	6'b100100: led = counter36;
	6'b100101: led = counter37;
	6'b100110: led = counter38;
	6'b100111: led = counter39;
	6'b101000: led = counter40;
	6'b101001: led = counter41;
	6'b101010: led = counter42;
	6'b101011: led = counter43;
	6'b101100: led = counter44;
	6'b101101: led = counter45;
	6'b101110: led = counter46;
	6'b101111: led = counter47;
	6'b110000: led = counter48;
	6'b110001: led = counter49;

   default: led = 8'b00000000; // Default case
   endcase
    if (!reset) begin
	if (b==0)begin
        counter <= 0; // Reset the counter when the reset signal is asserted
		  counter0 <= 0;
        counter1 <= 0;
        counter2 <= 0;
        counter3 <= 0;
        counter4 <= 0;
        counter5 <= 0;
        counter6 <= 0;
        counter7 <= 0;
        counter8 <= 0;
        counter9 <= 0;
        counter10 <= 0;
        counter11 <= 0;
        counter12 <= 0;
        counter13 <= 0;
        counter14 <= 0;
        counter15 <= 0;
        counter16 <= 0;
        counter17 <= 0;
        counter18 <= 0;
        counter19 <= 0;
        counter20 <= 0;
        counter21 <= 0;
        counter22 <= 0;
        counter23 <= 0;
        counter24 <= 0;
        counter25 <= 0;
        counter26 <= 0;
        counter27 <= 0;
        counter28 <= 0;
        counter29 <= 0;
        counter30 <= 0;
        counter31 <= 0;
        counter32 <= 0;
        counter33 <= 0;
        counter34 <= 0;
        counter35 <= 0;
        counter36 <= 0;
        counter37 <= 0;
        counter38 <= 0;
        counter39 <= 0;
        counter40 <= 0;
        counter41 <= 0;
        counter42 <= 0;
        counter43 <= 0;
        counter44 <= 0;
        counter45 <= 0;
        counter46 <= 0;
        counter47 <= 0;
        counter48 <= 0;
        counter49 <= 0;
	b=1;
	end
    end else begin
		
        if (signal_in) begin
		  #50
		  c=0;
		  for (a=0;a<500;a=a+1)begin
		  
		  if (signal_in & (c==0)) begin
		  counter <= counter + 1; // Increment counter on high logic signal
		  
		  if ((a<=9) & (a>=0)) begin counter0 <= counter0 + 1 ; end
		  else if ((a<=19) & (a>=10)) begin counter1 <= counter1 + 1 ; end
		  else if ((a<=29) & (a>=20)) begin counter2 <= counter2 + 1 ; end
		  else if ((a<=39) & (a>=30)) begin counter3 <= counter3 + 1 ; end
		  else if ((a<=49) & (a>=40)) begin counter4 <= counter4 + 1 ; end
		  else if ((a<=59) & (a>=50)) begin counter5 <= counter5 + 1 ; end
		  else if ((a<=69) & (a>=60)) begin counter6 <= counter6 + 1 ; end
		  else if ((a<=79) & (a>=70)) begin counter7 <= counter7 + 1 ; end
		  else if ((a<=89) & (a>=80)) begin counter8 <= counter8 + 1 ; end
		  else if ((a<=99) & (a>=90)) begin counter9 <= counter9 + 1 ; end
		  else if ((a<=109) & (a>=100)) begin counter10 <= counter10 + 1 ; end
		  else if ((a<=119) & (a>=110)) begin counter11 <= counter11 + 1 ; end
		  else if ((a<=129) & (a>=120)) begin counter12 <= counter12 + 1 ; end
		  else if ((a<=139) & (a>=130)) begin counter13 <= counter13 + 1 ; end
		  else if ((a<=149) & (a>=140)) begin counter14 <= counter14 + 1 ; end
		  else if ((a<=159) & (a>=150)) begin counter15 <= counter15 + 1 ; end
		  else if ((a<=169) & (a>=160)) begin counter16 <= counter16 + 1 ; end
		  else if ((a<=179) & (a>=170)) begin counter17 <= counter17 + 1 ; end
		  else if ((a<=189) & (a>=180)) begin counter18 <= counter18 + 1 ; end
		  else if ((a<=199) & (a>=190)) begin counter19 <= counter19 + 1 ; end
		  else if ((a<=209) & (a>=200)) begin counter20 <= counter20 + 1 ; end
		  else if ((a<=219) & (a>=210)) begin counter21 <= counter21 + 1 ; end
		  else if ((a<=229) & (a>=220)) begin counter22 <= counter22 + 1 ; end
		  else if ((a<=239) & (a>=230)) begin counter23 <= counter23 + 1 ; end
		  else if ((a<=249) & (a>=240)) begin counter24 <= counter24 + 1 ; end
		  else if ((a<=259) & (a>=250)) begin counter25 <= counter25 + 1 ; end
		  else if ((a<=269) & (a>=260)) begin counter26 <= counter26 + 1 ; end
		  else if ((a<=279) & (a>=270)) begin counter27 <= counter27 + 1 ; end
		  else if ((a<=289) & (a>=280)) begin counter28 <= counter28 + 1 ; end
		  else if ((a<=299) & (a>=290)) begin counter29 <= counter29 + 1 ; end
		  else if ((a<=309) & (a>=300)) begin counter30 <= counter30 + 1 ; end
		  else if ((a<=319) & (a>=310)) begin counter31 <= counter31 + 1 ; end
		  else if ((a<=329) & (a>=320)) begin counter32 <= counter32 + 1 ; end
		  else if ((a<=339) & (a>=330)) begin counter33 <= counter33 + 1 ; end
		  else if ((a<=349) & (a>=340)) begin counter34 <= counter34 + 1 ; end
		  else if ((a<=359) & (a>=350)) begin counter35 <= counter35 + 1 ; end
		  else if ((a<=369) & (a>=360)) begin counter36 <= counter36 + 1 ; end
		  else if ((a<=379) & (a>=370)) begin counter37 <= counter37 + 1 ; end
		  else if ((a<=389) & (a>=380)) begin counter38 <= counter38 + 1 ; end
		  else if ((a<=399) & (a>=390)) begin counter39 <= counter39 + 1 ; end
		  else if ((a<=409) & (a>=400)) begin counter40 <= counter40 + 1 ; end
		  else if ((a<=419) & (a>=410)) begin counter41 <= counter41 + 1 ; end
		  else if ((a<=429) & (a>=420)) begin counter42 <= counter42 + 1 ; end
		  else if ((a<=439) & (a>=430)) begin counter43 <= counter43 + 1 ; end
		  else if ((a<=449) & (a>=440)) begin counter44 <= counter44 + 1 ; end
		  else if ((a<=459) & (a>=450)) begin counter45 <= counter45 + 1 ; end
		  else if ((a<=469) & (a>=460)) begin counter46 <= counter46 + 1 ; end
		  else if ((a<=479) & (a>=470)) begin counter47 <= counter47 + 1 ; end
		  else if ((a<=489) & (a>=480)) begin counter48 <= counter48 + 1 ; end
		  else if ((a<=499) & (a>=490)) begin counter49 <= counter49 + 1 ; end
		  c=1;
		  
		  end
		  else begin
		  if (c==0) begin
		  #20;
		  end
		  end
		  end
        
        end
    end
	
end

assign ld = led;
assign count = counter;
assign count0 = counter0;
assign count1 = counter1;
assign count2 = counter2;
assign count3 = counter3;
assign count4 = counter4;
assign count5 = counter5;
assign count6 = counter6;
assign count7 = counter7;
assign count8 = counter8;
assign count9 = counter9;
assign count10 = counter10;
assign count11 = counter11;
assign count12 = counter12;
assign count13 = counter13;
assign count14 = counter14;
assign count15 = counter15;
assign count16 = counter16;
assign count17 = counter17;
assign count18 = counter18;
assign count19 = counter19;
assign count20 = counter20;
assign count21 = counter21;
assign count22 = counter22;
assign count23 = counter23;
assign count24 = counter24;
assign count25 = counter25;
assign count26 = counter26;
assign count27 = counter27;
assign count28 = counter28;
assign count29 = counter29;
assign count30 = counter30;
assign count31 = counter31;
assign count32 = counter32;
assign count33 = counter33;
assign count34 = counter34;
assign count35 = counter35;
assign count36 = counter36;
assign count37 = counter37;
assign count38 = counter38;
assign count39 = counter39;
assign count40 = counter40;
assign count41 = counter41;
assign count42 = counter42;
assign count43 = counter43;
assign count44 = counter44;
assign count45 = counter45;
assign count46 = counter46;
assign count47 = counter47;
assign count48 = counter48;
assign count49 = counter49;

endmodule
