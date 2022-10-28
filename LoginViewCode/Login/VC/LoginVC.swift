//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Weslley Milani on 09/10/22.
//

import UIKit

class LoginVC: UIViewController {
    
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate (delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}


extension LoginVC: LoginScreenProtocol {
    
    func actionLoginButton(){
        print("Deu certo Login Button")
    }
    
    func actionRegisterButton() {
        print("Deu certo Register Button")
        let vc: RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated:true)
    }
    
}
    
extension LoginVC:UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    

}
