#!/bin/sh

echo "$PROTOCOL $LISTENPORT $TARGETIP $TARGETPORT" > /proxy.conf
/proxy_server
