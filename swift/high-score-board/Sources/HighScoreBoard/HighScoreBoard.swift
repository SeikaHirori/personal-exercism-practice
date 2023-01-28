func newScoreBoard() -> [String: Int] {
    // fatalError("newScoreBoard not implemented - please add implementation here")
    let newEmptyBoard: Dictionary<String, Int> = [:]
    
    return newEmptyBoard
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    // fatalError("addPlayer not implemented - please add implementation here")
    /* Psuedocode
        -
     */
    
    scores[name] = score
    
    let messageAfterAdding:String = "Adds \"\(name)\" to the dictionary with a high score of \(score)."
    
    print(messageAfterAdding)
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    // fatalError("newScoreBoard not implemented - please add implementation here")
    guard scores.isEmpty == false else {
        return
    }
    
    scores.removeValue(forKey: name)
    
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
    // fatalError("removePlayer not implemented - please add implementation here")
    scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  // fatalError("updateScore not implemented - please add implementation here")
    scores[name] = delta + (scores[name] ?? 0)
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    // fatalError("orderByPlayers not implemented - please add implementation here")
    /*  Note AFTER SUBMISSION:
        - Check other people's answer to see if it's possible to reduce Big O Notation
        
     */
    
//
//    let sortedKeys = Array(scores.keys).sorted()
//
//    var sortedValues:[Int] = []
//
//
//    for itemKey in sortedKeys {
//        sortedValues.append(scores[itemKey] ?? 0)
//    }
//
//    var output:[(String, Int)] = []
//    for (index, sortedKey) in sortedKeys.enumerated() {
//        output.append((sortedKey, sortedValues[index]))
//    }
//
//    return output
    
    return scores.sorted(by: {$0.key < $1.key}) // RFER #8
    
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    // fatalError("orderByScores not implemented - please add implementation here")
    //    let sortedValues = Array(scores.values).sorted(by:>) // RFER #7
    //
    ////    var sortedKeys:[String] = []
    //
    //    var output:[(String, Int)] = []
    //
    ////    var index:Int = 0
    //
    //    // Big O Notation: n**2
    //    for sortedValue in sortedValues {
    //        for (key, value) in scores {
    //            if value == sortedValue {
    //                output.append((key, sortedValue))
    //            }
    //        }
    //    }
    //
    //    return output
    
    return scores.sorted(by: {$0.value > $1.value}) // RFER # 8
}
