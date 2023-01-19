// TODO: define the 'birthday' String constant
let birthday:String = "Birthday"
// TODO: define the 'valentine' String constant
let valentine:String = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary:String = "Anniversary"
// TODO: define the 'space' Character constant
let space: Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation:Character = "!"

func buildSign(for occasion: String, name: String) -> String {
    // fatalError("Please implement the buildSign(for:name:) function")
//    var output:String = "Happy" + String(space)
//
//    switch occasion {
//    case birthday:
//        output += birthday
//    case valentine:
//        output += valentine
//    case anniversary:
//        output += anniversary
//    default:
//        break
//    }
//
//    output += String(space)
//
//    output += name
//
//    output += String(exclamation)
    
    var output: String = "Happy \(occasion) \(name)!"
    
    return output
}

func graduationFor(name: String, year: Int) -> String {
  fatalError("Please implement the graduationFor(name:year:) function")
    
    
}

func costOf(sign: String) -> Int {
    fatalError("Please implement the costOf(sign:) function")

    
}
