//
//  TextEditViewController.swift
//  Crabble
//
//  Created by Joel McElwee on 10/9/17.
//  Copyright © 2017 Joel McElwee. All rights reserved.
//

import UIKit

class TextEditViewController: UIViewController {

    @IBOutlet weak var controllerLabel: UILabel!
    @IBAction func doneButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
