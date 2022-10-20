//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Weslley Milani on 09/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate = self
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
    
    extension ViewController:LoginScreenProtocol{
            
        func actionLoginButton(){
            print("Deu Certo, Login Button")
        }
        
        func actionRegisterButton(){
            print("Deu Certo, Register Button")
        }
    }
  


extension ViewController:UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    

}
