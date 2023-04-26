//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    

    var storyBrain = StoryBrain(storyNumber: "", currentStory: 0)
    var firstTime = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.Stories[storyBrain.currentStory].title
        choice1Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        if firstTime == 0 && userChoice == storyBrain.Stories[storyBrain.currentStory].choice1 {
            storyLabel.text = storyBrain.Stories[storyBrain.currentStory].title
            choice1Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice1, for: .normal)
            choice2Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice2, for: .normal)
            firstTime += 1
            storyBrain.currentStory = 1
        }
        if firstTime == 0 && userChoice == storyBrain.Stories[storyBrain.currentStory].choice2 {
            storyLabel.text = storyBrain.Stories[storyBrain.currentStory].title
            choice1Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice1, for: .normal)
            choice2Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice2, for: .normal)
            firstTime += 1
            storyBrain.currentStory = 2
        }
        
        storyBrain.nextStory(userChoice)
        storyLabel.text = storyBrain.Stories[storyBrain.currentStory].title
        choice1Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.Stories[storyBrain.currentStory].choice2, for: .normal)
    }
    
}

