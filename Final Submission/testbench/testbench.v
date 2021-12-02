module doorlock();

  reg r;
  
  reg [0:3][0:3] p;
  
  reg [0:3][0:3] p1;
  
  reg [0:3][0:3] p2;
  
  reg c;
  
  wire cout;
  
  // r is to reset the password
  // p is the entered password
  // p1 stores new password to be changed
  // p2 stores confirmed new password
  // c is command to change or unlock the door
  // cout tells whether door is locked or unlocked
  
  door_lock d1(
    .reset(r), 
    .password(p),
    .newpass(p1),
    .confpass(p2),
    .command(c), 
    .cout(cout)
  );

	initial
      begin
        
		r = 0;
        p = {4'h1, 4'h2, 4'h3, 4'h4};
		c = 1;
		#100;

		r = 1;
        p = {4'h2, 4'h2, 4'h0, 4'h7};
        c = 1;
		#100;

		r = 0;
        p = {4'h2, 4'h2, 4'h0, 4'h7};
		c = 1;
		#100;

		r = 0;
		p = {4'h6, 4'h7, 4'h0, 4'h7};
		c = 1;
		#100;

		r = 0;
        p = {4'h2, 4'h2, 4'h0, 4'h7};
		c = 0;
        p1 = {4'h9, 4'h3, 4'h6, 4'h5};
        p2 = {4'h4, 4'h9, 4'h1, 4'h3};
		#100;

		r = 0;
        p = {4'h2, 4'h2, 4'h0, 4'h7};
		c = 0;
        p1 = {4'h4, 4'h9, 4'h1, 4'h3};
        p2 = {4'h4, 4'h9, 4'h1, 4'h3};
		#100;

		r = 0;
		p = {4'h4, 4'h9, 4'h1, 4'h3};
		c = 1;
		#100;

		r = 1;
		p = {4'h4, 4'h9, 4'h1, 4'h3};
        c = 1;
		#100;

		r = 1;
		p = {4'h6, 4'h1, 4'h2, 4'h6};
        c = 1;
		#100;

		r = 0;
		p = {4'h6, 4'h1, 4'h2, 4'h6};
		c = 1;
		#100;

		r = 0;
		p = {4'h9, 4'h6, 4'h4, 4'h6};
		c = 0;
        p1 = {4'h9, 4'h6, 4'h4, 4'h6};
        p2 = {4'h9, 4'h6, 4'h4, 4'h6};
		#100;

		r = 0;
        p = {4'h9, 4'h6, 4'h4, 4'h5};
		c = 1;
		#100;

		r = 0;
		p = {4'h6, 4'h1, 4'h2, 4'h6};
		c = 1;
		#100;

		r = 0;
		p = {4'h9, 4'h2, 4'h4, 4'h5};
		c = 1;
		#100;

		r = 1;
		p = {4'h2, 4'h4, 4'h1, 4'h6};
        c = 1;
		#100;

		r = 0;
        p = {4'h1, 4'h4, 4'h1, 4'h6};
		c = 1;
		#100;

		r = 0;
        p = {4'h2, 4'h4, 4'h1, 4'h6};
		c = 0;
        p1 = {4'h1, 4'h9, 4'h6, 4'h7};
        p2 = {4'h1, 4'h9, 4'h6, 4'h7};
		#100;

		r = 0;
		p = {4'h1, 4'h9, 4'h6, 4'h7};
		c = 1;
		#100;


        
	end
      
  initial
    begin
      $dumpfile("doorlock.vcd");
      $dumpvars;
      
    end
endmodule
