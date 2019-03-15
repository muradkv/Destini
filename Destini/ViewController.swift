//
//  ViewController.swift
//  Destini
//
//  Created by murad on 14/03/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    
    let stories = StoriesData()
    var storyIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showStory(story: stories.story1, answer1: stories.answer1a, answer2: stories.answer1b)
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if storyIndex == 1 {
            
            if sender.tag == 1 {
                showStory(story: stories.story3, answer1: stories.answer3a, answer2: stories.answer3b)
                storyIndex += 2
            } else {
                showStory(story: stories.story2, answer1: stories.answer2a, answer2: stories.answer2b)
                storyIndex += 1
            }
            
        } else if storyIndex == 2 {
            
            if sender.tag == 1 {
                showStory(story: stories.story3, answer1: stories.answer3a, answer2: stories.answer3b)
                storyIndex += 1
            } else {
                storyTextView.text = stories.story4
                hideButtons()
            }
            
        } else if storyIndex == 3 {
            
            if sender.tag == 1 {
                storyTextView.text = stories.story6
                hideButtons()
            } else {
                storyTextView.text = stories.story5
                hideButtons()
            }
            
        }
    }
    
    func showStory(story: String, answer1: String, answer2: String) {
        storyTextView.text = story
        topButton.setTitle(answer1, for: .normal)
        bottomButton.setTitle(answer2, for: .normal)
    }
    
    func hideButtons() {
        topButton.isHidden = true
        bottomButton.isHidden = true
        storyIndex = 0
    }
}

