//
//  MainView.swift
//  Destini
//
//  Created by murad on 28.09.2024.
//

import UIKit

class MainView: UIView {
    
    //MARK: - Properties
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "background")
        return imageView
    }()
    
    private let verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false 
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }()
    
    private let storyTextLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Story text"
        label.font = UIFont.systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    let choice1Button: UIButton = {
        let button = CustomButton(title: "Choice 1", backgroundImage: UIImage(named: "choice1Background"))
        return button
    }()
    
    let choice2Button: UIButton = {
        let button = CustomButton(title: "Choice 2", backgroundImage: UIImage(named: "choice2Background"))
        return button
    }()

    //MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup UI
    
    private func setupUI() {
        addSubview(backgroundImageView)
        addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(storyTextLable)
        verticalStackView.addArrangedSubview(choice1Button)
        verticalStackView.addArrangedSubview(choice2Button)
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            verticalStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            verticalStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            verticalStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            verticalStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            choice1Button.heightAnchor.constraint(equalToConstant: 100),
            choice2Button.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func updateStoryText(with text: String) {
        storyTextLable.text = text
    }
    
}
