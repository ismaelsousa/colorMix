//
//  ViewController.swift
//  colorMix
//
//  Created by ismael sousa on 11/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        resetAndUpdateColor()
       
    }

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    
    
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(sliderRed.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(sliderBlue.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(sliderGreen.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    
    }
    
    func resetAndUpdateColor(){
        print("Reset")
        
        sliderBlue.value = 1
        sliderRed.value = 1
        sliderGreen.value = 1
        
        blueSwitch.isOn = false
        redSwitch.isOn = false
        greenSwitch.isOn = false
        
        updateColor()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        resetAndUpdateColor()
    }
}

