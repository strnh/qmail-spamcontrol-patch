#!/bin/sh
#
DATE=`date +%Y%m%d`
$PORTS=/usr/ports
SPAMCNTDIR=/usr/ports/mail/qmail-spamcontrol
QMAILDIR=/usr/ports/mail/qmail
UCSPIDIR=/usr/ports/sysutils/ucspi-ssl

cp -p extra-patch-spamcontrol-tls_timeout.c $QMAILDIR/files
mv $SPAMCNTDIR/Makefile $SPAMCONTDIR/Makefile.orig_$DATE
cp qmail-spamcontrol/Makefile $SPAMCNTDIR/Makefile
mv $QMAILDIR/Makefile $QMAILDIR/Makefile.orig_$DATE
cp qmail/Makefile $QMAILDIR/Makefile
cd $SPAMCNTDIR && make makesum
cp $PORTS/distfiles/ucspi-ssl\* $PORTS/distfiles/qmail

