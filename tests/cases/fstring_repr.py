plain = "ab"
single = "it's"
double = 'say "hi"'
both = "it's \"x\""
slash = "a\\b"
lines = "a\nb\tc"
n = 3
print(f"[{plain!r}] [{single!r}] [{double!r}]")
print(f"{both!r} {slash!r} {lines!r}")
print(f"{plain!r} beside {plain} and {n!r}")
print(f"{'lit'!r}")
