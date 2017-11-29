//
//  RentViewController.swift
//  quiz19sept
//
//  Created by abdul fatah on 9/19/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class RentViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var rent: UITextField!
    @IBOutlet weak var totalBeli: UILabel!
    @IBOutlet weak var discount: UILabel!
    @IBOutlet weak var totalBayar: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnRent(_ sender: Any) {
        let hour : Double? = Double(rent.text!)
        let ours : Double = (hour!) * 100000
        var Hours = (hour!)
        if Hours == 10 {
            let total = (0.85 * ours)
            let diskon = (ours * 0.15)
            totalBeli.text = "Before Discount =\(Hours)" + "00"
            discount.text = "Discount =\(diskon)"
            totalBayar.text = "After Discount =\(total)"
        }else if Hours == 5 {
            let total = (0.90 * ours)
            let diskon = (ours * 0.10)
            totalBeli.text = "Before Discount =\(Hours)" + "00"
            discount.text = "Discount =\(diskon)"
            totalBayar.text = "After Discount =\(total)"
        }else if Hours == 3 {
            let total = (0.95 * ours)
            let diskon = (ours * 0.5)
            totalBeli.text = "Before Discount =\(Hours)" + "00"
            discount.text = "Discount =\(diskon)"
            totalBayar.text = "After Discount =\(total)"
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
