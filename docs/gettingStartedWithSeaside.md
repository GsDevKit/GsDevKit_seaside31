##Getting Started With Seaside

Once you have seaside loaded into your server Stone, you can start a web server and verify you can connect to it.  You can do this by [starting the web server from the bash shell](#start-the-seaside-web-server-from-bash-shell) or from [within tODE](#working-with-seaside-in-tode).

### Start the Seaside web server from bash shell
The quickest way to start a web server and verify your connection is to start the server at the bash prompt.  However, as you work with your application, it may find it more convenient to manage this [within tODE](#working-with-seaside-in-tode).


At the bash prompt, provided your $PATH includes $GS_HOME/shared/projects/GsDevKit_seaside31/bin, execute:

`
seasideWebServer seaside_3210 --start
`

### Working with Seaside in tODE

You can perform seaside project management within the tODE environment, without needing to use the bash shell.  

If you are not familiar with tODE, see [Getting Started with tODE][2].

#### Mount the seaside project 

By mounting the seaside project, you'll be able to execute seaside commands on the tODE command line.  

The command is:

```
mount @/_home/etc/GsDevKit_seaside31/tode /home seaside
```

For more information, use `man mount`

##### Seaside commands

Mounting the seaside project gives you access to the seaside commands:

* seasideInstall
* seasideLoad
* seasideNewProject
* seasideTest
* seasideUpdate 
* seasideUpgrade
* seasideWebServer

Once the seaside project is mounted, you can use cd and ls to find out more.

```
tode 1 > cd seaside
[299180801 sz:7 TDProxyLeafNode] /sys/stone/home/seaside/
tode 1 > ls
seasideInstall*  seasideLoad*  seasideNewProject*  seasideTest* seasideUpdate*  seasideUpgrade*  seasideWebServer*
```

### Start the web server

To start the web server from within tODE, execute the following at the tODE shell:

```
tode 1 > /home/seaside/seasideWebServer --start
```


#### Connect to the web server

Use your web browser to connect to the web server.  

For example, if it is running on the same node, and you used the port 8383, you should get the seaside welcome page:

![seaside in web browser][3]



---
[**FEEDBACK**][28]
---


[3]: images/SeasideWelcome.png
[2]: https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/gettingStartedWithTode.md#getting-started-with-tode
[28]: https://github.com/GsDevKit/GsDevKit_home/issues/new




