//
//  ViewController.swift
//  WidgetKullanimi
//
//  Created by Talha Coşkun on 22.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var mSwitch: UISwitch!
    @IBOutlet weak var labelSegmented: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var labelSlider: UILabel!
    @IBOutlet weak var sliderBar: UISlider!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSwitch.text = ""
        labelSegmented.text = "Kategori Seçiniz"
        labelSlider.text = String(Int(sliderBar.value))
        labelStepper.text = String(Int(stepper.value))
        indicator.isHidden = true
    }
    
    
    
    @IBAction func buttonOku(_ sender: Any) {
        
        if let alinanVeri = textFieldGirdi.text{
            labelSonuc.text = alinanVeri
        }
        
    }
    
    @IBAction func butonResim2(_ sender: Any) {
        imageView.image = UIImage.init(named: "resim2")
        
    }
    
    @IBAction func butonResim1(_ sender: Any) {
        imageView.image = UIImage.init(named: "resim1")
    }
    
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        
        if sender.isOn {
            
            labelSwitch.text = "ON"
            
        }else {
            
            labelSwitch.text = "OFF"
        }
        
    }
    
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        
        let secilenındeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenındeks)
        labelSegmented.text = secilenKategori
        
    }
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        
        labelStepper.text  = String(Int(sender.value))
        
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        
        indicator.isHidden = false
        indicator.startAnimating()
        
    }
    
    
    @IBAction func buttonDur(_ sender: Any) {
        
        indicator.isHidden = true
        indicator.stopAnimating()
        
    }
    
    
    
    
    
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        
        print("Switch durum : \(mSwitch.isOn)")
        let secilenındeks = segmentedControl.selectedSegmentIndex
        let secilenKategori = segmentedControl.titleForSegment(at: secilenındeks)
        print("seçilen Kategori : \(String(describing: secilenKategori))")
        print("sadsadas : \(sliderBar.value)")
        print("dsfsdfasdad : \(stepper.value)")
    }
    
    @IBAction func sliderDegisimi(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
        
        
        
    }
    
    
    @IBAction func buttonAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .destructive)
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive)
        alertController.addAction(tamamAction)
        
        
        self.present(alertController, animated: true)
        
        
        
    }
    
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .destructive)
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive)
        alertController.addAction(tamamAction)
        
        
        self.present(alertController, animated: true)
        
        
    }
    
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Login", message: "Giriş Yapınız", preferredStyle: .alert)
        
        alertController.addTextField{textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
        }
        alertController.addTextField{textfield in
            textfield.placeholder = "Şifre"
            textfield.keyboardType = .numberPad
            textfield.isSecureTextEntry = true
        }
            
        let girisAction = UIAlertAction(title: "Cancel", style: .cancel){action in
            let tfEmail = alertController.textFields![0] as UITextField
            let tfsifre = alertController.textFields![1] as UITextField
            
            if let Email = tfEmail.text, let sifre = tfsifre.text {
                print("E-mail : \(Email)")
                print("E-mail : \(sifre)")
            }
        }
            alertController.addAction(girisAction)
            
            self.present(alertController, animated: true)
            
        }
        
    }
