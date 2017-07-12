defmodule DatabaseServer do

  # CLIENT API
  def start do
    spawn(&loop/0)
  end

  def send_query(server_pid, query_def) do
    caller = self()
    send(server_pid, {:run_query, caller, query_def})
  end

  def get_result do
    receive do
      {:query_result, result} ->
        result
    end
  end

  # SERVER
  defp loop do
    receive do
      {:run_query, caller, query_def} ->
        send(caller, {:query_result, run_query(query_def)})
    end

    loop()
  end

  defp run_query(query_def) do
    :timer.sleep(2000)
    "Query result: #{query_def}"
  end

end
