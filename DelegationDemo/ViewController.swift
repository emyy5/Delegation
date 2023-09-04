//
//  ViewController.swift
//  DelegationDemo
//
//  Created by Eman Khaled on 06/06/2023.
//

import UIKit

class ViewController: UIViewController, clerProtocol {
    func clearText() {
        lblTextF.text = ""
    }
    
    @IBOutlet weak var lblTextF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnShow(_ sender: Any) {
        let secVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secVC, animated: true)
    
        secVC.str = lblTextF.text!
        secVC.p = self // p= v1
        
    }
}

