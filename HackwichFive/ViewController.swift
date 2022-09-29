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
  var favoriteFoodsArray = ["Tacos","Poke", "Platanitos", "Curry", "Chocolate" ]
    
    


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
    {
    self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        buttonLabel.setTitle("next", for: UIControl.State.normal)
        currentIndex += 1
    }
    else
    {
    print("button has been disabled")
        (buttonLabel!).isEnabled = false 
    }
    
    
    }
    
    
}

