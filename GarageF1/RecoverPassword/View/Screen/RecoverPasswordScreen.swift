//
//  RecoverPasswordScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 02/04/23.
//

import UIKit

protocol RecoverPasswordScreenProtocol: AnyObject {
    func actionBackButton()
    func actionSendEmailButton()
}

class RecoverPasswordScreen: UIView {
    
    private weak var delegate: RecoverPasswordScreenProtocol?
    func delegate(delegate: RecoverPasswordScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var backButton: UIButton = {
        let bButton = UIButton()
        bButton.translatesAutoresizingMaskIntoConstraints = false
        bButton.setImage(UIImage(named: "back1"), for: .normal)
        bButton.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return bButton
        
    }()
    
    lazy var imageRegister: UIImageView = {
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
        return email
    }()
    
    lazy var sendEmailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Enviar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 242/255, green: 24/255, blue: 2/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedSendEmailButton), for: .touchUpInside)
        return button
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Entre com seu e-mail de recuperação:"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubView()
        setUpBackground()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedBackButton() {
        delegate?.actionBackButton()
    }
    
    @objc func tappedSendEmailButton() {
        delegate?.actionSendEmailButton()
    }
    
    func addSubView() {
        addSubview(backButton)
        addSubview(imageRegister)
        addSubview(emailTextField)
        addSubview(sendEmailButton)
        addSubview(descriptionLabel)
    }
    
    func setUpBackground() {
        backgroundColor = UIColor(red: 37/255, green: 37/255, blue: 37/255, alpha: 1.0)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            imageRegister.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 45),
            imageRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            imageRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
        
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            emailTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            emailTextField.centerYAnchor.constraint(equalTo: centerYAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            sendEmailButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            sendEmailButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            sendEmailButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            sendEmailButton.heightAnchor.constraint(equalToConstant: 40),
        
            descriptionLabel.bottomAnchor.constraint(equalTo: emailTextField.topAnchor, constant: -8),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
        ])
    }
}
