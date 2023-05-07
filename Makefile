#disable warnings
CFLAGS = -w 


run: clean compile 
	lsof -ti:8080 | xargs kill -9
	output/server

client: 
	output/client

compile:
	g++ src/server.cpp $(CFLAGS) -o output/server
	g++ src/client.cpp $(CFLAGS) -o output/client

clean:
	rm output/*
