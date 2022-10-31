//
//  RegisterVC.swift
//  LoginViewCode
//
//  Created by Weslley Milani on 27/10/22.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerScreen:RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate:self)
    
        
    }
    
}

extension RegisterVC:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
