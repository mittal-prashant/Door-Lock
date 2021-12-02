# DOOR LOCK

## Team members
Prashant Mittal - 2020CSB1113  
Anubhav Kataria - 2020CSB1073

## Teaching Assistant
Lalit Sharma

## Creating a Passcode Door Lock Using Digital Logic Design Concepts

In this project we have designed a Door Lock system in Verilog using Digital Logic Concepts.

## Functions Provided in Door Lock

1. Unlock the Door
2. Update the Passcode
3. Reset the Doorlock

##### Now as to explain how the code works:

First we have stored the correct passcode in a 4bit x 4bit RAM.
Next we ask the user to input a 4 digit passcode and then we compare it with the original passcode. We store the input passcode in the same way we stored the original passcode, i.e. using in a 4x4 RAM.
In case of incorrect passcode message will be shown that the password entered is incorrect, else we check what is the command given by the user.
If the command is to unlock the door then we display the message that the door has been unlocked.
If the user wants to update the passcode we check whether the new password and its confirmatory password are same or not.
If new password and confirmatory password both are same then we update the password of doorlock and display a message telling that the password has been update, else we display an ERROR that new password and confirmatory password are not same.

Additionally you will get an option to reset the passcode, the lock then goes into store mode, which will ask you for a new passcode for the door.

Every state of the door will be displayed as ouput, which will tell whether the door is locked or unlocked or is in store mode.
