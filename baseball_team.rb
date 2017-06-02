# This script creates the name of a basebal team, then provides an interface to
# add players to the team

prompt = "> "

def add_player(team)
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
    team[player] = {'No.' => number, 'Position' => position}
  end
  player
end

def adding_player(player, team)
  if player != ''
    puts "Adding #{player} as "
    team[player].each do |k,v|
      puts "\t#{k} => #{v}"
    end
  end
end

puts "Enter the name of your team"
print prompt
team_name = $stdin.gets.chomp
team = {}

puts "Enter the name of the first player"
player = add_player(team)
adding_player(player, team)

while player != ''
  puts "Enter the name of the next player"
  player = add_player(team)
  adding_player(player, team)
end

puts "Your team, #{team_name}, consists of the following players:"
team.each do |key, value|
  puts "Name => #{key}"
  value.each do |k,v|
    puts "\t#{k} => #{v}"
  end
end
