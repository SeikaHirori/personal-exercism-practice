let dailyRate:Int = 8
let billableDaysInMonth: Int = 22

func dailyRateFrom(hourlyRate: Int) -> Double {
  // fatalError("Please implement the dailyRateFrom(hourlyRate:) function")
    let output = Double(dailyRate * hourlyRate)
    
    return output
    
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  // fatalError("Please implement the monthlyRateFrom(hourlyRate:withDiscount:) function")
    var output:Double
    
    let dailyTotal = dailyRateFrom(hourlyRate: hourlyRate)
    
    let discountTotal = dailyTotal * discount
    
    let totalPostDiscount = dailyTotal - discountTotal
    
    output = totalPostDiscount * Double(billableDaysInMonth)
    
    return output
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  // fatalError("Please implement the workdaysIn(budget:hourlyRate:withDiscount:) function")
    
    
}
