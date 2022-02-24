//
//  StartViewController.swift
//  ARExoplanets
//
//  Created by Fady Faheem on 2/23/22.
//

import UIKit

class StartViewController: UIViewController {

    var delegate: dataIntake?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showExoplanetPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "preesentARView", sender: self)
    }
    
    @IBAction func funcShowDioramaPressed(_ sender: UIButton) {
    }
    
}
