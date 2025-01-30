defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "start returns a list of words" do
    words = Dictionary.start()
    assert is_list(words)
    assert length(words) > 0
    assert Enum.all?(words, &is_binary/1)
  end

  test "random_word returns a string from the word list" do
    words = Dictionary.start()
    word = Dictionary.random_word(words)
    assert is_binary(word)
    assert word in words
  end

  test "random_word/0 returns a valid word" do
    word = Dictionary.random_word()
    assert is_binary(word)
    assert String.length(word) > 0
  end
end
