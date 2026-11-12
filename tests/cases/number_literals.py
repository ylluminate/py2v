def echo(n: int) -> None:
    print(n)


def big() -> int:
    return 9007199254740993


def main() -> None:
    print(2147483648)
    print(-2147483649)
    print(9007199254740993)
    print(9223372036854775807)
    print(0x100000000)
    print(9007199254740993 + 1)
    print(4294967296 // 3)
    print(-9007199254740993 < 0)
    print(-9223372036854775808 < 0)
    print([1, 4294967296])
    print(f"{9007199254740993}")
    echo(9007199254740993)
    print(big())
    for i in range(4294967296, 4294967298):
        print(i - 4294967296)
    limit = 4294967296
    print(limit > 0)
    low = -4294967296
    print(low < 0)
    width: int = 4294967296
    print(width > 0)
    a, b = 4294967296, 1
    print(a > b)
    if (n := 4294967296) > 0:
        print(n > 0)


if __name__ == "__main__":
    main()
