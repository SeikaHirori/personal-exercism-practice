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
    
    
//    func makeCombo(_ x:Int) -> Int {
//        return (x * 13) % 256
//    }
    
//    let combo1 = makeCombo(room)
//    let combo2 = makeCombo(combo1)
//    let combo3 = makeCombo(combo2)
    
    let output = (combo1, combo2, combo3)
    
    print(output)
    
    return output
}
