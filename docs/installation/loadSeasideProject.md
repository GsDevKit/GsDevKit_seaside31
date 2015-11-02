##Loading the Seaside Project into an existing GsDevKit system

If you have already installed GsDevKit, in one of the configurations [here][1], you do not need to repeat 
the whole installation process.  Using the tODE client, you can load the seaside31 project into your server stone.

1. **Start a tODE client**

   For example, if your tODE client name is *tode1*,

   ```
   startClient tode1
   ```

2. **Execute the project load script**

   Open a tODE shell on your repository, using the popup menu item  **Open Shell**. 

   ```
   project install --url=http://gsdevkit.github.io/GsDevKit_seaside31/Seaside3.ston
   ```

4. **Add project to your machine search path**

   Optionally, you may want to add the Seaside project bin directory to your BASH path; this will allow you to start and stop 
   the web server and other operations from the bash command line. These operations can also be performed from the tODE shell.

   ```
   export PATH=$GS_HOME/shared/projects/GsDevKit_seaside31/bin:$PATH
   ```
   
5. **Add port forwarding for the web server**

   If you are using SSH port forwarding, you will also need to setup port forwarding on the web services port (in these 
   instructions, port 8383).  [SSH port forwarding instructions][2]
   
[1]: ./installSeasideServer.md
[2]: ./installClientOnSeparateNode.md#setup-ssh-port-forwarding
