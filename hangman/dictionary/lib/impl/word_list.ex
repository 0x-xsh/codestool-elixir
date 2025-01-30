defmodule Dictionary.Impl.WordList do
  @opaque dict:: list(String.t)

  @spec start() :: dict
  def start do
    Application.app_dir(:dictionary, "priv/assets/words.txt")
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end

  @spec random_word(dict) :: String.t()
  def random_word(word_list) do
    Enum.random(word_list)
  end
end
