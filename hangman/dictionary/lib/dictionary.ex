defmodule Dictionary do
  # ...existing code...

  defdelegate start(), to: Dictionary.Impl.WordList
  defdelegate random_word(word_list), to: Dictionary.Impl.WordList

  def random_word do
    word_list = start()
    random_word(word_list)
  end
end
