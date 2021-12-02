// DOOR LOCK

// Group 34

// Prashant Mittal 2020CSB1113
// Anubhav Kataria 2020CSB1073

// Main module of Password Door Lock System

module door_lock(reset, password, newpass, confpass, command, cout);
  
  // original is an implementation of 4x4 RAM which stores the correct password of the door
  // The initial password of the door is 1234
  reg [0:3][0:3] original = {4'h1,4'h2,4'h3,4'h4};
  
  // reset is a 1 bit input which tells whether doorlock is in reset mode or not
  // 1 means doorlock is in reset mode
  input reset;
  
  // password is a 4x4 RAM which stores the input password given by the user
  input [0:3][0:3] password;
  
  // newpass is a 4x4 RAM which stores the password to be updated entered by the user
  input [0:3][0:3] newpass;
  
  // confpass is a 4x4 RAM which stores the password as confirm of the newpass entered by the user
  input [0:3][0:3] confpass;
  
  // command is a 1 bit input which tells whether we want to unlock the door or update the password
  // If command is 1 that means door has to be unlocked and if it is 0 password has to be updated
  input command;
  
  // cout is a 1 bit output that tells whether the door is in unlocked state or the locked state
  // If cout is 1 that means door is unlocked else locked
  output reg cout = 0;
  
  // All the password checking, reseting and updating is done inside the always block
  always @(*)
    
    begin
      
      // Making cout 0 because initially the door is locked
      cout = 0;
      
      if(reset)
        
        begin
          
          // If reset is is 1 then the password changes to the original password entered by the user
          original = password;
          $display("Reset Mode");
          
          // Here the door lock went in reset mode and password was changed
          
        end
      
      else 
        
        begin
          
          // If reset is zero we check whether the entered password is correct or not
          if(password == original)  
            
            begin
              
			  // If the password is correct we check what is the command given by the user
              if(command) 
                
                begin
                  
				  // If command is 1 then the door has been unlocked
                  // it is displayed that the door has been unlocked
                  $display("Door Unlocked");
                  
                  // Making cout 1 because the door has been unlocked
                  cout = 1;
                  
                  // Here the door has been unlocked
                  
                end
              
              else
                
                begin
                  
                  // Else if command is 0 then it means the user wants to reset the password
                  if(newpass == confpass) 
                    
                    begin
                      
                      // If confpass is same as newpass then then it can update the original password
                      // Changing the original password to newpass
                      original = newpass; 
                      
                      // Printing that the doorlock has been updated
					  $display("Password Updated");
                      
                      // Here the password has been updated to the new one 
                      
                    end
                                   
                  else 
                    
                    begin
                      
                      // If new password and confirmatory password does not match an error is thrown
                      $display("Error! Password Didn't Match"); // ERROR
                      
                      // Here it tells that new password and confirmatory password doesn't match
                      
                    end
                  
                end
              
            end
          
          else 
            
            begin
              
              // If user has enter wrong password an error is thrown
              $display("Wrong Password"); // ERROR
              
              // Here the password entered was incorrect and hence ERROR was displayed
              
            end 
          
        end
      
    end
  
endmodule
