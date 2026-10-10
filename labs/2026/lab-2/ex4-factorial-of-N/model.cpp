#include <iostream>
using namespace std;

int factorial(int n) {
    int result = 1;

    for (int i = n; i > 0; i--) {
        result = result * i;
    }

    return result;
}

int main() {
    int n = 5;

    int answer = factorial(n);

    cout << answer;

    return 0;
}