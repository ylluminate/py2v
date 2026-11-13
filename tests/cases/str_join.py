rows = [1, 2, 3]
print(",".join(str(r) for r in rows))
print(", ".join([str(r) for r in rows if r != 2]))
print("".join(map(str, rows)))
print("|".join(f"<{r}>" for r in rows))

n = 7
f = 2.5
b = False
print("n=" + str(n))
print(str(f) + "!")
print(str(b) + "?")
s = str(n)
print(len(s), int(s) + 1, float(str(f)) * 2)
