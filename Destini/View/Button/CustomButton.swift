//
//  CustomButton.swift
//  Destini
//
//  Created by murad on 28.09.2024.
//

import UIKit

class CustomButton: UIButton {
    
    //MARK: - Properties
    
    

    //MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String, backgroundImage: UIImage?) {
        self.init(frame: .zero)
        setTitle(title, for: .normal)
        setBackgroundImage(backgroundImage, for: .normal)
    }
    
    //MARK: - Setup
    
    private func setupButton() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        titleLabel?.font = UIFont.systemFont(ofSize: 23)
        setTitleColor(.white, for: .normal)
    }
    
}
