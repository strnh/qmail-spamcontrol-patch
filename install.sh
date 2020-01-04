#!/bin/sh
#
DATE=`date +%Y%m%d`
SPAMCNTDIR=/usr/ports/mail/qmail-spamcontrol
QMAILDIR=/usr/ports/mail/qmail

cp ./extra-patch-spamcontrol-tls_timeout.c $QMAILDIR/files
mv $SPAMCNTDIR/Makefile $SPAMCONTDIR/Makefile.orig_$DATE
cp qmail-spamcontrol/Makefile $SPAMCNTDIR/Makefile
mv $QMAILDIR/Makefile $QMAILDIR/Makefile.orig_$DATE
cp qmail/Makefile $QMAILDIR/Makefile
cd $SPAMCNTDIR && make makesum

