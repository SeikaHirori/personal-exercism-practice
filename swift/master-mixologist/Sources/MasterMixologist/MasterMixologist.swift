func timeToPrepare(drinks: [String]) -> Double {
    // fatalError("Please implement the timeToPrepare(drinks:) function")
    var preparationTime:Double = 0.0
    
    let zeroPointFiveMinutesDrinks: [String] = ["beer", "soda", "water"]
    let onePointZeroMinutesDrinks: [String] = ["shot",]
    let onePointFiveMinutesDrinks: [String] = ["mixed drink",]
    let twoPointFiveMinutesDrinks: [String] = ["fancy drink",]
    let threePointZeroMinutesDrinks: [String] = ["frozen drink",]

    var copyDrinks = drinks

    repeat {
        let drink:String = copyDrinks.popLast() ?? "_"
        
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
  // fatalError("Please implement the makeWedges(needed:limes:) function")
    guard limes.isEmpty != true else {
        return 0
    }
    
    var outputLimeCutUp: Int = 0
    var copyNeeded: Int = needed
    var copyLimes: [String] = limes
    
    
    let smallLimeWedges: Int = 6
    let mediumLimeWedges: Int = 8
    let largeLimeWedges: Int = 10
    
    print("Starting loop")
    while copyNeeded > 0 && copyLimes.isEmpty != true {
        
        let currentLime:String = copyLimes[0]
        copyLimes.removeFirst()
        outputLimeCutUp += 1
        
        
        switch currentLime {
        case "small":
            copyNeeded -= smallLimeWedges
        case "medium":
            copyNeeded -= mediumLimeWedges
        case "large":
            copyNeeded -= largeLimeWedges
        default:
            print("hello :3")
        }
        
        print("We need \(copyNeeded) wedges still.")
    }
    
    print("Ending func. limes cutted up: \(outputLimeCutUp)")
    return outputLimeCutUp
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
//  fatalError("Please implement the finishShift(minutesLeft:remainingOrders:) function")
    
    var copyMinutesLeft:Double = Double(minutesLeft)
    var outputRemainingOrders: [[String]] = remainingOrders
    
    repeat {
        let currentOrder = outputRemainingOrders[0]
        outputRemainingOrders.removeFirst()
        
        copyMinutesLeft -= timeToPrepare(drinks: currentOrder)
        
    } while copyMinutesLeft > 0 && outputRemainingOrders.isEmpty != true
    
    return outputRemainingOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
//  fatalError("Please implement the orderTracker(orders:) function")
    
    var firstBeerTime:String? = nil
    var lastBeerTime:String? = nil
    var totalBeerAmount: Int = 0
    
    var firstSodaTime:String? = nil
    var lastSodaTime:String? = nil
    var totalSodaAmount: Int = 0
    
    for order in orders {
        let currentDrink = order.drink.lowercased() // Adding lowercased to be safe
        let currentTime = order.time
        
        if currentDrink == "beer" {
            if firstBeerTime == nil {
                firstBeerTime = currentTime
            }
            lastBeerTime = currentTime
            totalBeerAmount += 1
            
        } else if currentDrink == "soda"{
            if firstSodaTime == nil {
                firstSodaTime = currentTime
            }
            lastSodaTime = currentTime
            totalSodaAmount += 1
        }
    }
    
    var outputBeer: (String, String, Int)? = nil
    var outputSoda: (String, String, Int)? = nil
    
    if firstBeerTime != nil && lastBeerTime != nil && totalBeerAmount > 0 {
        outputBeer = (first: firstBeerTime!, last: lastBeerTime!, total: totalBeerAmount)
    }
    
    if firstSodaTime != nil && lastSodaTime != nil && totalSodaAmount > 0 {
        outputSoda = (first: firstSodaTime!, last: lastSodaTime!, total: totalSodaAmount)
    }
    
    if outputBeer != nil && outputSoda != nil {
        return (beer: outputBeer, soda:outputSoda)
    } else if outputBeer != nil && outputSoda == nil {
        return (beer: outputBeer, soda: nil)
    } else if outputBeer == nil && outputSoda != nil {
        return (beer: nil, soda:outputSoda)
    } else {
        return (beer: nil, soda: nil)
    }
}
