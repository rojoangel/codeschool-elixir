print_name = fn(name) -> IO.puts "Hello, I am #{name}" end
print_name.("Angel")

print_double = fn(number) -> number * 2 end
IO.puts print_double.(30)

perform_operation = fn
  (values, :addition) -> Enum.reduce(values, &(&1 + &2))
  (values, :multiplication) -> Enum.reduce(values, &(&1 * &2))
end

IO.puts perform_operation.([1, 2, 3, 4], :addition)
IO.puts perform_operation.([1, 2, 3, 4], :multiplication)

# print_double = fn(number) -> number * 2 end
print_double = &(&1 * 2)

IO.puts print_double.(30)

