//
//  SignUpViewController.swift
//  HSE DriveX
//
//  Created by Nikita Zolotov on 23.02.2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let attributes = [
        NSAttributedString.Key.font: UIFont(name: "Inter-Regular", size: 14),
        NSAttributedString.Key.foregroundColor: UIColor(named: "TextField Border")
    ]
    
    private let logoUp = UIImageView()
    private var autorizationSegmentedControl = UISegmentedControl()
    
    private let registerContainerView = UIView()
    private let userNameLabel = UILabel()
    private let userNameTextField = UITextField()
    private let emailLabel = UILabel()
    private let emailTextField = UITextField()
    private let sendCodeButton = UIButton()
    private let codeLabel = UILabel()
    private let codeTextField = UITextField()
    private let registerButton = UIButton()
    private let invalidEmailLabel = UILabel()
    
    private let loginContainerView = UIView()
    private let loginEmailLabel = UILabel()
    private let loginEmailTextField = UITextField()
    private let loginSendCodeButton = UIButton()
    private let loginCodeLabel = UILabel()
    private let loginCodeTextField = UITextField()
    
    private let signInButton = UIButton()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        loginContainerView.isHidden = true
        setup()
    }
    
    private func setup() {
        view.backgroundColor = .white
        
        configureLogoUp()
        configureAutorizationSegmentedControl()
        configureRegisterContainerView()
        configureUserNameLabel()
        configureUserNameTextField()
        configureEmailLabel()
        configureEmailTextField()
        configureSendCodeButton()
        configureCodeLabel()
        configureCodeTextField()
        configureRegisterButton()
        configureInvalidEmailLabel()
        configureLoginContainerView()
        configureLoginEmailLabel()
        configureLoginEmailTextField()
        configureLoginSendCodeButton()
        configureLoginCodeLabel()
        configureLoginCodeTextField()
        configureSignInButton()

    }
    
    private func configureLogoUp() {
        logoUp.image = UIImage(named: "Logo up")
        logoUp.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logoUp)
        
        NSLayoutConstraint.activate([
            logoUp.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            logoUp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoUp.widthAnchor.constraint(equalToConstant: 191),
            logoUp.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureAutorizationSegmentedControl() {
        autorizationSegmentedControl = UISegmentedControl(items: ["Войти", "Регистрация"])
        autorizationSegmentedControl.selectedSegmentIndex = 1
        autorizationSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Inter-Regular", size: 14)!], for: .normal)
        autorizationSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Inter-SemiBold", size: 14)!], for: .selected)
        autorizationSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        autorizationSegmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)

        view.addSubview(autorizationSegmentedControl)
        
        NSLayoutConstraint.activate([
            autorizationSegmentedControl.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            autorizationSegmentedControl.topAnchor.constraint(equalTo: logoUp.bottomAnchor, constant: 41),
            autorizationSegmentedControl.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ])
    }
    
    // MARK: Сonfiguring The Registration View
    private func configureRegisterContainerView() {
        registerContainerView.backgroundColor = .white
        registerContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(registerContainerView)
        
        NSLayoutConstraint.activate([
            registerContainerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            registerContainerView.topAnchor.constraint(equalTo: autorizationSegmentedControl.bottomAnchor, constant: 30),
            registerContainerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -13),
            registerContainerView.widthAnchor.constraint(equalToConstant: 360),
            registerContainerView.heightAnchor.constraint(equalToConstant: 404)
        ])
    }
    
    private func configureUserNameLabel() {
        userNameLabel.text = "Имя пользователя"
        userNameLabel.font = UIFont(name: "Inter-Regular", size: 14)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        registerContainerView.addSubview(userNameLabel)
        
        NSLayoutConstraint.activate([
            userNameLabel.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 7),
            userNameLabel.topAnchor.constraint(equalTo: registerContainerView.topAnchor, constant: 1),
            userNameLabel.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -225),
            userNameLabel.widthAnchor.constraint(equalToConstant: 128),
            userNameLabel.heightAnchor.constraint(equalToConstant: 18)
        
        ])
    }
    
    private func configureUserNameTextField() {
        userNameTextField.attributedPlaceholder = NSAttributedString(string: "Ваше имя", attributes: attributes as [NSAttributedString.Key : Any])
        userNameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        userNameTextField.leftViewMode = .always
        userNameTextField.layer.cornerRadius = 10
        userNameTextField.layer.borderWidth = 1
        userNameTextField.layer.borderColor = UIColor(named: "TextField Border")!.cgColor
        userNameTextField.font = UIFont(name: "Inter-Regular", size: 16)
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
       
        registerContainerView.addSubview(userNameTextField)
        
        NSLayoutConstraint.activate([
            userNameTextField.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 3),
            userNameTextField.topAnchor.constraint(equalTo: registerContainerView.topAnchor, constant: 23),
            userNameTextField.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -4),
            userNameTextField.widthAnchor.constraint(equalToConstant: 353),
            userNameTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func configureEmailLabel() {
        emailLabel.text = "Email"
        emailLabel.font = UIFont(name: "Inter-Regular", size: 14)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        registerContainerView.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailLabel.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 7),
            emailLabel.topAnchor.constraint(equalTo: registerContainerView.topAnchor, constant: 102),
            emailLabel.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -315),
            emailLabel.widthAnchor.constraint(equalToConstant: 36),
            emailLabel.heightAnchor.constraint(equalToConstant: 18)
            
        ])
    }
    
    private func configureEmailTextField() {
        emailTextField.attributedPlaceholder = NSAttributedString(string: "example@edu.hse.ru", attributes: attributes as [NSAttributedString.Key : Any])
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        emailTextField.leftViewMode = .always
        emailTextField.layer.cornerRadius = 10
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(named: "TextField Border")!.cgColor
        emailTextField.font = UIFont(name: "Inter-Regular", size: 16)
        emailTextField.keyboardType = .emailAddress
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        registerContainerView.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailTextField.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 3),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 6),
            emailTextField.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -4),
            emailTextField.widthAnchor.constraint(equalToConstant: 353),
            emailTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func configureSendCodeButton() {
        let attributes: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        let attributedText = NSAttributedString(string: "Отправить код", attributes: attributes)
        sendCodeButton.setAttributedTitle(attributedText, for: .normal)

        sendCodeButton.titleLabel?.font = UIFont(name: "Inter-SemiBold", size: 16)
        sendCodeButton.translatesAutoresizingMaskIntoConstraints = false
        
        registerContainerView.addSubview(sendCodeButton)
        
        NSLayoutConstraint.activate([
            sendCodeButton.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 220),
            sendCodeButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 22),
            sendCodeButton.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -10),
            sendCodeButton.widthAnchor.constraint(equalToConstant: 121),
            sendCodeButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func configureCodeLabel() {
        codeLabel.text = "Проверочный код"
        codeLabel.font = UIFont(name: "Inter-Regular", size: 14)
        codeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        registerContainerView.addSubview(codeLabel)
        
        NSLayoutConstraint.activate([
            codeLabel.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 7),
            codeLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 46),
            codeLabel.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -225),
            codeLabel.widthAnchor.constraint(equalToConstant: 124),
            codeLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    private func configureCodeTextField() {
        codeTextField.attributedPlaceholder = NSAttributedString(string: "Введите код", attributes: attributes as [NSAttributedString.Key : Any])
        codeTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        codeTextField.leftViewMode = .always
        codeTextField.layer.cornerRadius = 10
        codeTextField.layer.borderWidth = 1
        codeTextField.layer.borderColor = UIColor(named: "TextField Border")!.cgColor
        codeTextField.font = UIFont(name: "Inter-Regular", size: 16)
        codeTextField.keyboardType = .numberPad
        codeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        registerContainerView.addSubview(codeTextField)
        
        NSLayoutConstraint.activate([
            codeTextField.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 3),
            codeTextField.topAnchor.constraint(equalTo: codeLabel.bottomAnchor, constant: 6),
            codeTextField.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -4),
            codeTextField.widthAnchor.constraint(equalToConstant: 353),
            codeTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func configureRegisterButton() {
        registerButton.setTitle("Регистрация", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.backgroundColor = .black
        registerButton.layer.cornerRadius = 30
        registerButton.titleLabel?.font = UIFont(name: "Inter-SemiBold", size: 16)
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        
        registerContainerView.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            registerButton.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 1),
            registerButton.topAnchor.constraint(equalTo: codeTextField.bottomAnchor, constant: 42),
            registerButton.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -7),
            registerButton.widthAnchor.constraint(equalToConstant: 353),
            registerButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    // MARK: Сonfiguring The Login View
    private func configureLoginContainerView() {
        loginContainerView.backgroundColor = .white
        loginContainerView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(loginContainerView)
        
        NSLayoutConstraint.activate([
            loginContainerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            loginContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 223),
            loginContainerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            loginContainerView.widthAnchor.constraint(equalToConstant: 357),
            loginContainerView.heightAnchor.constraint(equalToConstant: 323)
        ])
    }
    
    private func configureLoginEmailLabel() {
        loginEmailLabel.text = "Email"
        loginEmailLabel.font = UIFont(name: "Inter-Regular", size: 14)
        loginEmailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        loginContainerView.addSubview(loginEmailLabel)
        
        NSLayoutConstraint.activate([
            loginEmailLabel.leftAnchor.constraint(equalTo: loginContainerView.leftAnchor, constant: 7),
            loginEmailLabel.topAnchor.constraint(equalTo: loginContainerView.topAnchor, constant: -20),
            loginEmailLabel.rightAnchor.constraint(equalTo: loginContainerView.rightAnchor, constant: -310),
            loginEmailLabel.widthAnchor.constraint(equalToConstant: 36),
            loginEmailLabel.heightAnchor.constraint(equalToConstant: 18)
            
        ])
    }
    
    private func configureLoginEmailTextField() {
        loginEmailTextField.attributedPlaceholder = NSAttributedString(string: "example@edu.hse.ru", attributes: attributes as [NSAttributedString.Key : Any])
        loginEmailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        loginEmailTextField.leftViewMode = .always
        loginEmailTextField.layer.cornerRadius = 10
        loginEmailTextField.layer.borderWidth = 1
        loginEmailTextField.layer.borderColor = UIColor(named: "TextField Border")!.cgColor
        loginEmailTextField.font = UIFont(name: "Inter-Regular", size: 16)
        loginEmailTextField.keyboardType = .emailAddress
        loginEmailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        loginContainerView.addSubview(loginEmailTextField)
        
        NSLayoutConstraint.activate([
            loginEmailTextField.leftAnchor.constraint(equalTo: loginContainerView.leftAnchor, constant: 2),
            loginEmailTextField.topAnchor.constraint(equalTo: loginEmailLabel.bottomAnchor, constant: 6),
            loginEmailTextField.rightAnchor.constraint(equalTo: loginContainerView.rightAnchor, constant: -2),
            loginEmailTextField.widthAnchor.constraint(equalToConstant: 353),
            loginEmailTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func configureLoginSendCodeButton() {
        let attributes: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        let attributedText = NSAttributedString(string: "Отправить код", attributes: attributes)
        loginSendCodeButton.setAttributedTitle(attributedText, for: .normal)

        loginSendCodeButton.titleLabel?.font = UIFont(name: "Inter-SemiBold", size: 16)
        loginSendCodeButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginContainerView.addSubview(loginSendCodeButton)
        
        NSLayoutConstraint.activate([
            loginSendCodeButton.leftAnchor.constraint(equalTo: loginContainerView.leftAnchor, constant: 230),
            loginSendCodeButton.topAnchor.constraint(equalTo: loginEmailTextField.bottomAnchor, constant: 22),
            loginSendCodeButton.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -10),
            loginSendCodeButton.widthAnchor.constraint(equalToConstant: 121),
            loginSendCodeButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func configureLoginCodeLabel() {
        loginCodeLabel.text = "Проверочный код"
        loginCodeLabel.font = UIFont(name: "Inter-Regular", size: 14)
        loginCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        loginContainerView.addSubview(loginCodeLabel)
        
        NSLayoutConstraint.activate([
            loginCodeLabel.leftAnchor.constraint(equalTo: loginContainerView.leftAnchor, constant: 7),
            loginCodeLabel.topAnchor.constraint(equalTo: loginEmailTextField.bottomAnchor, constant: 46),
            loginCodeLabel.rightAnchor.constraint(equalTo: loginContainerView.rightAnchor, constant: -225),
            loginCodeLabel.widthAnchor.constraint(equalToConstant: 124),
            loginCodeLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    private func configureLoginCodeTextField() {
        loginCodeTextField.attributedPlaceholder = NSAttributedString(string: "Введите код", attributes: attributes as [NSAttributedString.Key : Any])
        loginCodeTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        loginCodeTextField.leftViewMode = .always
        loginCodeTextField.layer.cornerRadius = 10
        loginCodeTextField.layer.borderWidth = 1
        loginCodeTextField.layer.borderColor = UIColor(named: "TextField Border")!.cgColor
        loginCodeTextField.font = UIFont(name: "Inter-Regular", size: 16)
        loginCodeTextField.keyboardType = .numberPad
        loginCodeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        loginContainerView.addSubview(loginCodeTextField)
        
        NSLayoutConstraint.activate([
            loginCodeTextField.leftAnchor.constraint(equalTo: loginContainerView.leftAnchor, constant: 3),
            loginCodeTextField.topAnchor.constraint(equalTo: loginCodeLabel.bottomAnchor, constant: 6),
            loginCodeTextField.rightAnchor.constraint(equalTo: loginContainerView.rightAnchor, constant: -2),
            loginCodeTextField.widthAnchor.constraint(equalToConstant: 353),
            loginCodeTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func configureSignInButton() {
        signInButton.setTitle("Войти", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.backgroundColor = .black
        signInButton.layer.cornerRadius = 30
        signInButton.titleLabel?.font = UIFont(name: "Inter-SemiBold", size: 16)
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginContainerView.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signInButton.leftAnchor.constraint(equalTo: loginContainerView.leftAnchor, constant: 2),
            signInButton.topAnchor.constraint(equalTo: loginCodeTextField.bottomAnchor, constant: 50),
            signInButton.rightAnchor.constraint(equalTo: loginContainerView.rightAnchor, constant: -2),
            signInButton.widthAnchor.constraint(equalToConstant: 353),
            signInButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func configureInvalidEmailLabel() {
        invalidEmailLabel.text = "Email должен содержать @edu.hse.ru"
        invalidEmailLabel.textColor = .red
        invalidEmailLabel.font = UIFont(name: "Inter-Regular", size: 13)
        invalidEmailLabel.translatesAutoresizingMaskIntoConstraints = false
        invalidEmailLabel.isHidden = true

        
        registerContainerView.addSubview(invalidEmailLabel)
        
        NSLayoutConstraint.activate([
            invalidEmailLabel.leftAnchor.constraint(equalTo: registerContainerView.leftAnchor, constant: 7),
            invalidEmailLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 5),
            invalidEmailLabel.rightAnchor.constraint(equalTo: registerContainerView.rightAnchor, constant: -110),
            invalidEmailLabel.widthAnchor.constraint(equalToConstant: 240),
            invalidEmailLabel.heightAnchor.constraint(equalToConstant: 16)
            
        ])
    }
    
    @objc private func segmentedControlValueChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            registerContainerView.isHidden = true
            loginContainerView.isHidden = false
        case 1:
            loginContainerView.isHidden = true
            registerContainerView.isHidden = false
        default:
            break
        }
    }
    
    // MARK: Configuring tapping on the signIn and Register button (for name, email and auth code)
    @objc private func signInButtonTapped() {
        
        guard let email = loginEmailTextField.text, !email.isEmpty, isValidEmail(email) else {
            showAlert(message: "Введите корректный Email заканчивающийся на @edu.hse.ru")
            return
        }
        
        guard let verifCode = loginCodeTextField.text, !verifCode.isEmpty, isValidVerifCode(verifCode) else {
            showAlert(message: "Кажется вы ввели неверный код")
            return
        }
        
        print("Successful login")
        // add logic for successful authorization
 
    }
    
    @objc private func registerButtonTapped() {
        guard let name = userNameTextField.text, !name.isEmpty else {
            showAlert(message: "Кажется вы забыли ввести свое имя")
            return
        }
        guard let email = emailTextField.text, !email.isEmpty, isValidEmail(email) else {
            showAlert(message: "Введите корректный Email заканчивающийся на @edu.hse.ru")
            return
        }
        guard let verifCode = codeTextField.text, !verifCode.isEmpty, isValidVerifCode(verifCode) else {
            showAlert(message: "Кажется вы ввели неверный код")
            return
        }
        print("Successful registration")
        // add logic for successful registration
    }
    
    private func isValidEmail(_ email: String) -> Bool {
            return email.hasSuffix("@edu.hse.ru")
        }
    
    private func isValidVerifCode(_ verifCode: String) -> Bool {
        let isValidCode = Int(verifCode) == 1234 ? true : false
        return isValidCode
        }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Оой...", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Попробовать снова", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}
