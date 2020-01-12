# qmail-spamcontrol-patch

# Description

This is a patch in the wild.

# Disclame

I do not guarantee anything.

# Limitation

 TLSv1.3 not implement with ucspi-ssl-0.99e + openssl1.1.x and qmail-spamcontrol-2.7.33.
 In paticular, interoperablities with GMAIL (may need TLSv1.3) broken after 01/01/2020.
 
Workaround
 
Use fehqlibs1.3 + ucspi-ssl-0.10.11 (it could recieved with TLSv1.3 from gmail) 

modify or delete tlsdestinations ( SMTP TLS disabled. )
 
# Usage

1) get it
2) extract it (exclude @ /usr/ports/mail) and enter dir.
3) /bin/sh ./install 
