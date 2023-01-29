func timeToPrepare(drinks: [String]) -> Double {
    // fatalError("Please implement the timeToPrepare(drinks:) function")
    var preparationTime:Double = 0.0
    
    var copyDrinks = drinks
    
    repeat {
        let drink:String = copyDrinks.popLast() ?? "_"
        
        let zeroPointFiveMinutesDrinks: [String] = ["beer", "soda", "water"]
        let onePointZeroMinutesDrinks: [String] = ["shot",]
        let onePointFiveMinutesDrinks: [String] = ["mixed drink",]
        let twoPointFiveMinutesDrinks: [String] = ["fancy drink",]
        let threePointZeroMinutesDrinks: [String] = ["frozen drink",]
        
        
        if zeroPointFiveMinutesDrinks.contains(drink) {
            preparationTime += 0.5
        } else if onePointZeroMinutesDrinks.contains(drink) {
            preparationTime += 1.0
        } else if onePointFiveMinutesDrinks.contains(drink) {
            preparationTime += 1.5
        } else if twoPointFiveMinutesDrinks.contains(drink) {
            preparationTime += 2.5
        } else if threePointZeroMinutesDrinks.contains(drink) {
            preparationTime += 3.0
        }
        
    } while copyDrinks.isEmpty != true
    
    
    return preparationTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  fatalError("Please implement the makeWedges(needed:limes:) function")
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  fatalError("Please implement the finishShift(minutesLeft:remainingOrders:) function")
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  fatalError("Please implement the orderTracker(orders:) function")
}
