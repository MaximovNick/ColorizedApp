//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Nikolai Maksimov on 21.06.2022.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
      
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? ColorViewController else { return }
        settingsVC.viewColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

//MARK: - ColorDelegate
extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
