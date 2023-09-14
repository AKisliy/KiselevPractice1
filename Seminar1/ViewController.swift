//
//  ViewController.swift
//  Seminar1
//
//  Created by Alexey Kiselev on 08.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(normalizeGrades())
        // Do any additional setup after loading the view.
    }

    func normalizeGrades() -> [String:Double]{
        iosNIS.students = [
            Student(grades: [3.51,10,9], fullName: "Tom"),
            Student(grades: [7,8,7.5], fullName: "Bob")
        ]
        var normGrades: Dictionary<String, Double> = [:]
        let maxAverage = iosNIS.getMaxAverage()
        for student in iosNIS.students{
            normGrades[student.fullName] = (student.getGrade() / maxAverage) * 10
        }
        return normGrades
    }

}

