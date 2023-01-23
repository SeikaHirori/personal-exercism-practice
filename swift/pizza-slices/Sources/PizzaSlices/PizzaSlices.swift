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
    let convertDiameterA:Double? = Double(diameterA)
    let convertDiameterB:Double? = Double(diameterB)
    
    if convertDiameterA == nil && convertDiameterB == nil {
        return "Neither slice is bigger"
    }
    
    if convertDiameterB == nil  {
        return "Slice A is bigger."
    } else if convertDiameterA == nil {
        return "Slice B is bigger."
    }
    
    
    
    var output:String = ""
    
    
    
    return output
}
