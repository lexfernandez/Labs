`timescale 1ns / 1ps

`define EOF 32'hFFFF_FFFF
`define NEWLINE 10
`define NULL 0

module RegisterFile_tb;

	// Inputs
	reg [1:0] read_addr1;
	reg [1:0] read_addr2;
	reg [1:0] write_addr;
	reg [7:0] write_data;
	reg clk;
	reg write_enable;

	// Outputs
	wire [7:0] read_data1;
	wire [7:0] read_data2;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile myRegfile (
		read_addr1, 
		read_addr2, 
		write_addr, 
		write_data, 
		clk, 
		write_enable, 
		read_data1, 
		read_data2
	);   
	   
   integer file, char, retval;
   reg[15:0] expectedValue1;
	reg[15:0] expectedValue2;
	
	always #5 clk <= ~clk;

	initial begin

	// Initialize Inputs
	read_addr1 = 0;
	read_addr2 = 0;
	write_addr = 0;
	write_enable = 0;
	write_data = 0;
	clk = 0;
	

	// open the test inputs
	file = $fopen("lab6.input.test", "r");
	if (file == `NULL)      
        	$finish;

	// Wait 100 ns for global reset to finish
	#100;

	char = $fgetc(file);
	while (char != `EOF)
        begin
                  
        if (char == "#")  // eat a comment line
            begin
            while (char != `NEWLINE)
               begin
               char = $fgetc(file);
               end
            end
        else
          
            begin
            
            retval = $ungetc(char, file); // push back the non-comment char
            
            #1
            retval = $fscanf(file, "%b %b %b %b %d %d %d", read_addr1, read_addr2, write_addr, write_enable, write_data, expectedValue1, expectedValue2);          
            #8 //once every clock cycle


				if(0==write_enable)
				begin
					if (read_data1 != expectedValue1)
               begin
               $display("Error: Value of register %b on output 1 should have been %d, but was %d instead",read_addr1, expectedValue1,read_data1 );
               end
					if (read_data2 != expectedValue2)
               begin
               $display("Error: Value of register %b on output 2 should have been %d, but was %d instead",read_addr2, expectedValue2,read_data2 );
               end
				end
            
	
            #1
            char = $fgetc(file);
            
            end
         end // end while

        $fclose(file);
        $finish;
	end

	

	initial begin
		// Initialize Inputs
		read_addr1 = 2'b00;
		read_addr2 = 2'b10;
		write_addr = 2'b00;
		write_data = 10;
		clk = 0;
		write_enable = 1;

		// Wait 100 ns for global reset to finish
		repeat(4)
		begin
		 clk = ~clk;
		 clk = ~clk;
		 #100;
		 write_data = write_data+1;
		 write_addr= write_addr+1;
		end
		
		write_enable=0;
		#100;
		
		read_addr1 = 2'b00;
		read_addr2 = 2'b10;
		#100;
		read_addr1 = 2'b01;
		read_addr2 = 2'b11;
		
        
		// Add stimulus here

	end
      
endmodule

