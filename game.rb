class Game
  attr_reader :choice, :player_choice

  def initialize
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end

  def player(player_choice)
    @player_choice = player_choice
  end

  def outcome
  if @choice == 'Rock' && @player_choice == 'Scissors'
    then won
  elsif @choice == 'Scissors' && @player_choice == 'Paper'
    then won
  elsif @choice == 'Paper' && @player_choice == 'Rock'
    then won
  elsif @choice == 'Scissors' && @player_choice == 'Rock'
    then lose
  elsif @choice == 'Paper' && @player_choice == 'Scissors'
    then lose
  elsif @choice == 'Rock' && @player_choice == 'Paper'
    then lose
  else draw
  end
end

  def won
      'Computer beats Player'
    end

  def lose
    'Player beats Computer'
  end

  def draw
    if win = lose
      'Its a draw'
    end
  end
end
