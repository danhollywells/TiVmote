#!/usr/bin/env ruby

require 'timeout'
require 'net/telnet'

host = ARGV[0] || '192.168.1.4'  
command = ARGV[1] || 'COMMAND'  
key = ARGV[2] || 'KEY'  

localhost = Net::Telnet::new("Host" => host, "Timeout" => 2, "Prompt" => '', "Port" => 31339)
localhost.cmd(command.to_s + " " + key.to_s) { |c| print c }
localhost.close
#puts "running "+ command
exit 0