#include <iostream>
#include <regex>
#include <chrono>

int main() {
    std::regex re("(a+)*b$");
    std::string input = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba";
    auto start = std::chrono::high_resolution_clock::now();
    bool result = std::regex_search(input, re);
    auto elapsed = std::chrono::high_resolution_clock::now() - start;
    std::cout << "result: " << std::boolalpha << result << std::endl;
    std::cout << "elapsed: "
              << std::chrono::duration<double>(elapsed).count()
              << "s" << std::endl;
    return 0;
}
