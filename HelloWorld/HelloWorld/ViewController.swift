//
//  ViewController.swift
//  HelloWorld
//
//  Created by 이두희 on 2023/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbTitle: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lbTitle.text = "Hello," + txtName.text!
    }
    
}

