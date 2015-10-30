---
---
---
#UNDER CONSTRUCTION
---
---
---

# Seaside31 [![gs_master branch:](https://travis-ci.org/GsDevKit/Seaside31.png?branch=gs_master)](https://travis-ci.org/GsDevKit/Seaside31)
The [GsDevKit Seaside31 project][3] is a fork of the [Seaside project][4].

##Installation

###Bash Shell Install
Create a stone and install Seaside31:

```
$GS_HOME/shared/projects/seaside31/bin/seasideCreateStone seaside 3.2.9
```

Install Seaside31 into and existing stone:

```
$GS_HOME/projects/seaside31/bin/installSeasideSton seaside
```

###tODE Shell Install

```
mount @/sys/stone/dirs/gsDevKitHome/projects/seaside31 /home seaside # mount the seaside directory in tODE
/home/seaside/install                                                # install Seaside
```

---
---

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

##FAQs
1. [How do I debug an error that appears in the remote web server?][7]


[1]: ../../../docs/images/browseProjectEntry.png
[2]: ../../../docs/images/projectListMenu.png
[3]: https://github.com/GsDevKit/Seaside31
[4]: http://seaside.st/
[5]: ../../../docs/images/editProjectEntry.png
[6]: ../../../docs/images/seasideBrowser.png
[7]: docs/FAQ.md#1-how-do-i-debug-an-error-that-appears-in-the-web-server



