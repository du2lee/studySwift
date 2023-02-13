//
//  ViewController.swift
//  imageViewer
//
//  Created by 이두희 on 2023/02/13.
//

import UIKit

class ViewController: UIViewController {
    var page = 1
    var name: String = ""

    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        name = "newJeans_1.jpg"
        imgView.image = UIImage(named: name)
    }

    @IBAction func btnNext(_ sender: UIButton) {
        if (page < 3){
            page += 1
        }
        name = "newJeans_" + String(page) + ".jpg"
        imgView.image = UIImage(named: name)
    }
    
    @IBAction func btnPrev(_ sender: UIButton) {
        if (page > 1){
            page -= 1
        }
        name = "newJeans_" + String(page) + ".jpg"
        imgView.image = UIImage(named: name)
    }
}

