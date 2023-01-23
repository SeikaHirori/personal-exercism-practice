import Darwin

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    // fatalError("Please implement the sliceSize(diameter:slices:) function")
    guard let unwrapDiameter:Double = diameter else {return nil}
    guard let unwrapSlices:Int = slices else {return nil}
    
    
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
  fatalError("Please implement the biggestSlice(diameterA:slicesA:diameterB:slicesB:) function")
}
