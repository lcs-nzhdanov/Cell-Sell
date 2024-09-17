import Foundation
 

while true {
    
    // 1. Input
    
    // Get number of daytime minutes
    var dayTimeMinutes = 0
    var eveningMinutes = 0
    var weekendMinutes = 0
    
    
    func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
        
        // Loop until a valid value is provided
        while true {
            
            // Prompt the user
            print(prompt)
            
            // Collect the input
            guard let givenInput = readLine() else {
                continue
            }
            
            // Convert to an integer
            guard let givenInteger = Int(givenInput) else {
                continue
            }
            
            // If a lowest value for the integer was specified...
            if let minimumValue = minimum {
                
                // ... then check that the given integer is greater than or equal to the lowest desired value.
                guard givenInteger >= minimumValue else {
                    continue
                }
                
            }
            
            // If an highest possible value for the integer was specified...
            if let maximumValue = maximum {
                
                // ... then check that the given integer is less than or equal to the highest desired value.
                guard givenInteger <= maximumValue else {
                    continue
                }
                
                
            }
            
            // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
            return givenInteger
            
        }
        
    }
    
    
    dayTimeMinutes = getInput(withPrompt: "Number of daytime minutes?", minimum: 0, maximum: nil)
    eveningMinutes = getInput(withPrompt: "Number of evening minutes?", minimum: 0, maximum: nil)
    weekendMinutes = getInput(withPrompt: "Number of weekend minutes?", minimum: 0, maximum: nil)

    
    
    // 2. Process
    
    // Calculate costs for plan A
    var a = 0
    var b = 0
    
    var freeMinutesA = 100
    var freeMinutesB = 250
    
    // Add daytime cost
    if dayTimeMinutes < 100 {
        freeMinutesA = dayTimeMinutes
    }
    
    if dayTimeMinutes < 250 {
        freeMinutesB = dayTimeMinutes
    }
    
    
    a += (dayTimeMinutes - freeMinutesA) * 25 + eveningMinutes * 15 + weekendMinutes * 20
    b += (dayTimeMinutes - freeMinutesB) * 45 + eveningMinutes * 35 + weekendMinutes * 25
    
    
    // Calculate costs for plan B
    
    // 3. Output
    print("Plan A costs $\(a/100).\(a%100)")
    print("Plan B costs $\(b/100).\(b%100)")
    
    
    if a > b {
        print("Plan B is the cheapest")
    } else if a == b {
        print("Plans A and B are the same price")
    } else {
        print("Plan A is the cheapest")
    }
    
}
