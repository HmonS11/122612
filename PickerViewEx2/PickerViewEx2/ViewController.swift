//
//  ViewController.swift
//  PickerViewEx2
//
//  Created by runnysun on 2022/10/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    let flags = ["ec", "sn", "nl", "qa", "gb-wls", "ir", "us", "gb-eng", "sa", "pl", "mx", "ar", "au", "tn", "dk", "fr", "cr", "jp", "de", "es", "ca", "ma", "hr", "be", "cm", "rs", "ch", "br", "gh", "kr", "uy", "pt"]
    
    
    
    let countries = ["Ecuador", "Senegal", "Netherlands", "Qatar", "Wales", "Iran", "USA", "England", "Saudi Arabia", "Poland", "Mexico", "Argentina", "Australia", "Tunisia", "Denmark", "France", "Costa Rica", "Japan", "Germany", "Spain", "Canada", "Morocco", "Croatia", "Belgium", "Cameroon", "Serbia", "Switzerland", "Brazil", "Ghana", "South Korea", "Uruguay", "Portugal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view.
        picker.dataSource = self
        picker.delegate = self
    }

    @IBOutlet weak var label1: UILabel!

    
    }


extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    }
extension ViewController: UIPickerViewDelegate{func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> Int {
    countries.count
    
}
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIImageView()
        view.image = UIImage(named: flags[row])
        view.contentMode = .scaleAspectFit
        return view
    }
      
    }
func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    return 100
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {UILabel.text =  countries[row]
        
    }
}
