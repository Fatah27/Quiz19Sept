//
//  pickerViewController.swift
//  quiz19sept
//
//  Created by abdul fatah on 9/19/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class pickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var pickTown: UIPickerView!
    @IBOutlet weak var lblHasil: UILabel!
    
    var town =
        [["Jakarta","Bali","Bogor","bandung"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickTown.dataSource = self
        self.pickTown.delegate = self

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return town[0].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return town[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (row == 0 ) {
            self.view.backgroundColor=UIColor.blue
            lblHasil.text = "JAKARTA"
        } else if (row == 1 ) {
            self.view.backgroundColor=UIColor.green
            lblHasil.text = "BALI"
        } else if (row == 2 ) {
            self.view.backgroundColor=UIColor.red
            lblHasil.text = "BANDUNG"
        } else if (row == 3 ) {
            self.view.backgroundColor=UIColor.yellow
            lblHasil.text = "BOGOR"
        }
        lblHasil.text = " \(row)"
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
