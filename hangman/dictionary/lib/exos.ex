defmodule Exos do


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

  def swap_tuple({a, b}) do
    {b, a}

  end

  def is_tuple_param_same({a, a}) do
    true
  end

  def is_tuple_param_same({a, b}) do
    false
  end

  def sum_pairs([]), do: []
  def sum_pairs([ h1, h2 | t]), do: [ h1 + h2 | sum_pairs(t) ]




  def even_length?([]), do: true
  def even_length?([_]), do: false
  def even_length?([_head | tail]), do: not even_length?(tail)








end


Exos.swap_tuple({1, 2})
