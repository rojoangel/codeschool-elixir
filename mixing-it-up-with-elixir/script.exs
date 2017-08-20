print_name = fn(name) -> IO.puts "Hello, I am #{name}" end
print_name.("Angel")

print_double = fn(number) -> number * 2 end
IO.puts print_double.(30)

