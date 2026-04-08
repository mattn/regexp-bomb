fun main() {
    val regex = Regex("(a+)*b$")
    val start = System.nanoTime()
    val result = regex.containsMatchIn("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba")
    val elapsed = System.nanoTime() - start
    println("result: $result")
    println("elapsed: ${elapsed / 1e9}s")
}
