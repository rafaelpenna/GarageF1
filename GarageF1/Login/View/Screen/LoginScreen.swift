//
//  EmailLoginScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func actionBackButton()
    func actionRegisterButton()
    func actionLoginButton()
    func actionForgotThePassword()
}

class LoginScreen: UIView {
    
    private weak var delegate: LoginScreenProtocol?
    func delegate(delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "facebookicon"), for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        return button
    }()
    
    lazy var appleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "appleicon"), for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        return button
    }()

    
    private lazy var imageRegister: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.backgroundColor = .white
        email.borderStyle = .roundedRect
        email.autocapitalizationType = .none
        email.keyboardType = .emailAddress
        email.placeholder = "Digite seu e-mail:"
        email.textColor = .darkGray
        email.clearButtonMode = .whileEditing
        return email
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or continue with"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.autocorrectionType = .no
        password.backgroundColor = .white
        password.borderStyle = .roundedRect
        password.autocapitalizationType = .none
        password.keyboardType = .default
        password.isSecureTextEntry = true
        password.placeholder = "Digite sua senha:"
        password.textColor = .darkGray
        password.clearButtonMode = .whileEditing
        return password
    }()
    
    private lazy var esqueceuSenhaButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu sua senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(tappedForgotThePasswordButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 242/255, green: 24/255, blue: 2/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedSignInButtonButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar-se", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configBackground()
        setUpConstraints()
        configButtonEnable(false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(imageRegister)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(signInButton)
        addSubview(registerButton)
        addSubview(esqueceuSenhaButton)
        addSubview(descriptionLabel)
        addSubview(facebookButton)
        addSubview(appleButton)
    }
    
    @objc func tappedSignInButtonButton(){
        delegate?.actionLoginButton()
    }
    
    @objc func tappedRegisterButton(){
        delegate?.actionRegisterButton()
    }
    
    @objc func tappedForgotThePasswordButton() {
        delegate?.actionForgotThePassword()
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
            signInButton.setTitleColor(.white, for: .normal)
            signInButton.isEnabled = true
        } else {
            signInButton.setTitleColor(.lightGray, for: .normal)
            signInButton.isEnabled = false
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
            
            imageRegister.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 45),
            imageRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            imageRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),

            emailTextField.topAnchor.constraint(equalTo: imageRegister.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 45),

            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            esqueceuSenhaButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 3),
            esqueceuSenhaButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 210),
            esqueceuSenhaButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            signInButton.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor),
            

            signInButton.topAnchor.constraint(equalTo: esqueceuSenhaButton.bottomAnchor, constant: 20),
            signInButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            signInButton.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor),
            
            registerButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 15),
            registerButton.leadingAnchor.constraint(equalTo: signInButton.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: signInButton.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: signInButton.heightAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 30),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 25),
            
            facebookButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 40),
            facebookButton.leadingAnchor.constraint(equalTo: registerButton.leadingAnchor),
            facebookButton.widthAnchor.constraint(equalToConstant: 160),
            facebookButton.heightAnchor.constraint(equalToConstant: 45),
            
            appleButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 40),
            appleButton.trailingAnchor.constraint(equalTo: registerButton.trailingAnchor),
            appleButton.widthAnchor.constraint(equalToConstant: 160),
            appleButton.heightAnchor.constraint(equalToConstant: 45),

        ])
    }
}