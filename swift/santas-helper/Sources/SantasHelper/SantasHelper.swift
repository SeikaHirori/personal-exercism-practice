import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  // fatalError("Please implement the cartesianToPolar(_:) function.")
    
    let outputR:Double = (pow(cart.x, 2) + pow(cart.y, 2)).squareRoot()
    
    let outputPhi:Double = atan2(cart.y, cart.x)
    
    return (outputR, outputPhi)
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  fatalError("Please implement the combineRecords(production:gifts:) function.")
}
