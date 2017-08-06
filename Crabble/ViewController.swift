//
//  ViewController.swift
//  Crabble
//
//  Created by Joel McElwee on 7/21/17.
//  Copyright © 2017 Joel McElwee. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var randomVowel : Int = 0
    var randomVowel2 : Int = 0
    var randomConsonants : Int = 0
    var randomConsonants2 : Int = 0
    var newWord : String = ""
    
    @IBOutlet var VowelCollectionView: UICollectionView!
    @IBOutlet weak var wordLable: UILabel!
    @IBOutlet weak var VCVLabel: UILabel!
    @IBOutlet weak var VCLabel: UILabel!
    @IBOutlet weak var CCVLabel: UILabel!
    @IBOutlet weak var VVCLabel: UILabel!
    @IBOutlet weak var CVLabel: UILabel!
    @IBOutlet weak var CVC: UIButton!
    
    @IBAction func cvcAction(_ sender: Any) {
        randomVowel = Int(arc4random_uniform(UInt32(vowels.count)))
        randomConsonants = Int(arc4random_uniform(UInt32(consonants.count)))
        randomConsonants2 = Int(arc4random_uniform(UInt32(consonants.count)))
        
        newWord = consonants[randomConsonants] + "-" + vowels[randomVowel] + "-" + consonants[randomConsonants2]
        
        wordLable.text = newWord
        
    }
    
    @IBOutlet weak var VCV: UIButton!
    @IBAction func vcvAction(_ sender: Any) {
        randomVowel = Int(arc4random_uniform(UInt32(vowels.count)))
        randomVowel2 = Int(arc4random_uniform(UInt32(vowels.count)))
        randomConsonants = Int(arc4random_uniform(UInt32(consonants.count)))
        
        newWord = vowels[randomVowel] + "-" + consonants[randomConsonants] + "-" + vowels[randomVowel2]
        
        VCVLabel.text = newWord

        
    }
    
    @IBOutlet weak var CV: UIButton!
    @IBAction func cvAction(_ sender: Any) {
        randomVowel = Int(arc4random_uniform(UInt32(vowels.count)))
        randomConsonants = Int(arc4random_uniform(UInt32(consonants.count)))
        
        newWord = consonants[randomConsonants] + "-" + vowels[randomVowel]
        
        CVLabel.text = newWord
    }
    
    @IBOutlet weak var VC: UIButton!
    @IBAction func vcAction(_ sender: Any) {
        randomVowel = Int(arc4random_uniform(UInt32(vowels.count)))
        randomConsonants = Int(arc4random_uniform(UInt32(consonants.count)))
        
        newWord = vowels[randomVowel] + "-" + consonants[randomConsonants]
        
        VCLabel.text = newWord
    }
    
    
    @IBOutlet weak var CCV: UIButton!
    @IBAction func ccvAction(_ sender: Any) {
        randomVowel = Int(arc4random_uniform(UInt32(vowels.count)))
        randomConsonants = Int(arc4random_uniform(UInt32(consonants.count)))
        randomConsonants2 = Int(arc4random_uniform(UInt32(consonants.count)))
        
        newWord = consonants[randomConsonants] + "-" + consonants[randomConsonants2] + "-" + vowels[randomVowel]
        
        CCVLabel.text = newWord
    }
    
    @IBOutlet weak var VVC: UIButton!
    @IBAction func vvcAction(_ sender: Any) {
        randomVowel = Int(arc4random_uniform(UInt32(vowels.count)))
        randomVowel2 = Int(arc4random_uniform(UInt32(vowels.count)))
        
        randomConsonants = Int(arc4random_uniform(UInt32(consonants.count)))
        
        newWord = vowels[randomVowel] + "-" + vowels[randomVowel2] + "-" + consonants[randomConsonants]
        
        VVCLabel.text = newWord
    }
    
    let vowels = ["ah","aye", "ee","eh","ih","eye","oh","oo","uh","euh"]
    
    let consonants = ["b","k", "d","f","g","h","H","ich","j","l","m","n","p","pweh","q","r","rr","s","t","sh","th","v","w","x","y","z","zshe"]


    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = self.VowelCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5);
        layout.minimumInteritemSpacing = 5; // this number could be anything <=5. Need it here because the default is 10.
        layout.itemSize = CGSize(width: (self.VowelCollectionView.frame.size.width - 20)/3, height: 100)
             // 20 is 2*5 for the 2 edges plus 2*5 for the spaces between the cells
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 60
    }
    
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellVowel", for: indexPath)
        
        //cell.backgroundView?.backgroundColor = UIColor.black
        cell.contentView.backgroundColor = UIColor.blue
//        cell.contentView.layer.cornerRadius = 5
//        cell.contentView.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    


}

