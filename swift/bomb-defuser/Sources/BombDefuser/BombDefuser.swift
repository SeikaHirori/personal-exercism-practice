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
    
    let closedSyn: (UInt8, (String, String, String)) -> (String, String, String) = {
        guard $0 > 0 else {
            return $1
        }
        
        
        let debugMessageLookAtMe:String = """
            
            
            
            ======== THIS IS THE ONE THAT'S FAILING! LOOK AT MEEE :3 ======
            
            
            
            """
        
        if $0 == 113 {
            print(debugMessageLookAtMe)
        }
        
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
        
        print("********** \n")
        print("bitArrayRaw: \(bitArray)")
        if bitArray.count != 8 {
            print("It size of array isn't 8. Now adding zeroes.")
            bitArray.append(0)
            print("bitArrayRaw after adding 0 to get size count of 8: \(bitArray)")
        }
        
        bitArray = bitArray.reversed()
        print("Bit array now reversed: \(bitArray)")
        
        var copyTuple:(String, String, String) = $1
        print("Original Tuple: \(copyTuple)\n")
        
        while bitArray.isEmpty != true {
            let currentBit:Int = bitArray.popLast()!
            print("Current bit: \(String(describing: currentBit))")
            
            
            if currentBit == 0 {
                copyTuple = flipper(copyTuple)
            } else if currentBit == 1{
                copyTuple = rotator(copyTuple)
            }
            
            print("After action: \(copyTuple)")
            print("The remaining bits in Array: \(bitArray) \n")
        }
        
        print("THE FINISHER: \(copyTuple)")
        
        if $0 == 113 {
            print(debugMessageLookAtMe)
        }
        
        return copyTuple
        
    }
    
    return closedSyn
}
