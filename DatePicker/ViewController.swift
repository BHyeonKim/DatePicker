//
//  ViewController.swift
//  DatePicker
//
//  Created by 김보현 on 2020/07/31.
//  Copyright © 2020 김보현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    

}

