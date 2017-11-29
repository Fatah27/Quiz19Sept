//
//  ViewController.swift
//  quiz19sept
//
//  Created by abdul fatah on 9/19/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var salary: UITextField!
    @IBOutlet weak var lblHasil: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnCount(_ sender: Any) {
        let Salary : Int = Int(salary.text!)!
        let Year : Int = Salary * 12
        
        if Year >= 40000000 {
            let alertDialog = UIAlertController(title: "Great", message: "you can travel in the word", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil )
            
        } else if Year >= 30000000 && Year == 39000000{
            let alertDialog = UIAlertController(title: "Good", message: "you can buy the car ", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil )
            
        }else if Year <= 20000000 {
            let alertDialog = UIAlertController(title: "Good", message: "you can holiday in bali", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil )
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

