Doing CSC 151 Work Remotely
===========================

There are four primary mechanisms for doing CSC 151 work remotely.

1. You can run a [virtual machine](../references/virtual-machine.html) 
   on your laptop.  A virtual machine is a simulated computer - it's
   like you have a Linux workstation running within your Mac or Windows
   computer.  This ends up being the most straightfoward approach.
   However, it does mean that you'll need to spend a little work
   transfering files back and forth from MathLAN.

2. You can connect to the workstation using a protocol called `ssh` (for
   "secure shell").  This approach is relatively straightforward for Mac
   and Linux users, and more complicated for Windows users.  Using ssh,
   all of your files are on the MathLAN, which is convenient.  However,
   the `ssh` approach doesn't always seem to work.

3. If you run Linux on your workstation, you can install the CSC 151
   software on your computer.  This requires some understanding of Linux
   system administration, and is not always reliable.  (We do this with
   Debian and Ubuntu regularly.)  Once again, you'll have to deal with
   the files residing on your computer, rather than on MathLAN.

4. You can use an application called [VNC](http://www.cs.grinnell.edu/vnc)
   to connect to the MathLAN.  This approach seems to work well for people
   who want to work with the MathLAN software and have limited bandwidth.
   However, it requires a lot of extra work to do securely.  It can
   pollute our workstations with running processes.  And our instructions
   are currently not very good.

The remaining sections of this document describe various OS/mechanism
combinations.  They currently appear in no particular order.  Note that
*none* of the CS faculty use Microsoft Windows, so we are much less
familiar with how well any of this works under Windows.  Windows users
should probably use the virtual machine.

Running a Virtual Machine on Mac, Windows, or Linux
---------------------------------------------------

Follow the [virtual machine instructions](../reference/virtual-machine.html)

Installing Software on Your Linux Workstation
---------------------------------------------

The instructions we use to set up the virtual machine are at
<https://github.com/GlimmerLabs/virtual-mediascheme/blob/master/Building.md>
You should probably do the parts labeled "More Things to Install" and
"Install the Mediascript Tools".

You should also learn how to transfer files between workstations.  The
`rsync` command, described in the
[virtual machine instructions](../reference/virtual-machine.html) will
work well.  (You can't use the shortcuts given in those instructions.)

Using ssh from a Mac or Linux Workstation
-----------------------------------------

These steps *should* work on most modern Macintosh and Linux workstations.

The steps below refer to `ssh.cs.grinnell.edu`.  Note that for the time
being, you should connect to a computer in Science 3813, rather than
`ssh.cs.grinnell.edu`.  You might, for example, use 
`backus`, `cocke`, `dahl`, `dodgson`, `fraenkel`, `gray`, `hartree`, `huffman`,
`jevons`, `kemeny`, `kilby`, `leibniz`, `newell`, `scheutz`, `shaw`,
`shockley`, `whitehead`, or `zuse`.  (All of those should be suffixed with
`.cs.grinnell.edu`)

1. Open a terminal window.

2. Type `ssh -X USERNAME@ssh.cs.grinnell.edu`.  Make sure to fill in
   your MathLAN username.

3. When prompted, type your MathLAN password.

4. Type `gimp &`.  Yes, you should include the ampersand.

5. Type `drracket &`.  Yes, you should include the ampersand.

6. Wait a little bit.  

7. Both DrRacket and GIMP should appear in new windows on your Mac.  
   Proceed as normal.  (Mac users will need to use the **control**
   key rather than the **command** key for DrRacket and GIMP.)

8. If DrRacket and GIMP don't appear, record what message you get and
   ask your professor.

When you are finished, make sure to quit DrRacket and GIMP.  Also, log
out in the terminal window and then close the terminal window.

Using ssh from a Microsoft Windows Workstation
----------------------------------------------

About a decade ago, a student wrote
[instructions](http://www.cs.grinnell.edu/~rebelsky/Glimmer/MediaScript/lubinski.txt)
for connecting from Windows computers using
[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) and
[Xming](http://sourceforge.net/projects/xming/).  Those are likely to
still work correctly.  If someone wants to write a simpler version of
those instructions, we'll put them here.

Using VNC Securely on Mac, Windows, or Linux
--------------------------------------------

Follow the [poorly written VNC instructions](http://www.cs.grinnell.edu/vnc)

Using VNC Insecurely on Windows
-------------------------------

You will need to install
[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) and
[VNC Viewer](https://www.realvnc.com/download/viewer/).

1. Using PuTTY, connect to one of the MathLAN machines mentioned above.
(In the future, this should be `ssh.cs.grinnell.edu`.  For now, it should
be `backus`, `cocke`, `dahl`, `dodgson`, `fraenkel`, `gray`, `hartree`,
`huffman`, `jevons`, `kemeny`, `kilby`, `leibniz`, `newell`, `scheutz`,
`shaw`, `shockley`, `whitehead`, or `zuse`.  (All of those should be
suffixed with `.cs.grinnell.edu`).  You may be asked to confirm that
you want to connect to that computer.  You will be prompted to enter your
MathLAN password.  

2. In your PuTTY terminal window, type `vncpasswd`.  It will prompt you
for a new passowrd.  This new password is only for VNC.  Enter a password
that others are unlikely to guess.  (Only the first eight characters 
are significant.)  Enter it again when prompted.

3. In your PuTTY terminal window, type `vncserver`.  It should start
a VNC server and give you a response something like the following

        New 'machine:2 (username)' desktop is machine:2
    
        Starting applications specified in /home/username/.vnc/xstartup
        Log file is /home/username/.vnc/machine:2.log

4. Make a note of the number after the colon.  That's called your
"desktop".  In the example response, the desktop is 2.

5. Start VNC Viewer.  It will prompt you for a machine.  Type
`MACHINE.cs.grinnell.edu:590x`, where `MACHINE` is the machine name
you used with PuTTY and `x` is the desktop number.  So, if I'd used
dahl and had desktop 2, I'd write `dahl.cs.grinnell.edu:5902`.  If
the desktop number is greater than 10, don't use the 0.  If the desktop
were 13, I'd write `dahl.cs.grinnell.edu:5913`.

6. A MathLAN-like window should appear with one terminal window.  

7. Start GIMP by typing `gimp &`.  

8. Start DrRacket by typing `drracket &`.

9. When you are done, quit GIMP, DrRacket, and VNC Viewer.

10. In terminal, type `vncserver -kill :x`, where `x` is your desktop
number.
