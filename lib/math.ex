defmodule Math do
    def sum(a,b) do
        do_sum(a,b)
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