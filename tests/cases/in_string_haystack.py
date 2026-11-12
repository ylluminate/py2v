def has_vowel(word: str) -> bool:
    return "a" in word.lower() or "e" in word[1:]


def main():
    s = "  Hello World  "
    name = "py2v"
    print("hello" in s.lower())
    print("x" not in s.strip())
    print("ll" in s[2:6])
    print("2v" in f"<{name}>")
    print([q for q in ["lo", "zz"] if q in s.strip().lower()])
    print(has_vowel("CAT"))


if __name__ == "__main__":
    main()
