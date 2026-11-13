def cut(text: str, sep: str, n: int) -> list[str]:
    return text.split(sep, n)


def main() -> None:
    line = "k=v=w"
    key, value = line.split("=", 1)
    print(key, value)
    print("a::b::c".split("::", 1))
    print("a,b,c".split(",", 0))
    print("a,b,c".split(",", -1))
    print(cut("a,b,c", ",", 1))
    print("a,b,c".split(","))


if __name__ == "__main__":
    main()
