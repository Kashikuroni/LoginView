//
//  WelcomeViewController.swift
//  LoginView
//
//  Created by Mr Owlise on 11.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user)!"
    }
}
