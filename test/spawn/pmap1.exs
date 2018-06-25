defmodule Parallel do
    def pmap(collection, func) do
        collection
        |> Enum.map(&(Task.async(fn -> func.(&1) end)))
        |> Enum.map(&Task.await/1)
    end
end

result = Parallel.pmap 1..1000, &(&1*&1)

{:ok, file} = File.open "test.txt", [:write]
IO.binwrite file, result
File.close file