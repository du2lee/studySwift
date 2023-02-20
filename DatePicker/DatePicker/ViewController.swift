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
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblSelectTime: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        lblSelectTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count += 1
        
        let date = NSDate()
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
    }
    
}

