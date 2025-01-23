defmodule Dictionary do

  @word_list "assets/words.txt"
    |>  File.read!()
    |> String.split(~r/\n/, trim: true)


  def random_word() do
    @word_list
    |>Enum.random()

  end


  def exo_manipulation_string() do

    str = "had we but world enough, and time"

    str_split = String.split(str, ",", trim: true)
    str_chars = String.graphemes(str)
    str_int   = String.to_charlist("olá")

    str_reverse = String.reverse(str)

    {str_split, str_chars, str_int, str_reverse}


  end

  def explore_regex(str) do
    reg1 = Regex.match?(~r/a.c/, str)

    reg2 = String.replace(str, ~r/cat/, "dog")


    {reg1, reg2}

  end
end








# IO.inspect Dictionary.word_list()
# IO.inspect Dictionary.random_word()
IO.inspect Dictionary.explore_regex("abc cat")
IO.inspect Dictionary.explore_regex("ace cat")
