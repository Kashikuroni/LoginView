//
//  ViewController.swift
//  LoginView
//
//  Created by Mr Owlise on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = "Max"
    private let password = "Dimond"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    // Метод для скрытия клавиатуры тапом по экрану у меня почему-то не работает, может я что-то должен сюда добавить но так и не понял что именно(((
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func loginAction() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password")
        }
    }
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Forgot User Name?", and: "User Name is \(user)")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "Forgot Password?", and: "Password is \(password)")
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}
// MARK: - Private Methods
extension ViewController{
    private func showAlert(with title: String, and massage: String){
        let alert = UIAlertController(
            title: title,
            message: massage,
            preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

