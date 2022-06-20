    //
    //  StoryBrain.swift
    //  Destini-iOS13
    //
    //  Created by Angela Yu on 08/08/2019.
    //  Copyright © 2019 The App Brewery. All rights reserved.
    //

import Foundation
import UIKit

struct StoryBrain{
    let story = [ Story(t: [0: "You start going on run"],
                        c1: "Go left",
                        c2: "Go right"),
                  
                  Story(t: [1: "The left path is full of unpleasent sounds and smells yet a nice vista"],
                        c1: "carry on",
                        c2: "Turn back"),
                  
                  Story(t: [2: "The path is beautiful but the animals are waiting, you cant see them but you can feel them  "],
                        c1: "Push on",
                        c2: "Turn back"),
                  
                  Story(t: [3: "The sounds fade away, the wind picks up speed but you see the..."], c1: "end of the trail", c2: "bend"),
                  Story(t: [4: "You turn back and leave this for another day"], c1: "Start over", c2: "Go back home"),
                  Story(t: [5: "The animals come out to run with you but you see..."], c1: "a slope", c2: "the end"),
                  Story(t: [6: "You pass the bend and end up where you started, you've found a shortcut"], c1: "Start over", c2: "Go home"),
                  //end
                  Story(t: [7: "You leave this run for another day"], c1: "-", c2: "-"),
                  Story(t: [8: "You pass the slope and see the bright horizon and realize this is what you came to see"], c1: "Start over", c2: "End the game")
    ]
    
    //MARK: this will be used with a switch to determine where we are
    //this is a key to the title
    var storyOption = 0
    
    
    func updateStory() -> String{
        return story[storyOption].title[storyOption]!
    }
    

    //MARK: Change the story option by pressing the buttons
    func choiceOne() -> String{
        switch storyOption {
        case 0:
            //make the button change the story options
            //button pressed change the value
            //Set the title of the button
            return story[storyOption].choice1
        case 1:
            return story[storyOption].choice1
        case 2:
            return story[storyOption].choice1
        case 3:
            return story[storyOption].choice1
        case 4:
            return story[storyOption].choice1
        default:
            return "Choice One Switch ended or broke"
        }
    }
    
    func choiceTwo() -> String{
        switch storyOption {
        case 0:
            return story[storyOption].choice2
        case 1:
            return story[storyOption].choice2
        case 2:
            return story[storyOption].choice2
        case 3:
            return story[storyOption].choice2
        case 4:
            return story[storyOption].choice2
        default:
            return "Choice Two Switch ended or broke"
        }
        
    }
    
    //MARK: Choice picked func
    /// this will determine weather choice one or two was selected using a bool and update the story that way
    
    mutating func choiceOnePicked(){
        //change the story option based on where we are in the story
        switch storyOption{
        case 0:
            storyOption = 1
            break
        case 1:
            storyOption = 3
            break
        case 2:
            storyOption = 5
        case 3:
            storyOption = 7
        default:
            print("picked 1 exhuasted")
        }
    }
    
    mutating func choiceTwoPicked(){
        switch storyOption{
        case 0:
            storyOption = 2
            break
        case 1:
            storyOption = 4
            break
        case 2:
            storyOption = 4
        default:
            print("picked 2 exhuasted")
        }
    }
    
    
}
