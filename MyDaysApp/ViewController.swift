//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Pavel on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonTappped() {
        infoLabel.text = "Ты насдаждаешься жизнью уже \(numberOfDays)"
    }
}

