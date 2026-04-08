use std::time::Instant;

fn main() {
    let re = regex::Regex::new(r"(a+)*b$").unwrap();
    let start = Instant::now();
    let result = re.is_match("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba");
    let elapsed = start.elapsed();
    println!("result: {}", result);
    println!("elapsed: {:?}", elapsed);
}
