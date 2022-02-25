//
//  ViewController.swift
//  ARExoplanets
//
//  Created by Fady Faheem on 2/23/22.
//

import UIKit
import SceneKit
import ARKit



class ARViewController: UIViewController, ARSCNViewDelegate {
    
    
    @IBOutlet var sceneView: ARSCNView!
    
    var nameOfScn = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        let scene = SCNScene(named: nameOfScn)!

        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

}
