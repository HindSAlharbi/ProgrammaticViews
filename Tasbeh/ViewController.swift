//
//  ViewController.swift
//  Tasbeh
//
//  Created by Mobark Alseif on 18/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var tasbeh = Tasbeh(counter: 0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Background view color
        view.backgroundColor = .black
        
        // MARK: - image view
        let image = UIImageView(image: UIImage(named: "backgroundHome"))
        setupImageView(image)
        
        // MARK: - image view
        let ourlabel = UILabel()
        setupLabelView(ourlabel)

        // MARK: - image view
        let ourButton = UIButton()
        setupButton(ourButton)
        setupConstaint(image, ourButton, ourlabel)
        
        
    }
    
    // MARK: - image view
    fileprivate func setupImageView(_ image: UIImageView) {
        image.translatesAutoresizingMaskIntoConstraints = false
        image.alpha = 0.4
        view.addSubview(image)
    }
    
    // MARK: - image view
    
    fileprivate func setupLabelView(_ ourlabel: UILabel) {
        ourlabel.textColor = .systemBlue
        ourlabel.text = "Hi"
        ourlabel.textAlignment = .center
        ourlabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ourlabel)
    }
    
    fileprivate func setupButton(_ ourButton: UIButton) {
        ourButton.setTitle("Our Button", for: .normal)
        ourButton.setTitleColor(.white, for: .normal)
        ourButton.backgroundColor = .blue
        ourButton.layer.cornerRadius = 12
        
        ourButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ourButton)
    }
    fileprivate func setupConstaint(_ image: UIImageView, _ ourButton: UIButton, _ ourlabel: UILabel) {
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: -40).isActive = true
        image.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 40).isActive = true
        
        
        ourButton.topAnchor.constraint(equalTo: ourlabel.safeAreaLayoutGuide.bottomAnchor,constant: 80).isActive = true
        
        ourButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        ourButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        ourButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        ourlabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        ourlabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        
        ourlabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        ourlabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    
}
