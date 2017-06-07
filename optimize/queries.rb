players = Player.all

players.each do |player|
    team = player.teams
    puts player:"#{team.stadium.mascot}"
