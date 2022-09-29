//
//  ViewController.swift
//  HackwichFive
//
//  Created by Marilia Ledezma on 9/28/22.
//  Copyright © 2022 Marilia Ledezma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    // Part 4: Created IBOutlets
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    //Part 6: declare int variable and array variable
  var currentIndex = 0
  var favoriteFoodsArray = ["Tacos","Poke", "Platanitos", "Curry", "Rocky Road Ice Cream" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part 5:top label text code
        topLabel.text = "My Favorite Foods"
        bottomLabel.text = favoriteFoodsArray[currentIndex]
        
    }
//Part 8:

    @IBAction func buttonPressed(_ sender: Any) {
   
    if self.currentIndex<self.favoriteFoodsArray.count
        ///this starts the conditional statement that "if the current index is less than the count of favorite foods array, it will run the if, and when it is not it will run the else" . It basically sets the amount of items the button will sort through.
    {
    self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        //this sets the bottom label at the current index which is 0(tacos).
        
        buttonLabel.setTitle("next", for: UIControl.State.normal)
        //this line sets the label of the buttons normal state to to the string "next"
       
        currentIndex += 1
        //this line adds one to the current index every time the button is pressed so it displays the next item in the array.
    }
    else
    {
    print("button has been disabled")
        //this prints on the console "button has been disabled"
        (buttonLabel!).isEnabled = false
        //this statement disbales the next button.
    }
    
    
    }
    
    
}

