uwsgi --stop server.pid

if [ $? -ne 0 ];
then
    echo "[ERROR] stop uwsgi server failed."
    exit -1
else
    echo "[INFO] stop uwsgi server ok."
fi

ps -ef|grep SimpleHTTPServer | awk '{print $2}' | xargs kill -9
