#!/bin/sh
#
DATE=`date +%Y%m%d`
PORTS=/usr/ports
SPAMCNTDIR=/usr/ports/mail/qmail-spamcontrol
QMAILDIR=/usr/ports/mail/qmail
UCSPIDIR=/usr/ports/sysutils/ucspi-ssl

cd /usr/ports/distfiles/qmail
fetch https://github.com/strnh/qmail-spamcontrol-patch/raw/master/spamcontrol-2733.tgz

cp -p extra-patch-spamcontrol-tls_timeout.c $QMAILDIR/files
mv $SPAMCNTDIR/Makefile $SPAMCONTDIR/Makefile.orig_$DATE
cp qmail-spamcontrol/Makefile $SPAMCNTDIR/Makefile
mv $QMAILDIR/Makefile $QMAILDIR/Makefile.orig_$DATE
cp qmail/Makefile $QMAILDIR/Makefile

cd $UCSPIDIR && make makesum
cp $PORTS/distfiles/ucspi-ssl-0.99e.tgz $PORTS/distfiles/qmail
cd $SPAMCNTDIR && make makesum
