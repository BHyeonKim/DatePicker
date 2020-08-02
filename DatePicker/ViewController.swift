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
    var alarmTime = ""
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelecter, userInfo: nil, repeats:  true)
        
    }
    
    @objc func updateTime(){
//        lblCurrentTime.text = String(count)
//        count = count + 1
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        let currentTime = formatter.string(from: date as Date)
        
        if(alarmTime == currentTime){
            view.backgroundColor = UIColor.red
        }
        view.backgroundColor = UIColor.white
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        alarmTime = formatter.string(from: datePickerView.date)
    }
    

    

}

