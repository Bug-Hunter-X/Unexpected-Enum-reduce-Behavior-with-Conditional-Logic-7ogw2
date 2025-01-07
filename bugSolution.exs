```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)

#Corrected Version
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, 0, fn x, acc ->
  cond do
    x > 3 -> acc + x
    true -> acc
  end
end)
IO.puts result # Output: 9
```