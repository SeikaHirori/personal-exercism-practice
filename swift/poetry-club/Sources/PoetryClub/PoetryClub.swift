import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  // fatalError("splitOnNewlines not implemented -- replace this error with an implementation")
    let output = poem.components(separatedBy: "\n")
    
    return output
}

func firstLetter(_ line: String) -> Character {
//  fatalError("firstLetter not implemented -- replace this error with an implementation")
    guard line.count >= 1 else {
        return "_"
    }
    
    let indexFirstLetter = line.index(line.startIndex, offsetBy: 0)
    let output = line[indexFirstLetter]
    
    return output
}

func capitalize(_ phrase: String) -> String {
//  fatalError("capitalize not implemented -- replace this error with an implementation")
    guard phrase.count >= 1 else {
        return "_"
    }
    
    
    var output:String
    
    let workingString:String = phrase.lowercased()
    let splitPhrase:[String] = workingString.components(separatedBy: "")

    var buildingStringArray:[String] = splitPhrase
    for (indexArray, word) in splitPhrase.enumerated() {
        let capitalizedLetter:Character = firstLetter(word.uppercased())
//        let startingIndex = word.index(word.startIndex, offsetBy: 0)
        
        var newWord = Array(word)
        newWord[0] = capitalizedLetter
        
        print("Current new world \(newWord)")
        
        buildingStringArray[indexArray] = String(newWord)
        

    }
    
    output = buildingStringArray.joined()
    
    return output
}

func trimFromEnd(_ line: String) -> String {
  fatalError("trimFromEnd not implemented -- replace this error with an implementation")
}

func lastLetter(_ line: String) -> Character {
  fatalError("lastLetter not implemented -- replace this error with an implementation")
}

func backDoorPassword(_ phrase: String) -> String {
  fatalError("backDoorPassword not implemented -- replace this error with an implementation")
}

func ithLetter(_ line: String, i: Int) -> Character {
  fatalError("ithLetter not implemented -- replace this error with an implementation")
}

func secretRoomPassword(_ phrase: String) -> String {
  fatalError("secretRoomPassword not implemented -- replace this error with an implementation")
}
