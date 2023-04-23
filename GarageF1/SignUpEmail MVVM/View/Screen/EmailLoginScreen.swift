//
//  RegisterLoginScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit

protocol EmailLoginScreenProtocol: AnyObject {
    func actionBackButton()
    func actionRegisterButton()
}

class EmailLoginScreen: UIView {
    
    private weak var delegate: EmailLoginScreenProtocol?
    func delegate(delegate: EmailLoginScreenProtocol?) {
        self.delegate = delegate
    }
    
   private lazy var backButton: UIButton = {
        let bButton = UIButton()
        bButton.translatesAutoresizingMaskIntoConstraints = false
        bButton.setImage(UIImage(named: "back1"), for: .normal)
        bButton.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return bButton
    }()
    
    private lazy var imageRegister: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var nameTextField: UITextField = {
        let name = UITextField()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.autocorrectionType = .no
        name.backgroundColor = .white
        name.borderStyle = .roundedRect
        name.autocapitalizationType = .none
        name.keyboardType = .emailAddress
        name.placeholder = "Digite seu nome:"
        name.clearButtonMode = .whileEditing
        name.textColor = .darkGray
        return name
    }()

    private lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.backgroundColor = .white
        email.borderStyle = .roundedRect
        email.autocapitalizationType = .none
        email.keyboardType = .emailAddress
        email.placeholder = "Digite seu e-mail:"
        email.clearButtonMode = .whileEditing
        email.textColor = .darkGray
        return email
    }()
    
    private lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.autocorrectionType = .no
        password.backgroundColor = .white
        password.borderStyle = .roundedRect
        password.autocapitalizationType = .none
        password.keyboardType = .default
        password.isSecureTextEntry = true
        password.placeholder = "Digite sua senha:"
        password.clearButtonMode = .whileEditing
        password.textColor = .darkGray
        return password
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Registrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 242/255, green: 24/255, blue: 2/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        setUpConstraints()
        configBackground()
        configButtonEnable(false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(backButton)
        addSubview(imageRegister)
        addSubview(nameTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(registerButton)
    }
    
    @objc func tappedRegisterButton(){
        delegate?.actionRegisterButton()
    }
    
    @objc func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    func validaTextFields() {
        let email: String = emailTextField.text ?? ""
        let password: String = passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            configButtonEnable(true)
        } else {
            configButtonEnable(false)
        }
    }
    
    private func configButtonEnable(_ enable: Bool) {
        if enable {
            registerButton.setTitleColor(.white, for: .normal)
            registerButton.isEnabled = true
        } else {
            registerButton.setTitleColor(.lightGray, for: .normal)
            registerButton.isEnabled = false
        }
    }
    
    func getEmail()-> String{
        return emailTextField.text ?? ""
    }
    
    func getPassword()-> String{
        return passwordTextField.text ?? ""
    }
    
    func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    private func configBackground() {
        backgroundColor = UIColor(red: 37/255, green: 37/255, blue: 37/255, alpha: 1.0)
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            imageRegister.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            imageRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            imageRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            imageRegister.heightAnchor.constraint(equalToConstant: 200),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nameTextField.topAnchor.constraint(equalTo: imageRegister.bottomAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 45),
            
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
            registerButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor)
        ])
    }
}
