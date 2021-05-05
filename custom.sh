#!/bin/bash

/var/log/messages {

daily
rotate 4
compress
create
}

/var/log/secure {

daily
rotate 4
compress
create
}

/var/log/httpd/error_log {

daily
rotate 4
compress
create
}

/var/log/httpd/access_log {

daily
rotate 4
compress
create
}

/var/log/yum.log {

daily
rotate 4
compress
create
}


