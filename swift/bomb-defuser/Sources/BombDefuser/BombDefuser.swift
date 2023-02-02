import Foundation

//let flip: (String, String, String) -> (String, String, String) = TODO: Please define the flip closure
let flip:((String,String,String)) -> ((String, String, String)) = {
    return ($0.1, $0.0, $0.2) // Type Notation with Tuple (and maybe Array?) is picky.
}


//
//
//let rotate: (String, String, String) -> (String, String, String) = TODO: Please define the stopAtOne closure
let rotate: ((String, String, String)) -> ((String, String, String)) = {
    return ($0.1, $0.2, $0.0)
}


func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
//  fatalError("Please implement the makeShuffle(flipper:rotator:) function")
    var closedSyn: (UInt8, (String, String, String)) -> (String, String, String) = {
        var bitArray:[Int] = []
        
        var copyUInt8:Int = Int($0)
        
        while copyUInt8 > 0 {
            let dividendCopy = copyUInt8 / 2
            let remainderCopy = copyUInt8 % 2
            
            bitArray.append(remainderCopy)
            
            let debugCurrentCycle: String = """
            copyUInt8: \(copyUInt8)
            dividendCopy: \(dividendCopy)
            remaidnerCopy: \(remainderCopy)
            """
            print(debugCurrentCycle)
            
            copyUInt8 = dividendCopy
            
        }
        
        bitArray = bitArray.reversed()
        
        var copyTuple:(String, String, String) = $1
        
        while bitArray.isEmpty != true {
            let currentBit = bitArray.popLast()
            
            switch currentBit {
            case 0:
                copyTuple = flipper(copyTuple)
            case 1:
                copyTuple = rotator(copyTuple)
            default:
                continue
            }
        }
        return copyTuple
        
    }
    
    return closedSyn
}
