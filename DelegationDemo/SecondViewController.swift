//
//  SecondViewController.swift
//  DelegationDemo
//
//  Created by Eman Khaled on 06/06/2023.
//

import UIKit

class SecondViewController: UIViewController {
    var str: String = ""
    @IBOutlet weak var myLabel: UILabel!
    var p: clerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        myLabel.text = str
    }

    @IBAction func clerBtn(_ sender: Any) {
        p?.clearText()
        self.navigationController?.popViewController(animated: true)
    }
}
