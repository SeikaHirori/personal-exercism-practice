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
    
    let splitPhrase:[String] = phrase.lowercased().components(separatedBy: " ")

    var buildingStringArray:[String] = splitPhrase
    for (indexArray, word) in splitPhrase.enumerated() {
        let capitalizedLetter:Character = firstLetter(word.uppercased())
//        let startingIndex = word.index(word.startIndex, offsetBy: 0)
        
        var newWord = Array(word) // RFER #3
        newWord[0] = capitalizedLetter
        let buildStringFromCharacterArray:String = String(newWord) // RFER #2
        
        print("current loop: \(indexArray)")
        print("Current new word: \(newWord)")
        print("Word built: \(buildStringFromCharacterArray)")
        
        buildingStringArray[indexArray] = buildStringFromCharacterArray

    }
    
    output = buildingStringArray.joined(separator: " ") // RFER #4
    print("Output result: \(output)")
    
    return output
}

func trimFromEnd(_ line: String) -> String {
  // fatalError("trimFromEnd not implemented -- replace this error with an implementation")
    return line.trimmingCharacters(in: .whitespaces) // RFER #5
}

func lastLetter(_ line: String) -> Character {
    print("Starting function lastLetter()")
    // fatalError("lastLetter not implemented -- replace this error with an implementation")
    guard line.count >= 1 else {
        return "_"
    }
    
    let lastCharacterIndex = line.endIndex
    print("Value of \(lastCharacterIndex)")
    
    
//    let output:Character = line[lastCharacterIndex]
    let output = line.last
    print("Result: \(String(describing: output)) \n") // RFER #6

    
    return output!
}

func backDoorPassword(_ phrase: String) -> String {
    let endingWithPlease:String = ", please"
    // fatalError("backDoorPassword not implemented -- replace this error with an implementation")
    var output:String
    
    output = capitalize(phrase)
    
    output += endingWithPlease
    return output
}

func ithLetter(_ line: String, i: Int) -> Character {
    // fatalError("ithLetter not implemented -- replace this error with an implementation")
    
    
    guard line.count > 0 else {
        /* exit immediately if the String is empty */
        return " "
    }

    guard line.count >= i else {
        /* exit immediately if parameter "i" is greater than or equal to the String's length/size */
        return " "
    }
    
    var outputCharacter: Character = " "
    
    let brokenCharacters:[Character] = Array(line)
    
    outputCharacter = brokenCharacters[i]
    
    return outputCharacter
}

func secretRoomPassword(_ phrase: String) -> String {
  fatalError("secretRoomPassword not implemented -- replace this error with an implementation")
}
