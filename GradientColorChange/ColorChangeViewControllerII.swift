//
//  GradientViewControllerII.swift
//  GradientColorChange
//
//  Created by Lee chanwen on 3/26/23.
//

import UIKit

class ColorChangeViewController: UIViewController {
    
    @IBOutlet weak var redColor: UISlider!
    @IBOutlet weak var greenColor: UISlider!
    @IBOutlet weak var blueColor: UISlider!
    @IBOutlet weak var alphaColor: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLable: UILabel!
    @IBOutlet weak var colorImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.value = Float(CGFloat(0))
        greenColor.value = Float(CGFloat(0))
        blueColor.value = Float(CGFloat(0))
        alphaColor.value = Float(0.5)
        redLabel.text = String(Int(redColor.value*255))
        greenLabel.text = String(Int(greenColor.value*255))
        blueLabel.text = String(Int(blueColor.value*255))
        alphaLable.text = String (format: "%.2f", alphaColor.value)
        // Do any additional setup after loading the view.
    }
    
    func reflashValue () {
        
        colorImageView.backgroundColor = UIColor(red: CGFloat(redColor.value), green: CGFloat(greenColor.value), blue: CGFloat(blueColor.value), alpha: CGFloat(alphaColor.value))
        redLabel.text = String(Int(redColor.value*255))
        greenLabel.text = String(Int(greenColor.value*255))
        blueLabel.text = String(Int(blueColor.value*255))
        alphaLable.text = String (format: "%.2f", alphaColor.value)
    }
        
    @IBAction func changeColor(_ sender: Any) {
        
        
        reflashValue()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
