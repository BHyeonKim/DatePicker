//
//  ViewController.swift
//  DatePicker
//
//  Created by 김보현 on 2020/07/31.
//  Copyright © 2020 김보현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelecter: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelecter, userInfo: nil, repeats:  true)
    }
    
    @objc func updateTime(){
        lblCurrentTime.text = String(count)
        count = count + 1
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    

}

