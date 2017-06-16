//
//  ViewController.swift
//  MiraclePill
//
//  Created by Sujanth Sebamalaithasan on 15/6/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTxtFld: UITextField!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var addressTxtFld: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxtFld: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var countryTxtFld: UITextField!
    @IBOutlet weak var zipCodeTxtFld: UITextField!
    @IBOutlet weak var successImg: UIImageView!
    
    @IBOutlet weak var buynowBtn: UIButton!
    
    let states = ["Northern Territory", "Queensland", "South Australia", "New South Wales", "Victoria", "Western Australia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        
        countryLbl.isHidden = true
        countryTxtFld.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxtFld.isHidden = true
        buynowBtn.isHidden = true
    }
    
    @IBAction func buynowBtnPressed(_ sender: Any) {
        
        successImg.isHidden = false
        
        fullNameLbl.isHidden = true
        fullNameTxtFld.isHidden = true
        addressLbl.isHidden = true
        addressTxtFld.isHidden = true
        cityLbl.isHidden = true
        cityTxtFld.isHidden = true
        statePickerBtn.isHidden = true
        countryLbl.isHidden = true
        countryTxtFld.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxtFld.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        countryLbl.isHidden = false
        countryTxtFld.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeTxtFld.isHidden = false
        buynowBtn.isHidden = false
    }
    


}

