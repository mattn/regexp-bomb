-- Lua's pattern matching doesn't support full regex,
-- so we use a loop-based equivalent of (a+)*b$
local input = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba"
local start = os.clock()
-- Lua patterns: match one or more 'a' followed by 'b' at end
local result = string.match(input, "a+b$") ~= nil
local elapsed = os.clock() - start
print("result: " .. tostring(result))
print(string.format("elapsed: %.6fs", elapsed))
