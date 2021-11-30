//
//  ViewController.swift
//  UnitConverter
//
//  Created by Дарья Тимофеева on 05.10.2021.
//

import UIKit


class MainVC: UIViewController {

    
    @IBOutlet weak var inchesTxt: UITextField!
    @IBOutlet weak var cmTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let convBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        convBtn.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 0.7979041093)
        convBtn.setTitle("convert", for: .normal)
        convBtn.setTitleColor(.white, for: .normal)
        convBtn.addTarget(self, action: #selector(MainVC.convert), for: .touchUpInside)
        
        inchesTxt.inputAccessoryView = convBtn
        cmTxt.inputAccessoryView = convBtn
    }

    @objc func convert() {
        view.endEditing(true)
        if let cmTxt = cmTxt.text {
            if let cm = Double(cmTxt) {
                if cm > 0 {
//                     let notFormattedInches = Convertion.fromCmsToInches(forCms: cm)
//                    inchesTxt.text = String(format:"%.3f", notFormattedInches)
                    inchesTxt.text = String(format:"%.3f", Convertion.fromCmsToInches(forCms: cm))
                    return
                }
            }
        }
        if let inchesTxt = inchesTxt.text {
            if let inches = Double(inchesTxt) {
                if inches > 0 {
                    cmTxt.text = "\(Convertion.fromInchesToCms(forInches: inches))"
                    return
                }
            }
        }
    }
    
    @IBAction func clearConverterPressed(_ sender: Any) {
        inchesTxt.text = ""
        cmTxt.text = ""
        
    }
}

//TODO: выводить сообщение об ошибке, если юзер не сбросил  результат ИЛИ сбрасывать автоматически
