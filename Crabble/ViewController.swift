//
//  ViewController.swift
//  Crabble
//
//  Created by Joel McElwee on 7/21/17.
//  Copyright © 2017 Joel McElwee. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController{
    
    var randomVowel : Int = 0
    var randomConsonant : Int = 0
    
    @IBOutlet var VowelCollectionView: UICollectionView!
    @IBOutlet weak var wordLable: UILabel!
    @IBOutlet weak var VCVLabel: UILabel!
    @IBOutlet weak var VCLabel: UILabel!
    @IBOutlet weak var CCVLabel: UILabel!
    @IBOutlet weak var VVCLabel: UILabel!
    @IBOutlet weak var CVLabel: UILabel!
    @IBOutlet weak var CVC: UIButton!
    
    func random(type : String) -> String {
        
        if type.lowercased() == "vow" {
            randomVowel = Int(arc4random_uniform(UInt32(vowels.count)))
            return vowels[randomVowel]
        }
        else if type.lowercased() == "con" {
            randomConsonant = Int(arc4random_uniform(UInt32(consonants.count)))
            return consonants[randomConsonant]
        }
        else{
            print("Oh no! Invalid type!")
            return "ERROR"
        }
        
    }
    
    func makeWords(pattern : String) -> String{
        var newWord : String = ""
        
        for ch in pattern.lowercased().characters {
            if (ch == "v"){
                newWord += random(type: "vow")
            }
            else if (ch == "c"){
                newWord += random(type: "con")
            }
            else{
                print("Oh no! Invalid pattern!")
                return "ERROR"
            }
        }
        
        return newWord;
        
        
    }
    
    @IBAction func cvcAction(_ sender: Any) {
        
        wordLable.text = makeWords(pattern: "cvc");
        
    }
    
    @IBOutlet weak var VCV: UIButton!
    @IBAction func vcvAction(_ sender: Any) {
        VCVLabel.text = makeWords(pattern: "vcv")
    }
    
    @IBOutlet weak var CV: UIButton!
    @IBAction func cvAction(_ sender: Any) {
        CVLabel.text = makeWords(pattern: "cv")
    }
    
    @IBOutlet weak var VC: UIButton!
    @IBAction func vcAction(_ sender: Any) {
        VCLabel.text = makeWords(pattern: "vc")
    }
    
    
    @IBOutlet weak var CCV: UIButton!
    @IBAction func ccvAction(_ sender: Any) {
        CCVLabel.text = makeWords(pattern: "ccv")
    }
    
    @IBOutlet weak var VVC: UIButton!
    @IBAction func vvcAction(_ sender: Any) {
        VVCLabel.text = makeWords(pattern: "vvc")
    }
    
    let vowels = ["ah","aye", "ee","eh","ih","eye","oh","oo","uh","euh"]
    
    let consonants = ["b","k", "d","f","g","h","H","ich","j","l","m","n","p","pweh","q","r","rr","s","t","sh","th","v","w","x","y","z","zshe"]


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
    


}

