// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven:Int = 40

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes:Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers:Int) -> Int {
    let minutesPerLayer:Int = 2
    return minutesPerLayer * layers
}

// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers:Int, elapsedMinutes:Int) -> Int {
    var total:Int // Modified to test declartion without value assignment
    total = elapsedMinutes
    total = total + preparationTimeInMinutes(layers: layers)
    
    return total
}
