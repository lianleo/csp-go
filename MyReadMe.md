# windows
SET CGO_ENABLED=0 
SET GOOS=windows  
SET GOARCH=amd64 
go build -o bin/csp_win_x64.exe main.go 

# Mac
SET CGO_ENABLED=0 
SET GOOS=darwin  
SET GOARCH=amd64 
go build -o bin/csp_mac main.go 

# Linux x86
SET CGO_ENABLED=0 
SET GOOS=linux  
SET GOARCH=amd64 
go build -o bin/csp_linux_x86 main.go 
# Linux arm
SET CGO_ENABLED=0 
SET GOOS=linux  
SET GOARCH=arm64 
go build -o bin/csp_arm64 main.go 



csp_win_x64 D:/DEV/minio_x64/csp_data


nohup ./csp_arm64 csp_server_data > csp_server.log

nohup ./csp_arm64 csp_server_data > csp_server.log & echo $! > csp_pid.lock

