//
//  InfoViewController.swift
//  Tabla
//
//  Created by Darshan Kalola on 7/18/17.
//  Copyright © 2017 Darshan Kalola. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tablaHitName.delegate = self
        self.tablaHitName.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var tablaHitData: [String : String] = ["Na":"one finger tap", "Tin":"two finger tap", "Taka":"three finger tap", "Ghe":"one finger tap", "Ka":"two finger tap"]
    
    
    @IBOutlet weak var tablaHitName: UIPickerView!
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tablaHitData.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array(tablaHitData.keys)[row]
    }
    
    @IBOutlet weak var fingerPatternLabel: UILabel!
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        fingerPatternLabel.text! = Array(tablaHitData.values)[row]
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
