//
//  HeaderUIView.swift
//  Netflix Clone
//
//  Created by Рауан Абишев on 16.06.2022.
//

import UIKit

class HeaderUIView: UIView {
    

    private lazy var downloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    private lazy var playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        
        return button
    }()

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()

    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addGradient()
        applyConstraint()
    }
    
    private lazy var StackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [playButton, downloadButton])
        stackView.translatesAutoresizingMaskIntoConstraints  = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private func applyConstraint() {
        addSubview(StackView)
        StackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        StackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        StackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -50).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
