#! /usr/bin/env ruby
# This script creates the name of a basebal team, then provides an interface to
# add players to the team
require 'json'

prompt = "> "

def add_player(team, team_name)
  prompt = "> "
  print prompt
  player = $stdin.gets.chomp
  if player != ''
    puts "#{player}'s number:"
    print prompt
    number  = $stdin.gets.chomp
    puts "#{player}'s position:"
    print prompt
    position  = $stdin.gets.chomp
    team[team_name][player]  = {'No.' => number, 'Position' => position}
  end
  player
end

def adding_player(player, team, team_name)
  if player != ''
    puts "Adding #{player} as "
    team[team_name][player].each do |k,v|
      puts "\t#{k} => #{v}"
    end
  end
end

puts "Enter the name of your team"
print prompt
team_name = $stdin.gets.chomp
team = {}
team[team_name] = {}

puts "Enter the name of the first player"
player = add_player(team, team_name)
adding_player(player, team, team_name)

while player != ''
  puts "Enter the name of the next player"
  player = add_player(team, team_name)
  adding_player(player, team, team_name)
end

tha_json = JSON.pretty_generate(team)
json_file = open('teams.json', 'a')
json_file.write(tha_json)
json_file.write("\n")
json_file.close
#puts "Your team, #{team_name}, consists of the following players:"
#team.each do |key, value|
#  puts "Name => #{key}"
#  value.each do |k,v|
#    puts "\t#{k} => #{v}"
#  end
#end
