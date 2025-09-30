
func isProperly(sequence: String) -> Bool {
    var arr = [Character]()
    
    for char in sequence {
        if char == "(" {
            arr.append(char)
        } else {
            if arr.isEmpty || arr.popLast() != "(" {
                return false
            }
        }
    }
    
    return arr.isEmpty
}



print(isProperly(sequence: "(()())"))
print(isProperly(sequence: ")(()"))
print(isProperly(sequence: "(()())("))
