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

{paradigm, language}  = {:functional, "Elixir"}
IO.puts "Paradigm: #{paradigm}"
IO.puts "Language: #{language}"

person = %{ "name" => "Sam", "age" => 31 }
%{ "age" => age }  = person
IO.puts "Age is #{age}"

person = %{ "name" => "Sam", "age" => 31,
  "bank_info" => %{ "routing" => "001002", "account" => "123123" }
}

%{ "bank_info" => %{ "account" => account } }= person
IO.puts "Bank Account is #{account}"

defmodule Account do
  def transfer_amount(from, to, amount) do
    if amount < 5000 do
      do_transfer(from, to, amount)
      { :ok, amount }
    else
      { :error, "Invalid Transfer" }
    end
  end

  defp do_transfer(_from, _to, _amount) do
    IO.puts "Transfer done!"
  end
end

from = 123123
to = 123124
amount = 100.00

case Account.transfer_amount(from, to, amount) do
  {:ok, value} -> IO.puts("Transferred: $#{value}")
  {:error, message} -> IO.puts("Error: #{message}")
end

