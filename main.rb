require "./question.rb"
require "./player.rb"
require "./game.rb"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)

until game.over?
  current_player = game.current_player
  question = Question.new
  puts "#{current_player.name}: What does #{question.num1} plus #{question.num2} equal?"
  answer = gets.chomp.to_i
  if answer == question.answer
    puts "#{current_player.name}:YES! You are correct."
  else
    current_player.lose_life
    puts "#{current_player.name}: Seriously? No!"
  end
  game.switch_player
  puts "p1: #{player1.lives}/3 vs p2: #{player2.lives}/3"
  puts "----NEW TURN----"
end

if player1.lives == 0
  puts "#{player2.name} wins with a score of #{player2.lives}/3"
else
  puts "#{player1.name} wins with a score of #{player1.lives}/3"
end

puts "----------GAME OVER----------"
puts "Good bye!"
