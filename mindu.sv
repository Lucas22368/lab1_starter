// lab1
// ucsd CSE
// 1/13/2023
// starter code Bryan Chin, All rights reserved.
//
module minduDec (
		 output logic [6:0] Segments,  // seven segment signals
		 input logic [4:0]  binNum     // binary number [0-19]
   );

   // TODO-1: If the input BCM value (binNum) is more than 19,
   // TODO-1: display nothing on the 7-segment display.`
   // TODO-1: create some logic for Segments
   // TODO-1: Segments[0] is LED A, Segments[1] is LED B
   // TODO-1: Segements is active LOW.  That is an LED is on when
   // TODO-1: the corresponding signal is LOW.  An LED is off when
   // TODO-1: the corresponding signal is HIGH.
   // TDD0-1: 
   // TODO-1: if the binNum is not between 0 and 19 inclusive
   // TODO-1: all the Segment LEDs should be off.
   // TDD0-1: 
   // TODO-1: you can implement Segments using
   // TODO-1: behavioural system verilog
   // TODO-1: 
   // TODO-1: always_comb begin
   // TODO-1:     some kind of case statement as shown in class
   // TODO-1: end   // always_comb
   // TDD0-1: 
   // TODO-1: OR 
   // TODO-1:
   // TODO-1: you can implement
   // TODO-1: 7 assign statements, one for each LED
   // TODO-1: as either SOP or POS
   // TODO-1: as in 
   // TODO-1: assign Segment[0] =  (  ) + ( ) + . . .
   // TODO-1: the parentheses are not needed as & has higher precedence
   // TODO-1: than + 
   // TODO-1:
   // TODO-1: assign Segment[0]  = ( + + + + ) & ( +  +  +   + ) & . . .
   // TODO-1: the parentheses are required as + has lower precedence
   // TODO-1: than & 
   // TODO-1:
       always_comb begin
         case(binNum)
            5b'00000 : Segments = 7b'1000000
            5b'00001 : Segments = 7b'0000110
            5b'00010 : Segments = 7b'0111011
            5b'00011 : Segments = 7b'0110000
            5b'00100 : Segments = 7b'0011001
            5b'00101 : Segments = 7b'0010010
            5b'00110 : Segments = 7b'0000010
            5b'00111 : Segments = 7b'1111000
            5b'01000 : Segments = 7b'0000000
            5b'01001 : Segments = 7b'0011000
            5b'01010 : Segments = 7b'0001000
            5b'01011 : Segments = 7b'0000011
            5b'01100 : Segments = 7b'1000110
            5b'01101 : Segments = 7b'0100001
            5b'01110 : Segments = 7b'0000110
            5b'01111 : Segments = 7b'0001110
            5b'10000 : Segments = 7b'0010000
            5b'10001 : Segments = 7b'0001001
            5b'10010 : Segments = 7b'1111011
            5b'10011 : Segments = 7b'1100001
            default  : Segments = 7b'1111111
       end
endmodule
	

	
	
	
	
	
