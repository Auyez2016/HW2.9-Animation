//
//  ViewController.swift
//  HW2.9 Animation
//
//  Created by Auyez on 11/11/20.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var springView: SpringView!
    @IBOutlet var springViewLabel: SpringLabel!
    @IBOutlet var springButton: SpringButton!
    
    var animationName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationName = animation.init().preset
        springButton.titleLabel?.text = animationName
        springViewLabel.text = animationName
    }
    
    @IBAction func springButtonAction() {
        
        
        springView.animation = animationName
        springView.delay = 0.5
        springView.animate()
        
        springViewLabel.text = animationName
        springButton.titleLabel?.text = animationName
        springButton.animation = animation.init().preset
        springButton.animate()
        animationName = animation.init().preset
    }
}

