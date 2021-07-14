#!/bin/bash
# Program to output a system information page

TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"
echo "<html>
<head>
<title>$TITLE</title>
</head>
<body>
Variables and Constants
<h1>$TITLE</h1>
<p>$TIMESTAMP</p>
</body>
</html>"

TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"
cat << _EOF_
<html>
<head>
<title>$TITLE</title>
</head>
<body>
<h1>$TITLE</h1>
<p>$TIMESTAMP</p>
</body>
</html>
_EOF_

FTP_SERVER=ftp.nl.debian.org
FTP_PATH=/debian/dists/stretch/main/installer-amd64/current/images/
cdrom REMOTE_FILE=debian-cd_info.tar.gz
ftp -n <<- _EOF_
open $FTP_SERVER
user anonymous me@linuxbox
cd $FTP_PATH
hash
get $REMOTE_FILE
bye
_EOF_
ls -l "$REMOTE_FILE"

