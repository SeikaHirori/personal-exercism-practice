import Darwin

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    // fatalError("Please implement the sliceSize(diameter:slices:) function")
    guard let unwrapDiameter:Double = diameter else {
        return nil}
    guard let unwrapSlices:Int = slices else {
        return nil}
    
    guard unwrapDiameter >= 0 else {
        return nil
    }
    guard unwrapSlices >= 1 else {
        return nil
    }
    
    
    var output:Double = 0.0
    
    let radius:Double = unwrapDiameter / 2.0

    let area = Double.pi * pow(radius, 2)
    
    output = area / Double(unwrapSlices)
    
    return output
}
    

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  // fatalError("Please implement the biggestSlice(diameterA:slicesA:diameterB:slicesB:) function")
    
    // Using guard doesn't work as we do not want to return or throw this early
//    guard let unwrappedDiameterA = Double (diameterA) else {
//        let unwrappedDiameterA:Double? = nil
//    }
    // constants
    let winnerA = "Slice A is bigger"
    let winnerB = "Slice B is bigger"
    let tieGame = "Neither slice is bigger"
    
    
    let convertDiameterA:Double? = Double(diameterA)
    let convertSlicesA:Int? = Int(slicesA)
    
    let convertDiameterB:Double? = Double(diameterB)
    let convertSlicesB:Int? = Int(slicesB)
    
    
    let optionalSliceSizeA:Double? = sliceSize(diameter: convertDiameterA, slices: convertSlicesA)
    let optionalSliceSizeB:Double? = sliceSize(diameter: convertDiameterB, slices: convertSlicesB)
    
    
    if optionalSliceSizeA == nil && optionalSliceSizeB == nil {
        return tieGame
    } else if optionalSliceSizeB == nil  {
        return winnerA
    } else if optionalSliceSizeA == nil {
        return winnerB
    }
    
    
    let doubleSliceSizeA:Double = optionalSliceSizeA!
    let doubleSliceSizeB:Double = optionalSliceSizeB!
    
    if doubleSliceSizeA > doubleSliceSizeB {
        return winnerA
    } else if doubleSliceSizeA < doubleSliceSizeB {
        return winnerB
    } else {
        return tieGame
    }
    
}
