import Foundation

//let flip: (String, String, String) -> (String, String, String) = TODO: Please define the flip closure
let flip = { (a:(String, String, String)) -> ((String, String, String)) in
    return (a.1, a.0, a.2)
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
