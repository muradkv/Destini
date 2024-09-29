//
//  CustomButton.swift
//  Destini
//
//  Created by murad on 28.09.2024.
//

import UIKit

class CustomButton: UIButton {

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
        configuration?.background.image = backgroundImage
    }
    
    //MARK: - Setup
    
    private func setupButton() {
        var configuration = UIButton.Configuration.filled()
        configuration.baseBackgroundColor = UIColor.clear
        configuration.contentInsets = NSDirectionalEdgeInsets(
          top: 0,
          leading: 20,
          bottom: 0,
          trailing: 20
        )
        
        configuration.titleAlignment = .center
        configuration.background.cornerRadius = 10
        configuration.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 23)
            outgoing.foregroundColor = .white
            return outgoing
        }
        
        configuration.titleLineBreakMode = .byCharWrapping
        self.configuration = configuration
    }
    
}
