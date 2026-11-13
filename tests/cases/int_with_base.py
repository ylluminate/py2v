def from_binary(s: str) -> int:
    return int(s, 2)


def from_hex(s: str) -> int:
    return int(s, 16)


print(from_binary("101"))
print(from_hex("ff"))
print(int("-0x1F", 16) + int(" 0o17 ", 8))
print(int("1_000", 10) - int("+7", 10))
print(int("42"))
