# CS203

## Creating a Passcode Door Lock Using Digital Logic Design Concepts

In this project we will ask the user to enter a 4 digit passcode and check whether it is correct or incorrect. Depending on that we will give user the access or deny it.

Now as to explain how the code works:

First we have stored the correct passcode in a register as 4bit x 4bit RAM.
Next we ask the user to input the passcode and then we compare it with the original passcode. We store the input passcode in the same way we stored the original passcode, i.e. using register as 4x4 RAM.
In case of incorrect passcode message will be shown that the password entered is incorrect, else we check what is the command given by the user, if it is to unlock the door then we display the message that the door has been unlocked, else if the user wants to update the passcode we check whether the new password and its confirmatory password are same.
If new password and confirmatory password both are same then we update the password of doorlock and siplay a message telling that the password has been updated.
User will get the chance to input a new passcode attempt.

You will also be given the option to change a passcode in case you need that availability.
For this you will just need to switch the command to change passcode from unlock door.

Additionally you will get an option to reset the passcode, the lock then goes into store mode, which will ask you for a new passcode for the door.

There will also be a status indicator displaying whether the door is locked or unlocked or in store mode.
