//
//  secondViewController.swift
//  bDataPassing
//
//  Created by Mac on 15/04/22.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var middleName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    weak var delegateSV: secondViewDPassing?
    override func viewDidLoad() {
        super.viewDidLoad()
   // weak var delegate: secondViewDPassing?

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popButton(){
        let name1 = self.name.text
        let middlename1 = self.middleName.text
        let lastname1  = self.lastName.text
        delegateSV?.PassData(name11: name1, middleName12: middlename1, lastName13: lastname1)
        self.navigationController?.popViewController(animated: true)
        
        
    }
 

}
