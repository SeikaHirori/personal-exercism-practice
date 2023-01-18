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

let licenseMotorcycle:Set<Int> = Set([2,3])
let licenseAutomobile:Set<Int> = Set([4,6])
let licenseCommericalTrucking: Set<Int> = Set([18])

func licenseType(numberOfWheels wheels: Int) -> String {
  // fatalError("Please implement licenseType(numberOfWheels:) function")

    var output:String = "We do not issue licenses for those types of vehicles"
    
    if licenseMotorcycle.contains(wheels)  {
        output = "You will need a motorcycle license for your vehicle"
    } else if licenseAutomobile.contains(wheels) {
        output = "You will need an automobile license for your vehicle"
    } else if licenseCommericalTrucking.contains(wheels) {
        output = "You will need a commercial trucking license for your vehicle"
    }

    return output
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
  fatalError("Please implement registrationFee(msrp:yearsOld:) function")
}
