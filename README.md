# regexp-bomb

A collection of ReDoS (Regular Expression Denial of Service) demonstrations across 17 programming languages.

The pattern `/(a+)*b$/` tested against the string `"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba"` causes catastrophic backtracking in regex engines that use a backtracking (NFA/DFS) approach.

> **Note:** This comparison was produced by Claude Code based on general knowledge of each language's regex engine. It may not reflect the latest state of each implementation. Please verify against the actual runtime before drawing conclusions.

## Languages

| Language | File | ReDoS Impact |
|---|---|---|
| **JavaScript** | `js/main.js` | Slow (V8 default; see note below) |
| **Go** | `go/main.go` | Fast (RE2/NFA-based) |
| **Rust** | `rust/main.rs` | Fast (RE2/NFA-based) |
| **Python** | `python/main.py` | Slow (backtracking engine) |
| **Ruby** | `ruby/main.rb` | Fast (Onigmo engine optimizes this pattern) |
| **Java** | `java/Main.java` | Fast (JIT-optimized regex engine) |
| **C#** | `csharp/Program.cs` | Slow (backtracking engine) |
| **Perl** | `perl/main.pl` | Fast (regex engine optimizes this pattern) |
| **PHP** | `php/main.php` | Fast (PCRE backtracking limit prevents hang) |
| **Swift** | `swift/main.swift` | Slow (ICU regex) |
| **Kotlin** | `kotlin/main.kt` | Fast (uses java.util.regex internally) |
| **Scala** | `scala/Main.scala` | Fast (uses java.util.regex internally) |
| **Dart** | `dart/main.dart` | Slow (backtracking engine) |
| **Lua** | `lua/main.lua` | Fast (no full regex support, uses its own pattern engine) |
| **R** | `r/main.R` | Slow (PCRE via `perl = TRUE`) |
| **Elixir** | `elixir/main.exs` | Fast (PCRE2, backtracking limit) |
| **Haskell** | `haskell/Main.hs` | Slow (TDFA, pattern-dependent) |
| **C++** | `cpp/main.cpp` | Slow (std::regex, backtracking engine) |

## Test Results

Tested locally with a 10-second timeout:

| Language | Result | Time |
|---|---|---|
| **Go** | false | 28.851µs |
| **Lua** | false | 0.000006s |
| **Perl** | false | 0.000004s |
| **Ruby** | false | 0.000008s |
| **JavaScript (Node.js)** | - | **TIMEOUT (>10s)** |
| **Python** | - | **TIMEOUT (>10s)** |
| **Java** | false | 0.000842s |
| **C++** | - | **TIMEOUT (>10s)** |

## Why?

Go and Rust use NFA-based regex engines (RE2 and similar), which guarantee linear-time matching regardless of the pattern. Lua uses its own pattern matching engine that doesn't support full regular expressions, so it is also unaffected. Perl and Ruby use backtracking engines but have optimizations that avoid catastrophic backtracking for this pattern. Most other languages use backtracking engines that can exhibit exponential time complexity with pathological patterns like `(a+)*b$`.

> **Important:** The results above reflect specific **implementations**, not language specifications. For instance, the JavaScript result is from V8's default backtracking engine — Node.js provides `--enable-experimental-regexp-engine` to use a linear-time engine instead, and other JS engines (SpiderMonkey, JavaScriptCore) may behave differently. Most languages do not mandate a particular regex engine in their spec. For example, Java's `java.util.regex` behavior may differ between OpenJDK and other JVMs, PHP's PCRE backtracking limit is a runtime configuration (`pcre.backtracking_limit`), and C++ `std::regex` behavior varies across standard library implementations (libstdc++, libc++, MSVC). The same language can produce different results depending on the runtime, version, or configuration.
