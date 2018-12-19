//
//  SettingsViewController.swift
//  Redeemed Youth App
//
//  Created by Roman Kucheryavyy on 12/18/18.
//  Copyright © 2018 Ross M. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var ministryNotificationTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterPasswordButton: UIButton!
    
    let ministries = ["Youth",
                      "Band",
                      "WorshipBand",
                      "Leaders",
                      "Youth Choir",
                      "Teens",
                      "Mens Choir"]
    
    var selectedMinistry: String?
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createMinistryPicker()
        createToolbar()

        // Do any additional setup after loading the view.
    }
    
    func createMinistryPicker() {
        
        let ministryPicker = UIPickerView()
        ministryPicker.backgroundColor = UIColor.darkGray
        ministryPicker.delegate = self
        
        ministryNotificationTextField.inputView = ministryPicker
    }
    
    func createToolbar() {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(SettingsViewController.dismissKeyboard))
        doneButton.tintColor = UIColor.cyan
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.barTintColor = UIColor.darkGray
        toolBar.backgroundColor = UIColor.darkGray
        toolBar.isUserInteractionEnabled = true
        
        ministryNotificationTextField.inputAccessoryView = toolBar
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    

}

extension SettingsViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->  Int {
        return ministries.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ministries[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedMinistry = ministries[row]
        ministryNotificationTextField.text = selectedMinistry
        
        if ministryNotificationTextField.text != nil {
                passwordTextField.isHidden = false
                enterPasswordButton.isHidden = false
        }
    }
    
}
