//
//  ViewController.swift
//  ARExoplanets
//
//  Created by Fady Faheem on 2/23/22.
//

import UIKit
import SceneKit
import ARKit



class ARViewController: UIViewController, ARSCNViewDelegate, dataIntake {
    
    @IBOutlet var sceneView: ARSCNView!
    
    var nameOfScn = "art.scnassets/Circle.scn"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Set the view's delegate
        sceneView.delegate = self

//        let sphere = SCNSphere(radius: 0.1)
//        let material = SCNMaterial()
//        material.diffuse.contents = UIColor.red
//        sphere.materials = [material]
//        let node = SCNNode()
//        node.position = SCNVector3(0, 0.1, -0.5)
//        node.geometry = sphere
//        sceneView.scene.rootNode.addChildNode(node)
//        sceneView.autoenablesDefaultLighting = true
        
        
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
