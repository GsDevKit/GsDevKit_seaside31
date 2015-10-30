##Getting Started With Seaside



###webServer script
Within tODE, register the zinc adaptor (swazoo and fastcgi are also options):

```Shell
cd /home/seaside
./webServer --register=zinc --port=8383
```

The following options can be used to control the registered adaptor:

```Shell
./webServer --start    # start adaptor
./webServer --stop     # stop adaptor
./webServer --restart  # stop/start adaptor
```

The script launches a separate GemStone vm to serve as a web server independent of your tODE gem.

Once you've started the webServer, you can use your web browser to connect to the server:

![seaside web browser][6]


[1]: ../../../docs/images/browseProjectEntry.png
[2]: ../../../docs/images/projectListMenu.png
[3]: https://github.com/GsDevKit/Seaside31
[4]: http://seaside.st/
[5]: ../../../docs/images/editProjectEntry.png





