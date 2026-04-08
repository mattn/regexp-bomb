# regexp-bomb

A collection of ReDoS (Regular Expression Denial of Service) demonstrations across 17 programming languages.

The pattern `/(a+)*b$/` tested against the string `"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba"` causes catastrophic backtracking in regex engines that use a backtracking (NFA/DFS) approach.

## Languages

| Language | File | ReDoS Impact |
|---|---|---|
| **JavaScript** | `js/main.js` | Slow (backtracking engine) |
| **Go** | `go/main.go` | Fast (RE2/NFA-based) |
| **Rust** | `rust/main.rs` | Fast (RE2/NFA-based) |
| **Python** | `python/main.py` | Slow (backtracking engine) |
| **Ruby** | `ruby/main.rb` | Slow (backtracking engine) |
| **Java** | `java/Main.java` | Slow (backtracking engine) |
| **C#** | `csharp/Program.cs` | Slow (backtracking engine) |
| **Perl** | `perl/main.pl` | Slow (backtracking engine) |
| **PHP** | `php/main.php` | Slow (PCRE, but has backtracking limit) |
| **Swift** | `swift/main.swift` | Slow (ICU regex) |
| **Kotlin** | `kotlin/main.kt` | Slow (Java regex) |
| **Scala** | `scala/Main.scala` | Slow (Java regex) |
| **Dart** | `dart/main.dart` | Slow (backtracking engine) |
| **Lua** | `lua/main.lua` | N/A (no full regex support, uses patterns instead) |
| **R** | `r/main.R` | Slow (PCRE via `perl = TRUE`) |
| **Elixir** | `elixir/main.exs` | Fast (PCRE2, backtracking limit) |
| **Haskell** | `haskell/Main.hs` | Slow (TDFA, pattern-dependent) |

## Why?

Go and Rust use NFA-based regex engines (RE2 and similar), which guarantee linear-time matching regardless of the pattern. Most other languages use backtracking engines that can exhibit exponential time complexity with pathological patterns like `(a+)*b$`.
