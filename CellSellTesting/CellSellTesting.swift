//
//  CellSellTesting.swift
//  CellSellTesting
//
//  Created by Nikita Zhdanov on 2024-09-20.
//

import Testing

struct CellSellTesting {

    @Test func test1() {
        let result = planCost(dayTimeMinutes: 300, eveningMinutes: 145, weekendMinutes: 50)
        
        #expect(result == "A: $81.75\nB: $85.75\nA<")
        
    }
    
    @Test func test2() {
        let result = planCost(dayTimeMinutes: 262, eveningMinutes: 90, weekendMinutes: 10)
        
        #expect(result == "A: $56.0\nB: $39.40\nB<")
        
    }
    
    @Test func test3() {
        let result = planCost(dayTimeMinutes: 296, eveningMinutes: 140, weekendMinutes: 6)
        
        #expect(result == "A: $71.20\nB: $71.20\nA=B")
        
    }
    @Test func test4() {
        let result = planCost(dayTimeMinutes: 200, eveningMinutes: 150, weekendMinutes: 10)
        
        #expect(result == "A: $49.50\nB: $55.0\nA<")
        
    }
    @Test func test5() {
        let result = planCost(dayTimeMinutes: 210, eveningMinutes: 110, weekendMinutes: 70)
        
        #expect(result == "A: $58.0\nB: $56.0\nB<")
        
    }
    @Test func test6() {
        let result = planCost(dayTimeMinutes: 210, eveningMinutes: 130, weekendMinutes: 30)
        
        #expect(result == "A: $53.0\nB: $53.0\nA=B")
        
    }
    @Test func test7() {
        let result = planCost(dayTimeMinutes: 75, eveningMinutes: 30, weekendMinutes: 50)
        
        #expect(result == "A: $14.50\nB: $23.0\nA<")
        
    }
    @Test func test8() {
        let result = planCost(dayTimeMinutes: 0, eveningMinutes: 0, weekendMinutes: 0)
        
        #expect(result == "A: $0.0\nB: $0.0\nA=B")
        
    }

}
