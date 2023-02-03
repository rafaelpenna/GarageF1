//
//  DuelStackVC.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/02/23.
//

import UIKit

class DuelStackVc: UIViewController {
    

    
    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let scrollStackViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let stackLeft: UIView = DuelStackInfoLeft()
    
    private let stackight: UIView = DuelStackInfoRight()
    
    private func setupScrollView() {
    let margins = view.layoutMarginsGuide
    view.addSubview(scrollView)
    scrollView.addSubview(scrollStackViewContainer)
    scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    scrollView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
    scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
    scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
    scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
    scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    scrollStackViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    configureContainerView()
    }
    
    private func configureContainerView() {
    scrollStackViewContainer.addArrangedSubview(stackLeft)
    scrollStackViewContainer.addArrangedSubview(stackight)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }
}
