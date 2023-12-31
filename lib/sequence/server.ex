defmodule Sequence.Server do
  use GenServer

  def init(initial_number) do
    {:ok, initial_number}
  end

  def handle_call({:set_number, :next_number}, _from, current_number) do
    {:reply, current_number, current_number + 1}
  end
end