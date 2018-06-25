defmodule Math do
    def sum(a,b) do
        a+b
    end

    defp do_sum(a,b) do
        a + b
    end
    
    def zero?(0), do: true
    def zero?(x) when is_integer(x), do: false
end

defmodule Concat do
    def join(a,b,sep \\ " ") do
        a <> sep <> b
    end
end

IO.puts Concat.join("Hello", "world")
IO.puts Concat.join("Hello", "world", "_")

# IO.puts Math.sum(1,2)
# # IO.puts Math.do_sum(1,2)

# IO.puts Math.zero?(0)
# IO.puts Math.zero?(1)

# IO.puts Math.zero?([1,2,3])
# IO.puts Math.zero?(0.0)