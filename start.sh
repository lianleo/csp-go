#! /bin/bash
echo "Start csp server"
nohup ./csp_arm64 csp_server_data > csp_server.log &
echo $! > csp_pid.lock
echo "Csp server start success"