//
//  ViewControllerScreen.swift
//  PrimeiroProjetoAcessibilidadeCurso
//
//  Created by admin on 26/07/23.
// Q

import UIKit

protocol ViewcontrollerScreenProtocol: AnyObject {
    func tappedLoginButton()
}

class ViewControllerScreen: UIView {

    private weak var delegate: ViewcontrollerScreenProtocol?
    
    public func delegate(delegate: ViewcontrollerScreenProtocol) {
        self.delegate = delegate
    }
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Acessibilidade"
        label.font = UIFont.systemFont(ofSize: 30,weight: .semibold)
        
        return label
    }()
    
    lazy var positionOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1"
        label.font = UIFont.systemFont(ofSize: 28,weight: .semibold)

        return label
    }()
    
    lazy var positionTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2"
        label.font = UIFont.systemFont(ofSize: 28,weight: .semibold)
        
        return label
    }()
    
    lazy var positionThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3"
        label.font = UIFont.systemFont(ofSize: 28,weight: .semibold)

        return label
    }()
    
    lazy var positionFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4"
        label.font = UIFont.systemFont(ofSize: 28,weight: .semibold)

        return label
    }()
    
    lazy var positionFiveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5"
        label.font = UIFont.systemFont(ofSize: 28,weight: .semibold)

        return label
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        
        return button
    }()
    
    lazy var personImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "person")
    
        return image
    }()
    
    @objc func tappedLoginButton() {
        print(#function)
        delegate?.tappedLoginButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addElements()
        configConstraints()
    }
    
    func addElements() {
        addSubview(titleLabel)
        addSubview(positionOneLabel)
        addSubview(positionTwoLabel)
        addSubview(positionThreeLabel)
        addSubview(positionFourLabel)
        addSubview(positionFiveLabel)
        
        addSubview(loginButton)
        addSubview(personImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
//            Forma Ordenada
//            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
//            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
//
//            positionOneLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
//            positionOneLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
//
//            positionTwoLabel.topAnchor.constraint(equalTo: positionOneLabel.bottomAnchor, constant: 10),
//            positionTwoLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
//
//            positionThreeLabel.topAnchor.constraint(equalTo: positionTwoLabel.bottomAnchor, constant: 10),
//            positionThreeLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
//
//            positionFourLabel.topAnchor.constraint(equalTo: positionThreeLabel.bottomAnchor, constant: 10),
//            positionFourLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
//
//            positionFiveLabel.topAnchor.constraint(equalTo: positionFourLabel.bottomAnchor, constant: 10),
//            positionFiveLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
//
//            loginButton.topAnchor.constraint(equalTo: positionFiveLabel.bottomAnchor, constant: 10),
//            loginButton.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            
            
//            Forma Desordenada
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            positionFourLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            positionFourLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            
            positionFiveLabel.topAnchor.constraint(equalTo: positionFourLabel.bottomAnchor, constant: 10),
            positionFiveLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            
            positionThreeLabel.topAnchor.constraint(equalTo: positionFiveLabel.bottomAnchor, constant: 10),
            positionThreeLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            
            positionOneLabel.topAnchor.constraint(equalTo: positionThreeLabel.bottomAnchor, constant: 10),
            positionOneLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            
            positionTwoLabel.topAnchor.constraint(equalTo: positionOneLabel.bottomAnchor, constant: 10),
            positionTwoLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            
            loginButton.topAnchor.constraint(equalTo: positionTwoLabel.bottomAnchor, constant: 10),
            loginButton.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            
            personImageView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            personImageView.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            personImageView.heightAnchor.constraint(equalToConstant: 120),
            personImageView.widthAnchor.constraint(equalToConstant: 120)
         
            
        
        ])
    }
}
