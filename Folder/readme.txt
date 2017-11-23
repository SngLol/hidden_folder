When opening "0.bat" the folder "Hide" should dissapear.
If the folder already is hidden, you will have to type
in your chosen password for the folder.
If you havn't chosen a password, default is "1234".

When the folder is unlocked, you should open "p.txt"
and "n.txt" whitch exists within the folder.

Edit "p.txt" to whatever password you desire, but note
that your password should only contain characters such as
letters and numbers. Characters such as underscore (_)
and slash (/) will confuse the program, therefor it will fail.

Edit "n.txt" to whatever folder name you desire.
Folder names shall not contain spaces nor any of the following:
\/:*?"<>|

Exception: underscore and slash will work in some cases
but you sould not use any other characters as it could
result in loss of the folder.

If "p.txt" simply does not exist, you should create it yourself.
If it is not named "p" the program will fail.

If "p.txt" did not exist and you locked the folder anyways
the program will fail upon unlocking.

When the program fails it makes sure to unlock the folder
before exit to pervent loss of the folder.

If the program fails upon entering the password,
the folder will unlock no matter the password.

The program only fails when the conditions mentioned
above are fulfilled.
For example: If the password is 12_ab, the program fails,
meaning that the folder will unlock if 97gc is typed in
as the password.
This also applies to when "p.txt" does not exist.

If the program says "Access denied" at any point,
simply rename the folder which is supposed to get locked.
When unlocking, its name should return to that which has been
entered in "n.txt".

IMPORTANT:
This folder shall only contain 0.bat and the hidden folder!
Delete this file to pervent others from successfully using
this program.
