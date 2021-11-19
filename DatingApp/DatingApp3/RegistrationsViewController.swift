//
//  RegistrationsViewController.swift
//  DatingApp3
//
//  Created by Wildline  Lincifort on 11/18/21.
//

import UIKit

class RegistrationsViewController: UIViewController {

    
    
    
    @IBOutlet weak var FullNameTxt: UITextField!
    
    @IBOutlet weak var BirthDateTxt: UITextField!
    
    @IBOutlet weak var GenderTxt: UITextField!
    
    @IBOutlet weak var SexualOriTxt: UITextField!
    
    @IBOutlet weak var LocationTxt: UITextField!
    
    @IBOutlet weak var AgeTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        private var datePicker = UIDatePicker()
        dataPicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(RegistrationsViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(RegistrationsViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        BirthDateTxt.inputview = datePicker
        
        // Do any additional setup after loading the view.
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
        
    }
    
    @objc func dateChanged(datePicker: UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter. dateFormat = "MM/dd/yyyy"
        BirthDateTxt.inputview = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
