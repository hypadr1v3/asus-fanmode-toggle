# asus-fanmode-toggle
A small shell program to toggle the fan modes for Asus laptops. It is meant to be used on a keybind and sends a notification to tell the fan mode.

This program is made for Linux and has been tested on an Asus ROG GU501GM laptop running Arch Linux. 


#Installing
Change the permissions for `togglefan.sh` to make it executable using:
```
chmod +x togglefan.sh
```


Move the shell file to `/usr/bin` or to another suitable directory and remove the `.sh` part of the file. Then add this line:

```
ALL ALL = (ALL) NOPASSWD: /usr/bin/tee /sys/devices/platform/asus-nb-wmi/fan_boost_mode
```
to the `/etc/sudoers` file so that it's not necessary to enter your password every time you run the program. 

Now you can add a keybind in your desktop environment to run the program. For example, in `i3wm`, you can do this by adding this line 
```
bindsym XF86Launch4 exec togglefan
```
to the `config` file of i3 for `XF86Launch4` to be bound to toggle the program.
