func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  // fatalError("Please implement the protectSecret(_:withPassword:) function")
    
    func verifyPasswordInput(_ input: String) -> String {
        let responseIncorrectPassword: String = "Sorry. No hidden secrets here."
        
        switch input {
        case password:
            return secret
        default:
            return responseIncorrectPassword
        }
    }
    
    return verifyPasswordInput
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  // fatalError("Please implement the generateCombination(forRoom:usingFunction) function")
    

    /*
        - Commented out code below failed since it didn't need to be implemented: the test codes would handle the algorithm for making a lock. This was to demonstrate that you can use a function as a parameter 
     */
//    func makeCombo(_ x:Int) -> Int {
//        return (x * 13) % 256
//    }
    
//    let combo1 = makeCombo(room)
//    let combo2 = makeCombo(combo1)
//    let combo3 = makeCombo(combo2)
    
    
    let combo1 = f(room)
    let combo2 = f(combo1)
    let combo3 = f(combo2)
    
    let output = (combo1, combo2, combo3)
    
    print(output)
    
    return output
}
