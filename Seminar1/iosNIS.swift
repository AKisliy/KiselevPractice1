//
//  iosNIS.swift
//  Seminar1
//
//  Created by Alexey Kiselev on 08.09.2023.
//

import Foundation
final class Student{
    var grades: [Double] = []
    var fullName: String
    
    init(grades: [Double] = [], fullName: String) {
        self.grades = grades
        self.fullName = fullName
    }
    
    func getGrade() -> Double{
        var sum = 0.0
        
        for grade in grades{
            sum += grade
        }
        return sum / Double(grades.count)
    }
}

final class iosNIS{
    static var students: [Student] = []
    
    static func getMaxAverage() -> Double{
        var maxAverage = 0.0
        for student in students{
            maxAverage = max(student.getGrade(), maxAverage)
        }
        return maxAverage
    }
    
}
