//
//  LoginViewController.swift
//  login-with-combine
//
//  Created by Siddhesh Redkar  on 27/05/21.
//

import UIKit

class LoginViewController: BaseViewController {
    
    let vStackView:UIStackView = {
        let v = UIStackView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.axis         = .vertical
        v.distribution = .fillEqually
        v.spacing = 5
        return v
    }()
    
    let emailTf:FormFieldView = {
        let tf = FormFieldView()
        tf.label.text = "Email"
        return tf
    }()
    
    let passTf:FormFieldView = {
        let tf = FormFieldView()
        tf.label.text = "Password"
        return tf
    }()
    
    let confirmPassTf:FormFieldView = {
        let tf = FormFieldView()
        tf.label.text = "Confirm Password"
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isScrollable = true
        setViews()
        setConstraint()
        // Do any additional setup after loading the view.
    }
    
    private func setViews(){
        internelView.addSubview(vStackView)
        vStackView.addArrangedSubview(emailTf)
        vStackView.addArrangedSubview(passTf)
        vStackView.addArrangedSubview(confirmPassTf)
    }
    private func setConstraint(){
        NSLayoutConstraint.activate([
            internelView.heightAnchor.constraint(equalToConstant: view.bounds.height + 100),
            vStackView.topAnchor.constraint(equalTo: internelView.topAnchor,constant: 200),
            vStackView.centerXAnchor.constraint(equalTo: internelView.centerXAnchor),
            vStackView.widthAnchor.constraint(equalToConstant: view.bounds.width/1.2),
            vStackView.heightAnchor.constraint(equalToConstant: 200),
        ])
    }

    
    // MARK: - Factories
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 60/4
        return button
    }
    
}
