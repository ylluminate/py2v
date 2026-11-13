def run():
    d = {"a": 1, "b": 2, "c": 3}
    print(d.pop("a", 0))
    print(d.pop("zz", 9))
    d.pop("b")
    print(len(d))
    names = {"x": "one"}
    print(names.pop("y", "none"))
    xs = [10, 20, 30, 40]
    print(xs.pop(0))
    i = 1
    print(xs.pop(i))
    xs.pop()
    print(len(xs))


run()
