def main():
    # Simple range
    for i in range(3):
        print(i)

    # Range with start and end
    for i in range(2, 5):
        print(i)

    # Range with step
    for i in range(0, 10, 2):
        print(i)

    # Negative step (countdown)
    for i in range(5, 0, -1):
        print(i)

    # Negative step that does not divide the distance
    for i in range(7, -1, -3):
        print(i)


if __name__ == "__main__":
    main()
