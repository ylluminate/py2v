def middle() -> int:
    print("middle")
    return 5


def main():
    x = 5

    # Chained comparisons
    print(1 < x < 10)
    print(0 < x < 3)
    print(1 <= x <= 5)

    # More complex
    a = 3
    b = 5
    c = 7
    print(a < b < c)
    print(a < b > c)
    print(a == b == 0)
    print(a < b < c < x)
    print(not a < b < c)
    print(a < b < c or a > b)
    print("b" in "abc" in "xabcx")
    print(a < b in [5, 6])

    # A middle operand that is not a constant or a name is left as it was
    print(a < middle() < c)


if __name__ == "__main__":
    main()
