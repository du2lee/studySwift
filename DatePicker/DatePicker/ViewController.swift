//
//  ViewController.swift
//  DatePicker
//
//  Created by 이두희 on 2023/02/13.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    let formatter = DateFormatter()
    var selectTime = ""
    var currentTime = ""
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblSelectTime: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        formatter.dateFormat = "hh:mm aaa"
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        selectTime = formatter.string(from: datePickerView.date)
        lblSelectTime.text = "선택시간 : " + selectTime
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count += 1
        
        let date = NSDate()
        currentTime = formatter.string(from: date as Date)
        lblCurrentTime.text = "현재시간 : " + currentTime
        
        if (currentTime == selectTime) {
            view.backgroundColor = UIColor.red
        } else{
            view.backgroundColor = UIColor.white
        }
    }
    
}

