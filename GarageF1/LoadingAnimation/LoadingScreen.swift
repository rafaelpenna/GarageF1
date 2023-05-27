//
//  testeScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 10/05/23.
//

import UIKit
import Lottie

protocol LoadingScreenProtocol: AnyObject {
    func actionTimer()
}

class LoadingScreen: UIView {
    
    private weak var delegate: LoadingScreenProtocol?
    func delegate(delegate: LoadingScreenProtocol?) {
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
        animation = .init(name: "raceflag")
        animation.frame = .init(x: 25, y: 10, width: 300, height: 230)
        animation.contentMode = .scaleAspectFit
        animation.loopMode = .loop
        animation.animationSpeed = 0.9
        animation.play(fromFrame: 0, toFrame: 50)
        
        Timer.scheduledTimer(timeInterval: 3.7, target: self, selector: #selector(timerConfig), userInfo: nil, repeats: false)
        return animation
    }()
    
    lazy var loadingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Carregando..."
        label.font = UIFont.systemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setUpConstraints()
        configBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func timerConfig() {
        delegate?.actionTimer()
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
