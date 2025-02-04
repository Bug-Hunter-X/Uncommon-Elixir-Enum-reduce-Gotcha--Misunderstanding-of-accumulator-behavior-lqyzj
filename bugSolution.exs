```elixir
list = [1, 2, 3, 4, 5]

even_numbers = Enum.filter(list, fn x -> rem(x, 2) == 0 end)
sum_of_evens = Enum.sum(even_numbers)

IO.puts(sum_of_evens) 
```