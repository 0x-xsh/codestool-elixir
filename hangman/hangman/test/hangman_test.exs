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
  assert Enum.all?(game.letters, fn letter -> String.match?(letter, ~r/[a-z]/)

end)
end




end
