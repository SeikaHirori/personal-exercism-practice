// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes:Int, expectedMinutesInOven:Int = 40) -> Int {
    /* Note: https://exercism.org/tracks/swift/concepts/default-parameters */
    
    return expectedMinutesInOven - elapsedMinutes
}


// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers:String...) -> Int {
    /* Note:  https://exercism.org/tracks/swift/concepts/variadic-parameters */
    var outputTime:Int = 0
    
    for _ in layers {
        outputTime += 2
    }
    
    return outputTime
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    let amountNoodlePerLayer: Int = 3
    let amountSaucePerLayer: Double = 0.2
    
    var quantityNoodle:Int = 0
    var quantitySauce:Double = 0.0
    
    for layer in layers {
        switch layer {
        case "noodles":
            quantityNoodle += amountNoodlePerLayer
        case "sauce":
            quantitySauce += amountSaucePerLayer
        default:
            continue
        }
    }
    
    return (noodles: quantityNoodle, sauce: quantitySauce)
}

// TODO: define the 'toOz' function
func toOz(_ originalValue: inout (noodles: Int, sauce: Double)) {
    /* Note: https://exercism.org/tracks/swift/concepts/inout-parameters */
    
    let convertLiterToOz:Double = 33.814
    
    let sauceOz = originalValue.sauce * convertLiterToOz
    
    originalValue.sauce = sauceOz
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    <#function body#>
}
