//
//  PasswordExampleViewController.swift
//  Alert Input 2
//
//  Created by Dale Musser on 10/24/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//

import UIKit

class PasswordExampleViewController: UIViewController {
    @IBOutlet weak var passwordLabel: UILabel!
    
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordLabel.text = password
    }
    
    @IBAction func getPassword(_ sender: Any) {
        let alert = UIAlertController(title: "Password", message: "Enter your account password.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Submit", style: UIAlertAction.Style.default, handler: {
                (alertAction) -> Void in
                if let textField = alert.textFields?[0] {
                    self.password = textField.text!
                    self.passwordLabel.text = self.password
                }
                
            }))
            alert.addTextField(configurationHandler: {(textField: UITextField!) in
                textField.placeholder = "password"
                textField.isSecureTextEntry = true

            })
            self.present(alert, animated: true, completion: nil)
    }

}
