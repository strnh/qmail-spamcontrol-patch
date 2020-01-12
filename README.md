# qmail-spamcontrol-patch

# Description

This is a patch in the wild.

# Disclame

I do not guarantee anything.

# Limitation

 TLSv1.3 not implement with ucspi-ssl-0.99 + openssl and qmail-spamcontrol-2.7.33.
 In paticular Gmail interoperablities broken after 01/01/2020.
 
 Workaround
 
 1) Use fehqlibs1.3 + ucspi-ssl-0.10.11 (it could recieved with TLSv1.3 from gmail) 
 2）modify or delete tlsdestinations ( SMTP TLS disabled. )
 
# Usage

1) get it
2) extract it (exclude @ /usr/ports/mail) and enter dir.
3) /bin/sh ./install 
