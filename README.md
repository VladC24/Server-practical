# SERVER PRACTICAL - MAKERS

Learn to:
Learn about something by playing with a toy version

## Introduction:
This week we're thinking about networked applications. This means they involve clients and servers.

Today we're going to build a server.

When a developer wants to understand something, it is rare they will read reams of technical documentation. Instead, they will build or find a living example of the thing, and then play with it to see how it behaves.

Remind you of any learning strategies you might have used in the past?

It's time for you to take on this approach.

### Exercise 1
Here's a simple server:

```
require 'socket'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

socket.close
```

Stick that in a ruby file and run it. It won't do anything — it'll just sit there.

Open up another terminal and type this:
```
$ telnet localhost 2345
```

You should see something like:
```
Trying ::1...
Connected to localhost.
Escape character is '^]'.
What do you say?
```
Type something like this:
```
HELLO????? IS THERE ANYBODY OUT THERE??
```
Hit return. What do you see?

### Exercise 2
Try the following challenges, in any order you like:

1. At the moment the server simply quits after the first user disconnects. Make so the server stays running so that the user can reconnect.
2. Make it so the user can stay connected and typing stuff until they type 'quit'
3. Connect to your pair's laptop from your laptop. You'll need the network IP address of the laptop with the server on it for this. See below
4. Create a separate NoteList class and make a notes app you can control over the network.


## HOW TO RUN IT

Install telnet:
```
brew install telnet
```
Run the server file in one terminal window
```
ruby server_p1.rb
```

And then run on a second terminal window:
``` 
telnet localhost 2345
```  
And you're all set to go.
