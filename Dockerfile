#2016.02.05
FROM winfredma/docker-ut
MAINTAINER Winfred Ma wangzhibenben002@163.com
CMD env | grep_TCP= | sed 's/.*_PORT_\([0-9]*\)_TCP=tcp:\/\/\(.*\):\(.*\)/socat TCP4-LISTEN:\1,fork,reuseaddr TCP4:\2:\3 \&/' | sh && top
