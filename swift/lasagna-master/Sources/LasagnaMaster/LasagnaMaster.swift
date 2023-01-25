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
    
    /* Parting note:
        - Ideally, I wanted to pop elements out of the array if the targeted value is still in the array. However, there's no straightforward implementation from Swift lang from my brief Google search.
     
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
    func checkItem(_ item:String) -> Int {
        var output_count:Int = 0
        
        for layer in layers{
            if layer == item {
                output_count += 1
            }
        }
        return output_count
    }
    
    
    func checkMeat() -> Int {
        let targetedItem:String = "meat"
        
        return checkItem(targetedItem)
    }
    func checkSauce() -> Int {
        let targetedItem:String = "sauce"
        
        return checkItem(targetedItem)
    }
    func checkMozzarella() -> Int {
        let targetedItem:String = "mozzarella"
        
        return checkItem(targetedItem)
    }
    
    func checkRicotta() -> Int {
        let targetedItem:String = "ricotta"
        
        return checkItem(targetedItem)
    }
    
    func checkBechamel() -> Int {
        let targetedItem:String = "béchamel"

        return checkItem(targetedItem)
    }
    
    let countMeat:Int = checkMeat()
    let countSauce:Int = checkSauce()
    let countMozzarella:Int = checkMozzarella()
    let countRicotta:Int = checkRicotta()
    let countBechamel:Int = checkBechamel()

    layersToGetRedWine = countMeat + countSauce
    layersToGetWhiteWine = countMozzarella + countRicotta + countBechamel
    
    var output_bool:Bool
    if layersToGetRedWine >= layersToGetWhiteWine {
        output_bool = true
    } else {
        output_bool = false
    }

    return output_bool
    
}
