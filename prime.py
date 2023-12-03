def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def print_primes_in_range(rng):
    start, end = rng
    prime_numbers = [num for num in range(start, end + 1) if is_prime(num)]
    print(prime_numbers)

# Example usage:
input_range = [1, 10]
print_primes_in_range(input_range)
