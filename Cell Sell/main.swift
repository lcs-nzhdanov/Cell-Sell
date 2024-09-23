import Foundation
     
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


func planCost(dayTimeMinutes: Int, eveningMinutes: Int, weekendMinutes: Int) -> String {
    
    // 2. Process
    
    // Calculate costs for plan A
    var a = 0
    var b = 0
    
    var freeMinutesA = 100
    var freeMinutesB = 250
    
    var comparing = ""
    
    // Add daytime cost
    if dayTimeMinutes < 100 {
        freeMinutesA = dayTimeMinutes
    }
    
    if dayTimeMinutes < 250 {
        freeMinutesB = dayTimeMinutes
    }
    
    
    // Calculate plan options
    a += (dayTimeMinutes - freeMinutesA) * 25 + eveningMinutes * 15 + weekendMinutes * 20
    b += (dayTimeMinutes - freeMinutesB) * 45 + eveningMinutes * 35 + weekendMinutes * 25
    
    
    // 3. Output
    
    
    
    // Create an output
    if a > b {
        comparing = "B<"
    } else if a == b {
        comparing = "A=B"
    } else {
        comparing = "A<"
    }
    
    return "A: $\(a/100).\(a%100)\nB: $\(b/100).\(b%100)\n\(comparing)"
    
}


print(planCost(dayTimeMinutes: 300, eveningMinutes: 145, weekendMinutes: 50))
