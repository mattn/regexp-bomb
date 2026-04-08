{elapsed, result} = :timer.tc(fn ->
  Regex.match?(~r/(a+)*b$/, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba")
end)

IO.puts("result: #{result}")
IO.puts("elapsed: #{elapsed / 1_000_000}s")
