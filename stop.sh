#! /bin/bash
echo "Stop csp server"
kill `cat csp_pid.lock`
echo "Csp server stopped"