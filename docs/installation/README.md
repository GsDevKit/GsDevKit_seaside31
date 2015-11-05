# GsDevKit With Seaside Installation Overview

GsDevKit is a client-server environment, involving a GUI development environment (tODE) based on Pharo, and a 
server (stone) based on GemStone/S 64 bit.  The Seaside project is loaded into the server stone; then a web server 
is started to serve Seaside pages.  You will use the tODE client to log into the seaside-enabled Stone, to develop
the Seaside code for your application.

The installation process involves cloning projects from github, downloading and 
configuring Pharo and GUI client components, and downloading, configuring, and starting the GemStone server 
(the stone process and supporting processes).  

If you have already installed GsDevKit_home, you do not need to repeat this; you can load the seaside31 project into your existing installation.  See [Instructions to load Seaside into existing GsDevKit][20].  The instructions that follow are for a new installation of GsDevKit for Seaside-based development.

There are some decisions about system topography that must be made before installing.

GsDevKit can be installed under three configurations.

(1) **Everything on a single workstation**.  Since this machine must already have a window manager in order to 
display the desktop, and since the GsDevKit installation can be shared, it is the simpliest approach.  

[Installation Instructions](#installation-on-a-single-desktop)

(2) **Client on a local workstation, Server on a remote host**. The GUI client (such as tODE in Pharo) on one 
workstation, connecting to a GsDevKit server installation on a separate node.  You will need to install twice, 
installing the client on one machine and the server on another machine.  The remote machine (or VM) does not need 
a window manager, e.g. a Linux server installation.  This is generally the solution if your desktop machine is 
running Windows. 

[Installation Instructions](#installation-on-separate-server-and-client)

(3) **Everything on a remote server, accessed via X-forwarding**. Both the GUI client and the server installed on 
a remote machine.  The remote machine does not need a window manager, but will need to have an X11 client installed.  
The local client desktop machine has a window manager (obviously) and will run an X11 server.  Using  ssh -X to connect 
to the remote machine allows the  GUI client to display on the local machine.  This approach may suffer from 
performance issues, even with ssh -X compression.  If you are familiar with cygwin or otherwise have an X11 server 
for windows,  this approach may be used from a Windows client machine; but this configuration is not included with 
these installation instructions. 

[Installation Instructions](#installation-on-a-remote-node-accessed-with-x-forwarding)

---
### Client and Server naming

To get started with GsDevKit, you will be installing a server and a client.  Since you can have multiple servers on 
the same node, or multiple clients, the clients and the servers (stones) are named.  In the examples, we use 
seaside_3210 for the name of the server (stone), and tode1 for the name of the tODE client. 

---

# Installation on a single desktop
You may install the client and server portions at the same time in a shared directory structure.
This can be done on Linux (desktop) or on Mac.

   1. Login to your desktop, and ensure that the required OS packages are installed.

      * **Linux**: [Configure Linux Desktop][1]

      * **Mac OS X**: [Configure Mac][2]

   2. Install the Seaside Server.  
    
      * [Install Seaside Server][3]
      
   4. [Verify the Web Server][14]

   3. Install the GsDevKit client.  This will create the tODE client, but not start it up.

      * [Install Client On Same Node][6]
      
   3. [Start Using tODE][14]

---
# Installation on separate server and client

The server may be installed on Linux or on Mac, and the client may be on Linux desktop, Mac, or Windows.

1. Log into the remote machine on which you will be installing the GsDevKit server, and configure the OS prerequisites specific to the Server.

    * **Linux**: [Configure Linux Server][4]   

    * **Mac OS X**: [Configure Mac][5]   

2. Also on the remote node, install the Seaside GsDevKit server. This will create and startup the stone (the GsDevkit 
server instance).

   * [Install Seaside Server][3]
   
4. [Verify the Web Server][14]

3. Log into the Desktop client, on which you will install the GsDevKit client, and configure the OS prerequities that are specific to the client.   
 
    * **Linux**: [Configure Linux Desktop][7]   
 
    * **Mac OS X**: [Configure Mac][8]   

    * **Windows**: [Configure Windows][9]   

4. Install the GsDevKit client.  This will create the tODE client, but not start it up.

    * [Install Client On Separate Node][10]

5. [Start Using tODE][13]
   
---
# Installation on a remote node accessed with X forwarding

Both GsDevKit components, client and server, are on the same node, which is generally a linux server (i.e, a linux installation with no Window Manager). This configuration in general will have performance issues, and one of the other configurations is recommended.  

You can connect using X-forwarding from a Linux desktop (that is, a Linux installation that includes a Window Manager), or from the Mac.  It is also possible to connect from a Windows desktop by installing cygwin or another application that provides an X11-server, but this is outside the scope of these instructions.

   1. Login to the remote linux server node, and install the OS rerequsites for both Client and Server (other than the display related requirements).

      * **Linux**: [Configure Linux Server][11]

   2. Install the Seaside Server.  This will create the stone and Netldi and start them up.
    
      * [Install Seaside Server][3]

   4. [Verify the Web Server][14]

   3. Install the GsDevKit client on the same node.  This will create the tODE client, but not start it up.

      * [Install Client on Same Node][6]

   3. On the desktop, install any required OS add-ons:
   
       * **Linux**: no action required, since Linux desktop should have X-windows installed
   
       * **Mac OS X**: [Configure Mac For X-Forwarding][12]

   4. Connect from desktop to remote node using [X11 forwarding][15], with the [compression option for ssh][16]:.  

   ```
   ssh -c arcfour,blowfish-cbc -XC
   ```

   5. [Start Using tODE][13]
 
[1]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForSingleNode.md#configure-linux-desktop-for-both-client-and-server
[2]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForSingleNode.md#configure-mac-for-client-and-server

[3]: ./installSeasideServer.md

[4]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForServerAndClient.md#configure-linux-server-for-server
[5]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForServerAndClient.md#configure-mac-for-server

[6]: ./installClientOnSameNode.md

[7]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForServerAndClient.md#configure-linux-desktop-for-client
[8]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForServerAndClient.md#configure-mac-for-client
[9]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForServerAndClient.mdd#configure-windows-for-client

[10]: ./installClientOnSeparateNode.md

[11]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForRemoteWithXForwarding.md#configure-linux-server-for-client-and-server
[12]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/configOSForRemoteWithXForwarding.md#configure-mac-as-x-forwarding-client

[13]: ../gettingStartedWithTode.md
[14]: ../gettingStartedWithSeaside.md

[15]: http://unix.stackexchange.com/questions/12755/how-to-forward-x-over-ssh-from-ubuntu-machine
[16]: http://xmodulo.com/how-to-speed-up-x11-forwarding-in-ssh.html

[20]: ./loadSeasideProject.md

