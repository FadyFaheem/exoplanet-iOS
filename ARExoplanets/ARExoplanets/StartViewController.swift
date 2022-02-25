//
//  StartViewController.swift
//  ARExoplanets
//
//  Created by Fady Faheem on 2/23/22.
//

import UIKit


class StartViewController: UIViewController {

    var scnName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showExoplanetPressed(_ sender: UIButton) {
        scnName = "art.scnassets/Circle.scn"
        performSegue(withIdentifier: "preesentARView", sender: self)
    }
    
    @IBAction func funcShowDioramaPressed(_ sender: UIButton) {
        scnName = "art.scnassets/Diorama.scn"
        performSegue(withIdentifier: "preesentARView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "preesentARView"){
            let destanationVC = segue.destination as! ARViewController
            destanationVC.nameOfScn = scnName
        }
    }
}
