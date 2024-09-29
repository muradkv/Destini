//
//  ViewController.swift
//  Destini
//
//  Created by murad on 27.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Propertries
    
    private let mainView = MainView()
    private var stories = StoryBrain()
    
    //MARK: - Life cycle
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        setupButtons()
    }
    
    private func updateUI() {
        let text = stories.getStoryText()
        mainView.updateStoryText(with: text)
        
        let choiceTitleButton1 = stories.getChoice1TitleButton()
        mainView.choice1Button.setTitle(choiceTitleButton1, for: .normal)
        let choiceTitleButton2 = stories.getChoice2TitleButton()
        mainView.choice2Button.setTitle(choiceTitleButton2, for: .normal)
    }
    
    private func setupButtons() {
        mainView.choice1Button.addAction(UIAction(handler: { [weak self] _ in
            guard let self = self else { return }
            self.buttonPressed(sender: self.mainView.choice1Button)
        }), for: .touchUpInside)
        
        mainView.choice2Button.addAction(UIAction(handler: { [weak self] _ in
            guard let self = self else { return }
            self.buttonPressed(sender: self.mainView.choice2Button)
        }), for: .touchUpInside)
    }
    
    private func buttonPressed(sender: UIButton) {
        guard let selectedChoice = sender.currentTitle else { return }
        stories.nextStory(with: selectedChoice)
        updateUI()
    }

}

