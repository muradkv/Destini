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
        
        storyTextView.text = stories.story1
        topButton.setTitle(stories.answer1a, for: .normal)
        bottomButton.setTitle(stories.answer1b, for: .normal)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if storyIndex == 1 {
            
            if sender.tag == 1 {
                storyTextView.text = stories.story3
                topButton.setTitle(stories.answer3a, for: .normal)
                bottomButton.setTitle(stories.answer3b, for: .normal)
                storyIndex += 2
            } else {
                storyTextView.text = stories.story2
                topButton.setTitle(stories.answer2a, for: .normal)
                bottomButton.setTitle(stories.answer2b, for: .normal)
                storyIndex += 1
            }
            
        } else if storyIndex == 2 {
            
            if sender.tag == 1 {
                storyTextView.text = stories.story3
                topButton.setTitle(stories.answer3a, for: .normal)
                bottomButton.setTitle(stories.answer3b, for: .normal)
                storyIndex += 1
            } else {
                storyTextView.text = stories.story4
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 0
            }
            
        } else if storyIndex == 3 {
            
            if sender.tag == 1 {
                storyTextView.text = stories.story6
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 0
            } else {
                storyTextView.text = stories.story5
                topButton.isHidden = true
                bottomButton.isHidden = true
                storyIndex = 0
            }
            
        }
    }
    
}

