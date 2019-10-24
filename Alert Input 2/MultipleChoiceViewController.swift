//
//  MultipleChoiceViewController.swift
//  Alert Input 2
//
//  Created by Dale Musser on 10/24/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//

import UIKit

class MultipleChoiceViewController: UIViewController {
    @IBOutlet weak var choiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        choiceLabel.text = ""
    }
    
    @IBAction func choose(_ sender: Any) {
        // this example uses the .actionSheet style.  It could be set to another style such as .alert
        let alert = UIAlertController(title: "Choice", message: "Choose!", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "A", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            // handle choice A
            self.choiceLabel.text = "A"
            
        }))
        alert.addAction(UIAlertAction(title: "B", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            // handle choice B
            self.choiceLabel.text = "B"
            
        }))
        alert.addAction(UIAlertAction(title: "C", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            // handle choice C
            self.choiceLabel.text = "C"
            
        }))
        alert.addAction(UIAlertAction(title: "D", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            // handle choice D
            self.choiceLabel.text = "D"
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}
