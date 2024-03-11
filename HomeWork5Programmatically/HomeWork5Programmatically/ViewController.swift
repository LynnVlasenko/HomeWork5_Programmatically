//
//  ViewController.swift
//  HomeWork5Programmatically
//
//  Created by Алина Власенко on 06.03.2024.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - UI objects
    
    private let subView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let EmailLabel: UILabel = {
        let label = UILabel()
        label.text = "Пошта:"
        label.textColor = .systemGray2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let PasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Пароль:"
        label.textColor = .systemGray2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let EmailTextField: UITextField = {
        let textField = UITextField()
        textField.clearButtonMode = .whileEditing
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let PasswordTextField: UITextField = {
        let textField = UITextField()
        textField.clearButtonMode = .whileEditing
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let SighInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Увійти", for: .normal)
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let RegistrationButton: UIButton = {
        let button = UIButton()
        button.setTitle("Реєстрація", for: .normal)
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        applyConstraints()
    }

    //MARK: - Add subviews

    private func addSubviews() {
        view.addSubview(subView)
        [
            EmailLabel,
            PasswordLabel,
            EmailTextField,
            PasswordTextField,
            SighInButton,
            RegistrationButton
        ].forEach { subView.addSubview($0) }
    }
    
    //MARK: - Apply constraints
    
    private func applyConstraints() {
        
        let dev = self.traitCollection.userInterfaceIdiom
        
        // choose a device for specific constraints
        if dev == .phone {
            let subViewConstraints = [
                subView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                subView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                subView.heightAnchor.constraint(equalToConstant: 290),
                subView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
            ]
            NSLayoutConstraint.activate(subViewConstraints)
        } else {
            let iPadSubViewConstraints = [
                subView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                subView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                subView.heightAnchor.constraint(equalToConstant: 290),
                subView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.77)
            ]
            NSLayoutConstraint.activate(iPadSubViewConstraints)
        }
        
        let EmailLabelConstraints = [
            EmailLabel.topAnchor.constraint(equalTo: subView.topAnchor, constant: 5),
            EmailLabel.centerXAnchor.constraint(equalTo: subView.centerXAnchor),
            EmailLabel.widthAnchor.constraint(equalTo: subView.widthAnchor)
        ]
        
        let EmailTextFieldConstraints = [
            EmailTextField.topAnchor.constraint(equalTo: EmailLabel.bottomAnchor, constant: 5),
            EmailTextField.centerXAnchor.constraint(equalTo: subView.centerXAnchor),
            EmailTextField.widthAnchor.constraint(equalTo: subView.widthAnchor)
        ]
        
        let PasswordLabelConstraints = [
            PasswordLabel.topAnchor.constraint(equalTo: EmailTextField.bottomAnchor, constant: 5),
            PasswordLabel.centerXAnchor.constraint(equalTo: subView.centerXAnchor),
            PasswordLabel.widthAnchor.constraint(equalTo: subView.widthAnchor)
        ]
        
        let PasswordTextFieldConstraints = [
            PasswordTextField.topAnchor.constraint(equalTo: PasswordLabel.bottomAnchor, constant: 5),
            PasswordTextField.centerXAnchor.constraint(equalTo: subView.centerXAnchor),
            PasswordTextField.widthAnchor.constraint(equalTo: subView.widthAnchor)
        ]
        
        let SighInButtonConstraints = [
            SighInButton.topAnchor.constraint(equalTo: PasswordTextField.bottomAnchor, constant: 40),
            SighInButton.centerXAnchor.constraint(equalTo: subView.centerXAnchor),
            SighInButton.heightAnchor.constraint(equalToConstant: 44),
            SighInButton.widthAnchor.constraint(equalTo: subView.widthAnchor, multiplier: 0.5)
        ]
        
        let RegistrationButtonConstraints = [
            RegistrationButton.topAnchor.constraint(equalTo: SighInButton.bottomAnchor, constant: 30),
            RegistrationButton.centerXAnchor.constraint(equalTo: subView.centerXAnchor),
            RegistrationButton.heightAnchor.constraint(equalToConstant: 44),
            RegistrationButton.widthAnchor.constraint(equalTo: subView.widthAnchor, multiplier: 0.5)
        ]
        
        [EmailLabelConstraints, EmailTextFieldConstraints,
         PasswordLabelConstraints, PasswordTextFieldConstraints, SighInButtonConstraints,
         RegistrationButtonConstraints].forEach { NSLayoutConstraint.activate($0) }
    }

}

