def main():
    d = {"a": 1, "b": 2}
    e = {"b": 5, "c": 6}
    d.update(e)
    print(len(d), d["b"], d["c"])
    print(list(d.keys()))
    d.update({"z": 9, "a": 0})
    print(d["z"], d["a"])
    print(list(d.keys()))
    names = {1: "one"}
    names.update({2: "two", 1: "uno"})
    print(names[1], names[2])


if __name__ == "__main__":
    main()
