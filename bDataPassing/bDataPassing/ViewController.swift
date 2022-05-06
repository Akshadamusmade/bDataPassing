//
//  ViewController.swift
//  bDataPassing
//
//  Created by Mac on 15/04/22.
//

import UIKit

class ViewController: UIViewController , secondViewDPassing{
    
    
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var MiddleNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pushButton(){
        
        guard let SecVController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? secondViewController
        else{
            return
        }
        SecVController.delegateSV = self
        self.navigationController?.pushViewController(SecVController, animated: true)
    
      //  self.nameTF.text = name1
       // self.MiddleNameTF.text =
       // let lastname1 = self.lastNameTF.text
        
    
    }
    func PassData(name11:String?,middleName12:String?,lastName13:String? ) {
        self.nameTF.text = name11
        self.MiddleNameTF.text = middleName12
        self.lastNameTF.text = lastName13

    }
}
