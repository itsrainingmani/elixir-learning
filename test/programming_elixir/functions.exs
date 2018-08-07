#Functions-1
list_concat = fn a, b -> a ++ b end

sum = fn a, b, c -> a+b+c end

pair_tuple_to_list = fn {a, b} -> [a,b] end

IO.puts list_concat.(["a", "b"], ["c", "d"])
IO.puts sum.(1,2,3)
IO.puts pair_tuple_to_list.({1234, 5678})

#Functions-2
fizzbuzzfn = fn
0, 0, _ -> "FizzBuzz"
0, _, _ -> "Fizz"
_, 0, _ -> "Buzz"
_, _, third -> third
end

IO.puts fizzbuzzfn.(0, 0, 1)
IO.puts fizzbuzzfn.(0, 1, 0)
IO.puts fizzbuzzfn.(1, 0, 0)
IO.puts fizzbuzzfn.(1, 1, 2)

#Functions-3
checkfizzbuzz = fn n -> fizzbuzzfn.(rem(n,3), rem(n,5), n) end

for i <- 10..16, do: IO.puts checkfizzbuzz.(i)