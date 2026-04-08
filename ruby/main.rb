start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
result = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba".match?(/(a+)*b$/)
elapsed = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start
puts "result: #{result}"
puts "elapsed: #{elapsed}s"
