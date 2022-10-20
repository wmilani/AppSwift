//
//  LoginScreen.swift
//  LoginViewCode
//
//  Created by Weslley Milani on 10/10/22.
//

import UIKit

protocol LoginScreenProtocol:class{
    func actionLoginButton()
    func actionRegisterButton()
}

class LoginScreen: UIView {
    
     weak var delegate:LoginScreenProtocol?
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40.0)
        label.text = "Login"
        return label
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.tintColor = .blue
        image.contentMode = .scaleAspectFit
      
        
        return image
    }()
    
    lazy var emailTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Digite seu E-mail"
        textField.textColor = .darkGray
        
        return textField
        
    }()
    
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.placeholder = "Digite sua senha"
        textField.textColor = .darkGray
    
        
        return textField
    }()
    
    lazy var loginButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize:18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 65/255, green: 105/255, blue: 255/255, alpha: 1.0)
        button.addTarget(self, action: #selector(self.tappedLoginButton), for: .touchUpInside)
        
        
        
        return button
    }()
    
    lazy var registerButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta? Cadastra-se", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(self.tappedRegisterButton), for: .touchUpInside)
        
        return button
    }()
    
    
    override init(frame:CGRect) {
        super.init(frame:  frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
    }
    
    private func configBackGround(){
        
        self.backgroundColor = UIColor(red: 135/255, green: 206/255, blue: 235/255, alpha: 2.5)
    }
    
    private func configSuperView (){
        
        self.addSubview(self.loginLabel)
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.loginButton)
        self.addSubview(self.registerButton)
    }
    
    public func configTextFieldDelegate(delegate:UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
        
    }
    
    @objc private func tappedLoginButton(){
        self.delegate?.actionLoginButton()
    }
    
    @objc private func tappedRegisterButton(){
        self.delegate?.actionRegisterButton()
    }
    
    
    required init?(coder:NSCoder) {
fatalError("Init(coder:) has not been implemented")
        
    }
    
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.loginLabel.topAnchor.constraint(equalTo:
                    self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.loginLabel.centerXAnchor.constraint(equalTo:
                    self.centerXAnchor),
            
            
            self.logoAppImageView.topAnchor.constraint(equalTo:
                    self.loginLabel.bottomAnchor, constant: 20),
            self.logoAppImageView.leadingAnchor.constraint(equalTo:
                    self.leadingAnchor,constant: 60),
            self.logoAppImageView.trailingAnchor.constraint(equalTo:
                    self.trailingAnchor,constant: -60),
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 200),
            
            
            self.emailTextField.topAnchor.constraint(equalTo:
                    self.logoAppImageView.bottomAnchor, constant: 20),
            self.emailTextField.leadingAnchor.constraint(equalTo:
                    self.leadingAnchor, constant: 20),
            self.emailTextField.trailingAnchor.constraint(equalTo:
                    self.trailingAnchor, constant: -20),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            
            
            self.passwordTextField.topAnchor.constraint(equalTo:
                    self.emailTextField.bottomAnchor, constant:15),
            self.passwordTextField.leadingAnchor.constraint(equalTo:
                    self.emailTextField.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo:
                    self.emailTextField.trailingAnchor),
            self.passwordTextField.heightAnchor.constraint(equalTo:
                    self.emailTextField.heightAnchor),
            
            
            self.loginButton.topAnchor.constraint(equalTo:
                   self.passwordTextField.bottomAnchor,constant: 15),
            self.loginButton.leadingAnchor.constraint(equalTo:
                  self.emailTextField.leadingAnchor),
            self.loginButton.trailingAnchor.constraint(equalTo:
                  self.emailTextField.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalTo:
                  self.emailTextField.heightAnchor),
            
            
            self.registerButton.topAnchor.constraint(equalTo:
                self.loginButton.bottomAnchor,constant: 15),
            self.registerButton.leadingAnchor.constraint(equalTo:
                self.emailTextField.leadingAnchor),
            self.registerButton.trailingAnchor.constraint(equalTo:
                self.emailTextField.trailingAnchor),
            self.registerButton.heightAnchor.constraint(equalTo:
                self.emailTextField.heightAnchor)
            
            
            
            
            
            
        ])
    }
    
}
