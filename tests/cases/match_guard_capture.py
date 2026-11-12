def classify(s: str) -> str:
    marker = "r"
    match s:
        case r if r.startswith("a") and marker == "r":
            return r
        case r if r == "r":
            return "literal " + r
        case _:
            return "other"


print(classify("apple"))
print(classify("r"))
print(classify("berry"))

maximum = 9
match maximum:
    case x if all(i <= x for i in [1, 2]) and list(map(lambda x: x + 1, [1])) == [2]:
        print(x)

line = 4
match line:
    case q if sum([i * q for i in [1, 2]]) == 12:
        print(q)
