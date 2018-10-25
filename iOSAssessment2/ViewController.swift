//
//  ViewController.swift
//  iOSAssessment2
//
//  Created by Caleb Ogles on 10/25/18.
//  Copyright © 2018 Caleb Ogles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var newPerson: Person?
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBAction func submitTapped(_ sender: Any) {
        
        
        guard
            let firstNameEmpty = firstNameTextField.text, !firstNameEmpty.isEmpty,
            let lastNameEmpty = lastNameTextField.text, !lastNameEmpty.isEmpty,
            let emailEmpty = emailTextField.text, !emailEmpty.isEmpty
        
            else {
                let errorAlert = UIAlertController(title: "Error!", message: "You have not entered the information required fully to create your account", preferredStyle: UIAlertController.Style.alert)
                let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {UIAlertAction in};
                    errorAlert.addAction(dismissAction)
                self.present(errorAlert, animated: true, completion: nil)
                return
        }
        newPerson = Person(firstName: firstNameEmpty, lastName: lastNameEmpty, email: emailEmpty)
        
        let success = UIAlertController(title: "Greetings!!!", message: "Hello \(firstNameEmpty) \(lastNameEmpty)! Your email is \(emailEmpty).", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Thanks!", style: UIAlertAction.Style.default) {UIAlertAction in self.newPerson
        }
        success.addAction(okayAction)
        self.present(success, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    

}


