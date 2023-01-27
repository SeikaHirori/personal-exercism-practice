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
  fatalError("removePlayer not implemented - please add implementation here")
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  fatalError("updateScore not implemented - please add implementation here")
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  fatalError("orderByPlayers not implemented - please add implementation here")
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  fatalError("orderByScores not implemented - please add implementation here")
}
