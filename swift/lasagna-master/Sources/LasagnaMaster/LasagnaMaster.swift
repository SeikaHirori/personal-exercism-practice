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
    /* Note: https://exercism.org/tracks/swift/concepts/nested-functions */
    
    /* Psuedocode
     *** IMPORTANT: Need to use nested functions***
        - go crazy with nested functions for fun.
     - Two outcomes:
        - Serve white wine if there's more mozzarella, ricotta, and bechamel than meat and sauce.
        - Else, serve red wine
     - Bool:
        - True for red wine
        - false for white wine
     */
    guard layers.count > 1 else {
        switch layers {
        case ["meat"]:
            return true
        case ["sauce"]:
            return true
        default:
            return false
        }
    }
    
    var layersToGetWhiteWine:Int = 0
    var layersToGetRedWine:Int = 0
    
    /* Why function below failed the tests: ONLY FIVE SPECIFIC ITEMS WERE BEING ACCOUNTED FOR:
            - Red wine side:
                - sauce
                - meat
            - white wine side:
                - mozzarella
                - ricotta
                - bechamel
     
        Other items like eggplants SHOULD HAVE NOT be accounted.
     */
            
//    func checkLayers(_ inputLayers:[String]) {
//        // RFER 1... not used yet, but reference could be handy for future.
//        for layer in inputLayers {
//            switch layer {
//            case "meat":
//                layersToGetRedWine += 1
//            case "sauce":
//                layersToGetRedWine += 1
//            default:
//                layersToGetWhiteWine += 1
//            }
//        }
//    }
//    checkLayers(layers)
    
    func checkMeat(_ inputLayets:[String],_ item:String) -> Int {
        
    }
    func checkSauce() -> Int {
        
    }
    func checkMozzarella() -> Int {
        
    }
    func checkRicotta() -> Int {
        
    }
    func checkBechamel() -> Int {
        
    }
    
    var output_bool:Bool
    if layersToGetRedWine >= layersToGetWhiteWine {
        output_bool = true
    } else {
        output_bool = false
    }

    return output_bool
    
}
