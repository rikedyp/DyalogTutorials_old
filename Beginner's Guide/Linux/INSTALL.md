## Install Dyalog APL for Linux
PDF of [complete installation and configuration instructions](http://docs.dyalog.com/17.0/Dyalog%20for%20UNIX%20Installation%20and%20Configuration%20Guide.pdf)  

# Table of Contents
* [Deb](#installing-under-debian-based-distributions)
* [RPM](#installing-under-rpm-based-distributions)
* [AIX](#installing-under-aix)
* [Start Dyalog](#start dyalog)

### Installing under Debian based distributions
* ```$ unzip linux_64_*_unicode.zip```
* ```$ sudo dpkg -i linux_64_*_unicode.x86_64.deb```  
Many distributions allow unzipping and installing via the GUI

### Installing under RPM based distributions
* ```$ unzip linux_64_*_unicode.zip```
* ```$ sudo rpm --install linux_64_*_unicode.x86_64.rpm```

### Installing under AIX
* ```$su -```
* ```# cd /opt```
* ```# cpio -icdvum </tmp/dyalog-20090901-64-unicode-p6.cpi```
* ```# /opt/mdyalog/17.0/64/unicode/p6/make_scripts```
* ```# exit```

### Start Dyalog  
In GUI desktop environments, Dyalog should appear in the applications menu.  This will start a session in [RIDE](https://github.com/Dyalog/ride)
Deb and RPM allow starting from the terminal:  
```$ dyalog```
On all platforms, dyalog can be started from the terminal:  
```$ /opt/mdyalog/17.0/64/unicode/p6/mapl```  
