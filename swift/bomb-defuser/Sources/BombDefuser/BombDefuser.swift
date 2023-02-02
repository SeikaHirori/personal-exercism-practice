import Foundation

//let flip: (String, String, String) -> (String, String, String) = TODO: Please define the flip closure
let flip:((String,String,String)) -> ((String, String, String)) = {
//    return (a.1, a.0, a.2)
    return ($0.1, $0.0, $0.2)
}


//
//
//let rotate: (String, String, String) -> (String, String, String) = TODO: Please define the stopAtOne closure


func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  fatalError("Please implement the makeShuffle(flipper:rotator:) function")
}
