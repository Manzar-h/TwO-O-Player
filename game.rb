class Game
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def over?
    player1.lives == 0 || player2.lives == 0
  end

  def switch_player
    @current_player = current_player == player1 ? player2 : player1
  end

  def winner
    if player1.lives == 0
      player2
    else
      player1
    end
  end
end
