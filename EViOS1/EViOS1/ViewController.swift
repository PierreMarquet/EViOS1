//
//  ViewController.swift
//  EViOS1
//
//  Created by Student06 on 01/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var wallpapper : UIView!
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var avatarImage : UIImageView!
    @IBOutlet var bienvenueLabel: UILabel!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var eyeButton: UIButton!
    @IBOutlet var newsletterLabel: UILabel!
    @IBOutlet var switchAction: UISwitch!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
        
        let tapOnView = UITapGestureRecognizer (target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapOnView)
    }
    

    
    func setView(){
        backgroundImage.image = UIImage(named: "background_image")
        backgroundImage.contentMode = .scaleToFill
        
        avatarImage.image = UIImage(named: "user_icon")
        avatarImage.layer.cornerRadius = avatarImage.frame.size.width/100*40
        
        bienvenueLabel.text = "Bienvenue"
        
        loginTextField.placeholder = "Login"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        
        eyeButton.setImage(UIImage(named: "eye_on_icon"), for: .normal)
        
        newsletterLabel.text = "Inscription à la newsletter :"
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.cornerRadius = 20
        
        switchAction.isOn = false
        
    }
    
    var eyeClick = true
    @IBAction func didTapHideButton(){
        
        if (eyeClick == true){
            passwordTextField.isSecureTextEntry = false
            eyeButton.setImage(UIImage(named: "eye_off_icon"), for: .normal)
        }else{
            passwordTextField.isSecureTextEntry = true
            eyeButton.setImage(UIImage(named: "eye_on_icon"), for: .normal)
        }
        eyeClick = !eyeClick
        
    }
    
}

