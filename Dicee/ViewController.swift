//
//  ViewController.swift
//  Dicee
//
//  Created by Rodrigo Guerrero Rocha on 1/27/19.
//  Copyright © 2019 Rodrigo Guerrero Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  randomDiceIndex1:Int = 0 ;
    var  randomDiceIndex2:Int = 0 ;
    
    let diceArray:[String] = ["dice1","dice2","dice3","dice4","dice5","dice6"];
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImagenView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages();
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //This is the part of put the action When I pressed the button
    
        print(randomDiceIndex1);
        
        
        //vamos a cambiar la imagen referenciando a otra con otro nombre
        
        updateDiceImages();
      
        
    
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages();
    }
    
    func  updateDiceImages()  {
        randomDiceIndex1 = Int.random(in: 0 ... 5);
        randomDiceIndex2 = Int.random(in: 0 ... 5);
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]);
        diceImagenView2.image = UIImage(named: diceArray[randomDiceIndex2]);
    }
    
}

