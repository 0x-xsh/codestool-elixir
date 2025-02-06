defmodule Dictionary.Impl.WordList do
  @opaque dict :: list(String.t())

  @spec word_list() :: dict
  def word_list do
    Application.app_dir(:dictionary, "priv/assets/words.txt")
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end

  @spec random_word(dict) :: String.t()
  def random_word(word_list) do
    word_list
    |> Enum.random()
  end

  @spec random_word() :: String.t()
  def random_word do
    word_list()
    |> random_word()
  end
end
