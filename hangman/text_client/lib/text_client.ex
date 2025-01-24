defmodule TextClient do

@spec start() :: :ok

defdelegate start(), to: TextClient.Impl.Player







  def hello do
    :world
  end
end
