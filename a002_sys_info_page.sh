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
