import Foundation

let pattern = try! NSRegularExpression(pattern: "(a+)*b$")
let input = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba"
let range = NSRange(input.startIndex..., in: input)
let start = CFAbsoluteTimeGetCurrent()
let result = pattern.firstMatch(in: input, range: range) != nil
let elapsed = CFAbsoluteTimeGetCurrent() - start
print("result: \(result)")
print(String(format: "elapsed: %.6fs", elapsed))
