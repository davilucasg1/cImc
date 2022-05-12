//
//  ViewController.swift
//  cImc
//
//  Created by DS Mac Mini on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var uiResult: UIView!
    
     var imc: Double = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func calculate(_ sender: Any) {
        if let weight =  Double(tfWeight.text!), let height = Double(tfHeight.text!) {
            imc = weight / (height*height)
            showResult()
        }
        
    }
    func showResult() {
        var result: String = ""
        var image: String = ""
        switch imc {
                case 0..<16:
                    result = "ta passando fome"
                    image = "magreza"
                case 16..<18.5:
                    result = "vai comer agora"
                    image = "abaixo"
                case 18..<25:
                    result = "ta de boa man "
                    image = "ideal"
                case 25..<30:
                     result = "xiiiiiii sei n hein"
                     image = "sobre"
                default:
                    result = "balofo"
                    image = "obesidade"
        }
        lbResult.text = "\(Int  (imc)): \(result)"
        ivResult.image = UIImage (named: image)
        uiResult.isHidden = false
        view.endEditing(true)
    }
    
}

