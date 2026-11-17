def remainder(a: int, b: int) -> int:
    return a % b


def main():
    for a in [-7, 7, -6, 6, 0]:
        for b in [3, -3]:
            print(remainder(a, b))
    value = -7
    value %= 3
    print(value)


if __name__ == "__main__":
    main()
