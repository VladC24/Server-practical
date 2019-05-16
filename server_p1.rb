require 'socket'
require_relative 'notes'

server = TCPServer.new(2345)  
#add the IP from the laptop I want to connect to, as a string 
#(e.g. TCPServer.new("192.168.50.124", 2345) without running the local server on my laptop.
#Only the host laptop will run the server, we simply run the command 'telenet IP(host) <PORT>'
puts "Starting the server................................."

loop do
socket = server.accept

notelist = NoteList.new
socket.puts "Enter a note:"
note = socket.gets.chomp
notelist.add_note(note)
notelist.menu
socket.close if note == 'quit'
end


socket.puts "Closing the server............................."