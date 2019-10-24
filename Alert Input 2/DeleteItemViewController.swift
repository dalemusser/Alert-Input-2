//
//  DeleteItemViewController.swift
//  Alert Input 2
//
//  Created by Dale Musser on 10/24/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//

import UIKit

class DeleteItemViewController: UIViewController {
    @IBOutlet weak var deleteStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        deleteStatusLabel.text = ""
    }
    
    @IBAction func deleteItem(_ sender: Any) {
        let alert = UIAlertController(title: "Delete Item", message: "Do you want to delete the item?", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {
            (alertAction) -> Void in
            // handle cancellation of deletion
            self.deleteStatusLabel.text = "item deletion cancelled"
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.destructive, handler: {
            (alertAction) -> Void in
            // handle deletion here
            self.deleteStatusLabel.text = "item deleted"
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}
