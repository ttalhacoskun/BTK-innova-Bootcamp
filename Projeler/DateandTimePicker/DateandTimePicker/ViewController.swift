//
//  ViewController.swift
//  DateandTimePicker
//
//  Created by Talha Coşkun on 22.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfSaat: UITextField!
    
    @IBOutlet weak var tfTarih: UITextField!
    
    var timePicker : UIDatePicker?
    var datepicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfSaat.inputView = timePicker
        
        
        datepicker = UIDatePicker()
        datepicker?.datePickerMode = .date
        tfTarih.inputView = datepicker
        
        if #available(iOS 13.4, *){
            timePicker?.preferredDatePickerStyle = .wheels
            datepicker?.preferredDatePickerStyle = .wheels
        }
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunma))
        view.addGestureRecognizer(dokunmaAlgilama)
        
        timePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker:)), for: .valueChanged)
        datepicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker:)), for: .valueChanged)
        
        
    }
    
    @objc func dokunma() {
        
        print("ekrana tıklanıldı.")
        view.endEditing(true)
        
    }

    @objc func saatGoster(uiDatePicker:UIDatePicker){
    let saatFormat = DateFormatter()
        saatFormat.dateFormat = "HH:mm a"
        
        let alinanSaat = saatFormat.string(from: uiDatePicker.date)
        tfSaat.text = alinanSaat
        
    }
    @objc func tarihGoster(uiDatePicker:UIDatePicker){
    let tarihFormat = DateFormatter()
        tarihFormat.dateFormat = "EEEE, MMM d, yyyy"
        
        let alinanTarih = tarihFormat.string(from: uiDatePicker.date)
        tfTarih.text = alinanTarih
        
    }

}

