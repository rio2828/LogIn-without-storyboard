//
//  ViewController.swift
//  LogInWithoutStoryboard
//
//  Created by 김태현 on 2022/08/05.
//

import UIKit

class ViewController: UIViewController {

    // 이메일 입력하는 텍스트 뷰
    private lazy var emailTextFieldView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        view.addSubview(emailTextField)
        view.addSubview(emailInfoLabel)
        
        return view
    }()
    
    // "이메일 또는 전화번호" 안내문구
    private var emailInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "이메일주소 또는 전화번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        
        return label
    }()
    
    // 로그인 - 이메일 입력 텍스트필드
    private lazy var emailTextField: UITextField = {
        var tf = UITextField()
        tf.frame.size.height = 48
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.keyboardType = .emailAddress
//        tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        return tf
    }()
    
    // 비밀번호 입력하는 텍스트 뷰
    private lazy var passwordTextFieldView: UIView = {
        let view = UIView()
        //view.frame.size.height = 48
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
//        view.addSubview(passwordTextField)
//        view.addSubview(passwordInfoLabel)
//        view.addSubview(passwordSecureButton)
        
        return view
    }()
    
    // passwordTextField의 안내문구
    private var passwordInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    // 로그인 - 비밀번호 입력 필드
    private let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .darkGray
        tf.frame.size.height = 48
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.isSecureTextEntry = true
        tf.clearsOnBeginEditing = false
//        tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        
        return tf
    }()
    
    // 패스워드에 "표시"버튼 비밀번호 가리기 기능
    private let passwordSecureButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("표시", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
//        button.addTarget(self, action: #selector(passwordSecureModeSetting), for: .touchUpInside)
        return button
    }()
    
    
    // 로그인 버튼
    private let longinButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.isEnabled = false
//        button.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        makeUI()
        
        
        
        
    }
    
    func makeUI() {
        view.addSubview(emailTextFieldView)
        
        emailInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailInfoLabel.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8),
            emailInfoLabel.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8),
            emailInfoLabel.centerYAnchor.constraint(equalTo: emailTextFieldView.centerYAnchor, constant: 0),
            
            
            emailTextField.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8),
            emailTextField.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8),
            emailTextField.topAnchor.constraint(equalTo: emailTextFieldView.topAnchor, constant: 15),
            emailTextField.bottomAnchor.constraint(equalTo: emailTextFieldView.bottomAnchor, constant: 2)
        ])
    }
        
        
        
        
        
        
        
//        emailTextFieldView.backgroundColor = UIColor.darkGray
//
//        view.addSubview(emailTextFieldView)
//
//        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false  //⭐️⭐️⭐️
//
//        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
//
//        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
//
//        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
//
//        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
//
//        emailTextFieldView.layer.cornerRadius = 10
//        emailTextFieldView.layer.masksToBounds = true
        
        
}




