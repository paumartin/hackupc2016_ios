//
//  ThirdViewController.swift
//  Feed
//
//  Created by Arnau Marti Font on 19/2/16.
//  Copyright © 2016 Arnau Marti Font. All rights reserved.
//

import UIKit

var DescripcioVista = String()
var NomVista = String()
var ImatgeVista = UIImage()

class ThirdViewController: UITableViewController {
    
    @IBOutlet weak var NomPlatView: UITextField!
    @IBOutlet weak var DescripcioPlatView: UITextView!
    @IBOutlet weak var ImatgePlatView: UIImageView!



    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DescripcioPlatView.text = DescripcioVista
        NomPlatView.text = NomVista
        ImatgePlatView.image = ImatgeVista 
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
}
