//MARK: solid rectangle

let rows = 6
let cols = 9

for row in 0 ..< rows {
    for col in 0 ..< cols {
        print("* ", terminator: "")
    }
    print("")
}
print("-----------------------------------------------")

//MARK: hollow rectangle

for row in 0 ..< rows {
    for col in 0 ..< cols {
        if row == 0 || row == rows - 1 || col == 0 || col == cols - 1 {
            print("* ", terminator: "")
        } else {
            print("  ", terminator: "")
        }
    }
    print("")
}

print("-----------------------------------------------")

//MARK: numeric half pyramid

for row in 0 ..< rows {
    for col in 0 ..< row + 1 {
        print("\(col + 1) ", terminator: "")
    }
    print("")
}

print("-----------------------------------------------")

//MARK: another numeric half pyramid

for row in 0 ..< rows {
    for spaces in 0 ..< rows - row - 1 {
        print("  ", terminator: "")
    }
    for numerals in 0 ..< row + 1 {
        print("\(numerals + 1) ", terminator: "")
    }
    print("")
}

print("-----------------------------------------------")

//MARK: inverted numeric half pyramid

for row in 0 ..< rows {
    for col in 0 ..< rows - row {
        print("\(col + 1) ", terminator: "")
    }
    print("")
}

print("-----------------------------------------------")

//MARK: another inverted numeric half pyramid

for row in 0 ..< rows {
    for spaces in 0 ..< row {
        print("  ", terminator: "")
    }
    for numerals in 0 ..< rows - row {
        print("\(numerals + 1) ", terminator: "")
    }
    print("")
}

print("-----------------------------------------------")

//MARK: inverted hollow half pyramid

for row in 0 ..< rows {
    for col in 0 ..< rows - row {
        if row == 0 || col == 0 || col == rows - row - 1 {
            print("* ", terminator: "")
        } else {
            print("  ", terminator: "")
        }
    }
    print("")
}

print("-----------------------------------------------")

//MARK: another inverted hollow half pyramid

for row in 0 ..< rows {
    for spaces in 0 ..< row {
        print("  ", terminator: "")
    }
    for stars in 0 ..< rows - row {
        if row == 0 || stars == 0 || stars == rows - row - 1 {
            print("* ", terminator: "")
        } else {
            print("  ", terminator: "")
        }
    }
    print("")
}

print("-----------------------------------------------")
