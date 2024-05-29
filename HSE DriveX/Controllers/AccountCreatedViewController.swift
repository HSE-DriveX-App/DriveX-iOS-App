//
//  AccountCreatedViewController.swift
//  HSE DriveX
//
//  Created by Nikita Zolotov on 27.02.2024.
//

import UIKit

class AccountCreatedViewController: UIViewController {
    
    private let createdImage = UIImageView()
    private let mainTitleLabel = UILabel()
    private let aboutLabel = UILabel()
    private let nextButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.backgroundColor = .white
        
        configureCreatedImage()
        configureMainTitleLabel()
        configureAboutLabel()
        configureNextButton()
        
    }
    
    private func configureCreatedImage() {
        createdImage.image = UIImage(named: "Created")
        createdImage.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(createdImage)
        
        NSLayoutConstraint.activate([
            createdImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            createdImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 166),
            createdImage.widthAnchor.constraint(equalToConstant: 91),
            createdImage.heightAnchor.constraint(equalToConstant: 84)
        ])
    }
    
    private func configureMainTitleLabel() {
        mainTitleLabel.text = "Аккаунт создан"
        mainTitleLabel.textColor = .black
        mainTitleLabel.font = UIFont(name: "Inter-Bold", size: 30)
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainTitleLabel)
        
        NSLayoutConstraint.activate([
            mainTitleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            mainTitleLabel.topAnchor.constraint(equalTo: createdImage.bottomAnchor, constant: 36),
            mainTitleLabel.widthAnchor.constraint(equalToConstant: 240),
            mainTitleLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func configureAboutLabel() {
        aboutLabel.text = "Прямо сейчас узнайте о возможностях приложения"
        aboutLabel.textColor = .black
        aboutLabel.font = UIFont(name: "Inter-Regular", size: 15.5)
        aboutLabel.numberOfLines = 2
        aboutLabel.textAlignment = .center
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(aboutLabel)
        
        NSLayoutConstraint.activate([
            aboutLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            aboutLabel.topAnchor.constraint(equalTo: mainTitleLabel.bottomAnchor, constant: 24),
            aboutLabel.widthAnchor.constraint(equalToConstant: 325)
        ])
    }
    
    private func configureNextButton() {
        nextButton.setTitle("Перейти", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.titleLabel?.font = UIFont(name: "Inter-Semibold", size: 16)
        nextButton.backgroundColor = UIColor(named: "Orange main")
        nextButton.layer.cornerRadius = 30
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            nextButton.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 29),
            nextButton.widthAnchor.constraint(equalToConstant: 353),
            nextButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    



}
