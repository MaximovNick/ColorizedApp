//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Nikolai Maksimov on 11.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValue(for: redLabel, greenLabel, blueLabel)
        setColor()
    }
    
   // MARK: - @IBAction
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider:
            setValue(for: redLabel)
        case greenSlider:
            setValue(for: greenLabel)
        default:
            setValue(for: blueLabel)
            
        }
    }
    
    // MARK: - Private methods
    private func setValue(for labels: UILabel...) {
        for label in labels {
            switch label {
            case redLabel:
                label.text = string(redSlider)
            case greenLabel:
                label.text = string(greenSlider)
            default:
                label.text = string(blueSlider)
            }
        }
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func string(_ slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

