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
        redColor.value = 0
        greenColor.value = 0
        blueColor.value = 0
        alphaColor.value = 0.5
        
        updateColor()
        // Do any additional setup after loading the view.
    }
    
    func updateColor () {
        let red = CGFloat(redColor.value)
        let green = CGFloat(greenColor.value)
        let blue = CGFloat(blueColor.value)
        let alpha = CGFloat(alphaColor.value)
        colorImageView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        redLabel.text = String(Int(redColor.value*255))
        greenLabel.text = String(Int(greenColor.value*255))
        blueLabel.text = String(Int(blueColor.value*255))
        alphaLable.text = String (format: "%.2f", alphaColor.value)
    }
        
    @IBAction func changeColor(_ sender: Any) {
        updateColor()
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
