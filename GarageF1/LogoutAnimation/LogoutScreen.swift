//
//  LogoutScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 10/05/23.
//

import UIKit
import Lottie

protocol LogoutScreenProtocol: AnyObject {
    func actionTimer()
}

class LogoutScreen: UIView {
    
    private weak var delegate: LogoutScreenProtocol?
    func delegate(delegate: LogoutScreenProtocol){
        self.delegate = delegate
    }

    lazy var imageRegister: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var animationView: LottieAnimationView = {
        var animation = LottieAnimationView()
        animation.translatesAutoresizingMaskIntoConstraints = false
        animation = .init(name: "logout")
        animation.frame = .init(x: 25, y: 10, width: 300, height: 230)
        animation.contentMode = .scaleAspectFit
        animation.loopMode = .loop
        animation.animationSpeed = 0.8
        animation.play(fromFrame: 0, toFrame: 110)
        
        Timer.scheduledTimer(timeInterval: 5.7, target: self, selector: #selector(timerConfig), userInfo: nil, repeats: false)
        return animation
    }()
    
    lazy var loadingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Até logo..."
        label.font = UIFont.systemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    @objc func timerConfig() {
        delegate?.actionTimer()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setUpConstraints()
        configBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configBackground() {
        backgroundColor = UIColor.lightGray
    }
    
    private func addSubview() {
        addSubview(imageRegister)
        addSubview(view)
        view.addSubview(animationView)
        addSubview(loadingLabel)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            imageRegister.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 45),
            imageRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            imageRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            view.topAnchor.constraint(equalTo: imageRegister.bottomAnchor, constant: 100),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            view.heightAnchor.constraint(equalToConstant: 250),
            
            loadingLabel.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 30),
            loadingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loadingLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        ])
    }
}
