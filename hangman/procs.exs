defmodule Procs do
  def greeter(what_to_say, count \\ 0) do
    receive do
      :quit ->
        IO.puts("#{what_to_say} (count: #{count}) - Goodbye!")

      {:add, n} ->
        IO.puts("#{what_to_say} (count: #{count}) - Adding #{n}")
        greeter(what_to_say, count + n)

      {:reset} ->
        IO.puts("#{what_to_say} (count: #{count}) - Resetting to 0")
        greeter(what_to_say, 0)

      msg ->
        IO.puts("#{what_to_say} (count: #{count}) - Got: #{inspect msg}")
        greeter(what_to_say, count + 1)
    end
  end
end
