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
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
//        print("\(storyBrain.story[3].choice1[7]!)")
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.updateStory()
        choice1Button.setTitle(storyBrain.choiceOne(), for: .normal)
        choice2Button.setTitle(storyBrain.choiceTwo(), for: .normal)
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        //MARK: Use tags to tell which option was pressed
        /// 0 - choiceOnce
        /// 1 - choiceTwo
    
        if sender.tag == 0 {
            /// change the stroy option depending on where we are in the story
            storyBrain.choiceOnePicked()
            updateUI()
            
        } else if sender.tag == 1{
            storyBrain.choiceTwoPicked()
            updateUI()
        }
        else{
            print("Out of options")
        }
        
    }
    
    
}

