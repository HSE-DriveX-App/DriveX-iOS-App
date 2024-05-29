//
//  ViewController.swift
//  HSE DriveX
//
//  Created by Nikita Zolotov on 10.02.2024.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    private let carImage = UIImageView()
    private let mainTitle = UILabel()
    private let descriptionTitle = UILabel()
    private let enterButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.backgroundColor = .white
        
        configureMainTitle()
        configureDescriptionTitle()
        configureCarImage()
        configureEnterButton()
    }
    
    private func configureCarImage() {
        carImage.image = UIImage(named: "Car image")
        carImage.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(carImage)
        
        NSLayoutConstraint.activate([
            carImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            carImage.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0),
            carImage.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0)
        ])
        
        
    }
    
    private func configureMainTitle() {
        mainTitle.text = "Создай аккаунт"
        mainTitle.textColor = .black
        mainTitle.font = UIFont(name: "Inter-Bold", size: 32)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainTitle)
        
        NSLayoutConstraint.activate([
            mainTitle.widthAnchor.constraint(equalToConstant: 257),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 417),
            mainTitle.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    private func configureDescriptionTitle() {
        descriptionTitle.text = "Добирайся до университета с комфортом вместе со своими друзьями"
        descriptionTitle.textColor = .black
        descriptionTitle.font = UIFont(name: "Inter-Regular", size: 15.5)
        descriptionTitle.numberOfLines = 2
        descriptionTitle.textAlignment = .center
        descriptionTitle.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(descriptionTitle)
        
        NSLayoutConstraint.activate([
            descriptionTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 24),
            descriptionTitle.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            descriptionTitle.widthAnchor.constraint(equalToConstant: 319)
        ])
    }
    
    private func configureEnterButton() {
        enterButton.setTitle("Поехали", for: .normal)
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.backgroundColor = UIColor(named: "Orange main")
        enterButton.layer.cornerRadius = 30
        enterButton.titleLabel?.font = UIFont(name: "Inter-SemiBold", size: 16)
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(enterButton)
        
        NSLayoutConstraint.activate([
            enterButton.topAnchor.constraint(equalTo: descriptionTitle.bottomAnchor, constant: 39),
            enterButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 353),
            enterButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }


}

