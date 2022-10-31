//
//  RegisterScreen.swift
//  LoginViewCode
//
//  Created by Weslley Milani on 27/10/22.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "seta voltar"), for: .normal)
    
        return button
    }()

    lazy var imageAddUser: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "usuario")
        image.contentMode = .scaleAspectFit
        
        return  image
        
    }()
    
    lazy var emailTextField:UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor  = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.placeholder = "Digite seu e-mail"
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.textColor = .darkGray
        return tf
        
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite sua senha"
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.isSecureTextEntry = true
        tf.textColor = .darkGray
        
        return tf
        
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar", for:   .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 65/255, green: 105/255, blue: 255/255, alpha: 1.0)
        
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
    
    }
    
    private func configSuperView(){
        self.addSubview(self.backButton)
        self.addSubview(self.imageAddUser)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.registerButton)
    }
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 135/255, green: 206/255, blue: 235/255, alpha: 2.0)
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            self.imageAddUser.topAnchor.constraint(equalTo:
                    self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.imageAddUser.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.imageAddUser.widthAnchor.constraint(equalToConstant: 150),
            self.imageAddUser.heightAnchor.constraint(equalToConstant: 150),
        
            self.backButton.topAnchor.constraint(equalTo:
                    self.imageAddUser.topAnchor),
            self.backButton.leadingAnchor.constraint(equalTo:
                    self.leadingAnchor, constant: 20),
            
            
            self.emailTextField.topAnchor.constraint(equalTo:
                    self.imageAddUser.bottomAnchor, constant: 10),
            self.emailTextField.leadingAnchor.constraint(equalTo:
                    self.leadingAnchor, constant: 20),
            self.emailTextField.trailingAnchor.constraint(equalTo:
                    self.trailingAnchor, constant: -20),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            
            self.passwordTextField.topAnchor.constraint(equalTo:
                    self.emailTextField.bottomAnchor, constant: 15),
            
            self.passwordTextField.leadingAnchor.constraint(equalTo:
                    self.emailTextField.leadingAnchor),
            
            self.passwordTextField.trailingAnchor.constraint(equalTo:
                    self.emailTextField.trailingAnchor),
            
            self.passwordTextField.heightAnchor.constraint(equalTo:
                    self.emailTextField.heightAnchor),
            
            
            
            self.registerButton.topAnchor.constraint(equalTo:
                    self.passwordTextField.bottomAnchor, constant: 15),
            
            self.registerButton.leadingAnchor.constraint(equalTo:
                    self.emailTextField.leadingAnchor),
            
            self.registerButton.trailingAnchor.constraint(equalTo:
                    self.emailTextField.trailingAnchor),
            
            self.registerButton.heightAnchor.constraint(equalTo:
                    self.emailTextField.heightAnchor),
            
            
        ])
    }
    
}
