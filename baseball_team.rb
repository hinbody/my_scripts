# This script creates the name of a basebal team, then provides an interface to
# add players to the team

prompt = "> "

def add_player(team)
  prompt = "> "
  print prompt
  player = [$stdin.gets.chomp]
  if player[0] != ''
    puts "#{player[0]}'s number:"
    print prompt
    player[1] = $stdin.gets.chomp
    puts "#{player[0]}'s position:"
    print prompt
    player[2] = $stdin.gets.chomp
    team.push(player)
  end
  player
end

def adding_player(player)
  if player[0] != ''
    puts "Adding #{player[0]} as No. #{player[1]} Playing #{player[2]}"
  end
end

puts "Enter the name of your team"
print prompt
team_name = $stdin.gets.chomp
team = []

puts "Enter the name of the first player"
player = add_player(team)
adding_player(player)

while player[0] != ''
  puts "Enter the name of the next player"
  player = add_player(team)
  adding_player(player)
end

puts "Your team, #{team_name}, consists of the following players:"
team.each do |p|
  puts "#{p[0]}, No: #{p[1]}, Playing: #{p[1]}"
end
