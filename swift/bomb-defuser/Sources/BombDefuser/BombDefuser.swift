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
  fatalError("Please implement the makeShuffle(flipper:rotator:) function")
}
