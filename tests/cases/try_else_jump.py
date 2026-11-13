def first_even(values: list[int]) -> int:
    for v in values:
        try:
            if v % 2 == 1:
                continue
            print("checking", v)
        except ValueError:
            print("bad")
        else:
            print("even", v)
            return v
    return -1


def leaves(n: int) -> None:
    try:
        print("start", n)
        return
    except ValueError:
        print("bad")
    else:
        print("never")


def stops(values: list[int]) -> None:
    for v in values:
        try:
            print("seen", v)
            break
        except KeyError:
            print("bad")
        else:
            print("never")


def skips(values: list[int]) -> None:
    for v in values:
        try:
            print("skip", v)
            continue
        except KeyError:
            print("bad")
        else:
            print("never")


def picks(n: int) -> int:
    try:
        print("pick", n)
    except ValueError:
        print("bad")
    else:
        return n
    print("after", n)
    return 0


def fails(n: int) -> None:
    if n < 0:
        try:
            raise ValueError("negative")
        except KeyError:
            print("bad")
        else:
            print("never")
    print("ok", n)


if __name__ == "__main__":
    values = [1, 3, 4, 5]
    print(first_even(values))
    leaves(2)
    stops(values)
    skips(values)
    print(picks(4))
    fails(3)
