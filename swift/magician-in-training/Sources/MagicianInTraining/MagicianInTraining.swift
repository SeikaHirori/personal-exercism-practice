func getCard(at index: Int, from stack: [Int]) -> Int {
  // fatalError("Please implement the getCard(at:from:) function")
    var output:Int
    
    output = stack[index]
    
    return output
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  // fatalError("Please implement the setCard(at:from:to:) function")
    var output:Array<Int> = stack
    
    guard index <= stack.count else {return stack}
    
    guard index > 0 else {return stack}
    
    output[index] = newCard
    return output
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    // fatalError("Please implement the insert(_:atTopOf:) function")
    var output:[Int] = stack
    
    output.append(newCard)
    
    return output
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  // fatalError("Please implement the removeCard(at:from:) function")
    
//    let lastIndex = stack.count - 1
    if index < 0 || index >= stack.count {
        return stack
    }
    
    var output = stack
    
    output.remove(at: index)
    
    return output
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  fatalError("Please implement the removeTopCard(_) function")
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  fatalError("Please implement the insert(_:atBottomOf:) function")
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  fatalError("Please implement the removeBottomCard(_) function")
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  fatalError("Please implement the checkSizeOfStack(_:_:) function")
}

func evenCardCount(_ stack: [Int]) -> Int {
  fatalError("Please implement the evenCardCount(_) function")
}
