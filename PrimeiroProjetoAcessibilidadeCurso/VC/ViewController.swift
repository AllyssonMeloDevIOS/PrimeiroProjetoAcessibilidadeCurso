//
//  ViewController.swift
//  PrimeiroProjetoAcessibilidadeCurso
//
//  Created by admin on 26/07/23.
//

import UIKit

class ViewController: UIViewController {

    var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        configAcessibility()
        
    }
    
    func configAcessibility() {
        
        // isAcessibilityElement -> Ele possibilita a leitura da Acessibilidade
        
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
        screen?.loginButton.isAccessibilityElement = true
        screen?.titleLabel.isAccessibilityElement = true
        screen?.personImageView.isAccessibilityElement = true
        
        // acessibilityLabel -> é o que o voiceOver Irá falar quando o cursor estiver sobre no elemento.
        
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição três"
        screen?.positionFourLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        screen?.personImageView.accessibilityLabel = "Imagem de uma pessoa"
        
        // acessibilityTraits -> é onde a gente especifica que é um texto/imagem/botao
        
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionFourLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        screen?.loginButton.accessibilityTraits = .button
        screen?.titleLabel.accessibilityTraits = .header
        screen?.personImageView.accessibilityTraits = .image

        
        guard let primeiro = screen?.positionOneLabel,
              let segundo = screen?.positionTwoLabel,
              let terceiro = screen?.positionThreeLabel,
              let quarto = screen?.positionFourLabel,
              let quinto = screen?.positionFiveLabel,
              let button = screen?.loginButton,
        let title = screen?.titleLabel,
        let image = screen?.personImageView else { return }
        
        // acesibilityElements -> ele ordena os elementos acessíveis
        
        view.accessibilityElements = [title,primeiro,segundo,terceiro,quarto,quinto, button,image]
    }


}

extension ViewController: ViewcontrollerScreenProtocol {
    func tappedLoginButton() {
        UIAccessibility.post(notification: .screenChanged, argument: screen?.positionOneLabel)
//        UIAccessibility.post(notification: .announcement, argument: "Teste o botão foi pressionado")
    }
}

