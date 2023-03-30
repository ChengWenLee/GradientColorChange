//
//  ViewController.swift
//  GradientColorChange
//
//  Created by Lee chanwen on 3/24/23.
//

import UIKit
import AVFAudio

class ViewController: UIViewController {

    @IBOutlet weak var primeRed: UISlider!
    @IBOutlet weak var primeGreen: UISlider!
    @IBOutlet weak var primeBlue: UISlider!
    @IBOutlet weak var secondRed: UISlider!
    @IBOutlet weak var secondGreen: UISlider!
    @IBOutlet weak var secondBlue: UISlider!
    @IBOutlet weak var gradienColorView: UIImageView!
    @IBOutlet weak var gradientColorLayer: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


    @IBAction func gradientColorLayer(_ sender: Any) {
        let primeColor = CGColor(red: CGFloat(primeRed.value), green: CGFloat(primeGreen.value), blue: CGFloat(primeBlue.value), alpha: 1)
        let secondColor = CGColor(red: CGFloat(secondRed.value), green: CGFloat(secondGreen.value), blue: CGFloat(secondBlue.value), alpha: 1)
        let gradientLayer = CAGradientLayer()
            gradientLayer.frame = CGRect(x: 0, y: 0, width: 365, height: 365)
            gradientLayer.cornerRadius = 20
        
        gradientLayer.colors = [primeColor, secondColor]
        gradientColorLayer.layer.addSublayer(gradientLayer)
        
    }
}

