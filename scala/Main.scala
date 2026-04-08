import scala.util.matching.Regex

object Main {
  def main(args: Array[String]): Unit = {
    val pattern = new Regex("(a+)*b$")
    val start = System.nanoTime()
    val result = pattern.findFirstIn("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba").isDefined
    val elapsed = System.nanoTime() - start
    println(s"result: $result")
    println(f"elapsed: ${elapsed / 1e9}%.6fs")
  }
}
