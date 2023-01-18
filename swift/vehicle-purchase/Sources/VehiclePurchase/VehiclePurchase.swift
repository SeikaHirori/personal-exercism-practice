let monthlyDuration:Double = 60.0

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  // fatalError("Please implement the canIBuy(vehicle:price:monthlyBudget:) function")
    var output:String
    /*  Psuedo code | User Story
        - Obtain monthlyPayment's quotient by: price / monthly duration
        - three options after you grab percent from: monthlyBudget / monthlyPayment
            - If above 10%: YOU CAN'T BUY IT :'[
            - if within 10% above of monthly budget: you keep buy it but you need to be frugal
            - If 0% or less: YOU'RE GETTING IT WITHOUT A SWEAT :3
     */
    
    let monthlyPayment:Double = price / monthlyDuration
    
    let percentDifference:Double = (monthlyPayment / monthlyBudget) - 1.00
    
    if percentDifference > 0.10 {
        output = "Darn! No \(vehicle) for me"
    } else if percentDifference <= 0.10 && percentDifference > 0.0 {
        output = "I'll have to be frugal if I want a \(vehicle)"
    } else {
        output = "Yes! I'm getting a \(vehicle)"
    }
    
    return output
}

func licenseType(numberOfWheels wheels: Int) -> String {
  fatalError("Please implement licenseType(numberOfWheels:) function")
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
  fatalError("Please implement registrationFee(msrp:yearsOld:) function")
}
