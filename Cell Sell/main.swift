import Foundation
 
// 1. Input
 
// Get number of daytime minutes
var dayTimeMinutes = 0
var eveningMinutes = 0
var weekendMinutes = 0

while true {
    
    // Prompt
    print("Number of daytime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    if Int(givenInteger) != nil {
        dayTimeMinutes = givenInteger
        break
    }
 
}


while true {
    
    // Prompt
    print("Number of evening minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    if Int(givenInteger) != nil {
        eveningMinutes = givenInteger
        break
    }
 
}



while true {
    
    // Prompt
    print("Number of weekend minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    if Int(givenInteger) != nil {
        weekendMinutes = givenInteger
        break
    }
 
}



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
