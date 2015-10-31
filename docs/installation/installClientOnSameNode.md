#GsDevKit Client Installation

These instructions describe installing the GsDevKit tODE client on a desktop machine on which you have already installed 
the GsDevKit Seaside Server.  

Since the GsDevKit server must run on **Linux** or **Mac**, these instructions are for those platforms.

## Install Client

The following steps are involved in installing the GsDevKit client. For an example script to execute, see 
[Install GsDevKit client](#example-script-to-install-client) 


1. Set the environment

   The environment variable $GS_HOME and the updated $PATH are required to use DevKit, so you should add them to 
   your `.bashrc` or another initialization script.
   ```
   export GS_HOME=<githubdirectory>
   export PATH=$GS_HOME/bin:$PATH
   ```

2. Perform the Client installation
   
    The installation is performed by a GsDevKit script.  This script takes care of cloning the required projects to your 
    client node and creating a client with the selected name.  You should use the same value for `<myGemStoneVersion>` 
    that you used for your server installation.

   Script to install the client:
   ```
   $GS_HOME/bin/installClient <myClientName> <myGemStoneVersion>
   ```
   You may use any name for `<myClientName>`, and note that you may later have multiple clients. 
   The examples below use  **tode1** as the client name.

   The install scripts invokes the following sub-scripts:
   ```
   downloadGemStone
   cloneSharedTodeProjects
   createClient 
   ```

### Example Script to Install Client

This script installs the GsDevKit client components for v3.2.10, and creates a client with the name **tode1**.

 ```
cd $GS_HOME
$GS_HOME/bin/installClient -c https tode1 3.2.10
 ```

When the install script completes, it will report lines similar to:
```
...finished installGci
...finished scanProductsForInstallingGciLibs
...finished createPharoTodeClient
...finished createClient
...finished createClient
...finished installClient
```

You now have an instance of the tODE client installed on your client machine, with the name **tode1** (if you used the 
sequence as entered here), but it is not started up.

3.  Start your client

   ```
   startClient tode1 
   ```

5.  To confirm you are connected to your server, and for further details on using tODE, see [Getting started with tODE][4]







[1]: ./installDevKitServer.md
[2]: ./README.md#installation-on-separate-server-and-client
[3]:  https://github.com/git-for-windows/git/wiki/Git-cannot-create-a-file-or-directory-with-a-long-path
[4]: ../gettingStartedWithTode.md



