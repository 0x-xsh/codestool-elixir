defmodule HangmanTest do
  use ExUnit.Case
  alias Hangman.Impl.Game


test "new game returns structure" do

  game = Game.new_game
  assert game.turns_left == 7
  assert game.game_state == :initializing
  assert length(game.letters) > 0

end

test "new game returns correct word" do

  game = Game.new_game("wombat")
  assert game.turns_left == 7
  assert game.game_state == :initializing
  assert game.letters == ["w", "o", "m", "b", "a", "t"]


end


test "lower case in the game letters" do
  game = Game.new_game("wombat")
  assert Enum.all?(game.letters, fn letter -> String.match?(letter, ~r/[a-z]/) end)

end


test "state doesn't change if game is won or lost" do
  game = Game.new_game("wombat")

  for state <- [:won, :lost] do

  game = Map.put(game, :game_state, state)

  {new_game, _tally} = Game.make_move(game, "x")

  assert new_game == game

  end




end


end
