//
//  ProfileScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 01/04/23.
//

import UIKit

protocol ProfileScreenProtocol: AnyObject {
    func actionLogOutButton()
}

class ProfileScreen: UIView {
    
    private weak var delegate: ProfileScreenProtocol?
    func delegate(delegate: ProfileScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var profileLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Perfil"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var editLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "• Edite suas informacões •"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nome"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    lazy var lastNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sobrenome"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "E-mail"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    lazy var topRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var userPhoto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "rafaelperfil")
        
        return imageView
    }()
    
    lazy var pencilChance: UIImageView = {
        let pencil = UIImageView()
        pencil.translatesAutoresizingMaskIntoConstraints = false
        pencil.image = UIImage(systemName: "pencil")
        pencil.contentMode = .scaleAspectFit
        pencil.tintColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        
        return pencil
    }()
    
    lazy var tfFirstName: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .white
        email.placeholder = "Insira seu nome"
        email.layer.cornerRadius = 10
        email.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        let paddinView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: email.frame.height))
        email.leftView = paddinView
        email.leftViewMode = .always
        
        return email
    }()
    
    lazy var pencilChance1: UIImageView = {
        let pencil = UIImageView()
        pencil.translatesAutoresizingMaskIntoConstraints = false
        pencil.image = UIImage(systemName: "pencil")
        pencil.contentMode = .scaleAspectFit
        pencil.tintColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        
        return pencil
    }()
    
    lazy var tfLastName: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .white
        email.placeholder = "Insira seu sobrenome"
        email.layer.cornerRadius = 10
        email.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        let paddinView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: email.frame.height))
        email.leftView = paddinView
        email.leftViewMode = .always
        
        return email
    }()
    
    lazy var pencilChance2: UIImageView = {
        let pencil = UIImageView()
        pencil.translatesAutoresizingMaskIntoConstraints = false
        pencil.image = UIImage(systemName: "pencil")
        pencil.contentMode = .scaleAspectFit
        pencil.tintColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        
        return pencil
    }()
    
    lazy var tfEmail: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .white
        email.placeholder = "Insira seu e-mail"
        email.layer.cornerRadius = 10
        email.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        let paddinView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: email.frame.height))
        email.leftView = paddinView
        email.leftViewMode = .always
        
        return email
    }()
    
    lazy var pencilChance3: UIImageView = {
        let pencil = UIImageView()
        pencil.translatesAutoresizingMaskIntoConstraints = false
        pencil.image = UIImage(systemName: "pencil")
        pencil.contentMode = .scaleAspectFit
        pencil.tintColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        
        return pencil
    }()
    
    lazy var tfPassword: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .white
        email.placeholder = "Insira sua senha"
        email.layer.cornerRadius = 10
        email.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        let paddinView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: email.frame.height))
        email.leftView = paddinView
        email.leftViewMode = .always
        
        return email
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Salvar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.isEnabled = false
        return button
    }()
    
    lazy var logOutButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "logOutIconWhite"), for: .normal)
        button.addTarget(self, action: #selector(tappedLogOutButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLogOutButton() {
        delegate?.actionLogOutButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubView()
        setUpConstraints()
        setUpBackground()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubView() {
        addSubview(topLabel)
        addSubview(topRedLabel)
        addSubview(profileLabel)
        addSubview(editLabel)
        addSubview(userPhoto)
        addSubview(tfFirstName)
        addSubview(tfLastName)
        addSubview(tfEmail)
        addSubview(tfPassword)
        addSubview(nameLabel)
        addSubview(lastNameLabel)
        addSubview(emailLabel)
        addSubview(passwordLabel)
        addSubview(pencilChance)
        addSubview(pencilChance1)
        addSubview(pencilChance2)
        addSubview(pencilChance3)
        addSubview(saveButton)
        addSubview(logOutButton)
        
    }
    
    func setUpBackground() {
        backgroundColor = UIColor(red: 37/255, green: 37/255, blue: 37/255, alpha: 1.0)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 135),
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 50),
            
            profileLabel.centerXAnchor.constraint(equalTo: topLabel.centerXAnchor),
            profileLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            
            editLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            editLabel.topAnchor.constraint(equalTo: profileLabel.bottomAnchor, constant: 25),
            editLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            editLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            
            userPhoto.heightAnchor.constraint(equalToConstant: 100),
            userPhoto.widthAnchor.constraint(equalToConstant: 100),
            userPhoto.centerXAnchor.constraint(equalTo: centerXAnchor),
            userPhoto.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 15),
            
            nameLabel.bottomAnchor.constraint(equalTo: tfFirstName.topAnchor, constant: -5),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -310),
            
            pencilChance.trailingAnchor.constraint(equalTo: tfFirstName.trailingAnchor, constant: -15),
            pencilChance.centerYAnchor.constraint(equalTo: tfFirstName.centerYAnchor),
            
            tfFirstName.topAnchor.constraint(equalTo: userPhoto.bottomAnchor, constant: 30),
            tfFirstName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            tfFirstName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            tfFirstName.heightAnchor.constraint(equalToConstant: 35),
            
            pencilChance1.trailingAnchor.constraint(equalTo: tfLastName.trailingAnchor, constant: -15),
            pencilChance1.centerYAnchor.constraint(equalTo: tfLastName.centerYAnchor),
            
            lastNameLabel.bottomAnchor.constraint(equalTo: tfLastName.topAnchor, constant: -5),
            lastNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lastNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -250),
            
            tfLastName.topAnchor.constraint(equalTo: tfFirstName.bottomAnchor, constant: 30),
            tfLastName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            tfLastName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            tfLastName.heightAnchor.constraint(equalToConstant: 35),
            
            emailLabel.bottomAnchor.constraint(equalTo: tfEmail.topAnchor, constant: -5),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -300),
            
            pencilChance2.trailingAnchor.constraint(equalTo: tfEmail.trailingAnchor, constant: -15),
            pencilChance2.centerYAnchor.constraint(equalTo: tfEmail.centerYAnchor),
            
            tfEmail.topAnchor.constraint(equalTo: tfLastName.bottomAnchor, constant: 30),
            tfEmail.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            tfEmail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            tfEmail.heightAnchor.constraint(equalToConstant: 35),
            
            passwordLabel.bottomAnchor.constraint(equalTo: tfPassword.topAnchor, constant: -5),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -300),
            
            pencilChance3.trailingAnchor.constraint(equalTo: tfPassword.trailingAnchor, constant: -15),
            pencilChance3.centerYAnchor.constraint(equalTo: tfPassword.centerYAnchor),
            
            tfPassword.topAnchor.constraint(equalTo: tfEmail.bottomAnchor, constant: 30),
            tfPassword.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            tfPassword.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            tfPassword.heightAnchor.constraint(equalToConstant: 35),
            
            saveButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -15),
            saveButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            saveButton.heightAnchor.constraint(equalToConstant: 35),
            
            logOutButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            logOutButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            logOutButton.widthAnchor.constraint(equalToConstant: 30),
            logOutButton.heightAnchor.constraint(equalToConstant: 30),
            
        ])
    }
}
