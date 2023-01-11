main: chat-server home-server socket-server other-files

chat-server:
	pkg src/server/chat/chat-server.js && mv chat-server-* build/server/chat/ && pkg src/server/chat/forward-chat-server.js && mv forward-chat-server-* build/server/chat/

home-server:
	pkg src/server/home/home-server.js && mv home-server-* build/server/home/ 

socket-server:
	pkg src/server/socket/socket-server.js && mv socket-server-* build/server/socket/ && pkg src/server/socket/forward-socket-server.js && mv forward-socket-server-* build/server/socket/

other-files: 
	cp -rf src/home/inct-app-linux-x64 build/home/ && cp -rf src/main/ build/