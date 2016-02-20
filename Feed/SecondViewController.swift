//
//  SecondViewController.swift
//  Feed
//
//  Created by Arnau Marti Font on 19/2/16.
//  Copyright © 2016 Arnau Marti Font. All rights reserved.
//

import UIKit

var Plats = [Plat]()

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var NomLabel: UITextView!
    @IBOutlet weak var DescripcioLabel: UITextView!
    
    @IBAction func SaveButtonTapped(sender: AnyObject) {
        
        var newPlat = Plat(nom: NomLabel.text, descripcio: DescripcioLabel.text, imatge: PlatImage.image)
        
        Plats.append(newPlat!)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

    @IBOutlet weak var PlatImage: UIImageView!
    
    @IBAction func AddButton(sender: AnyObject) {
        
        var myPickerController = UIImagePickerController()

        myPickerController.delegate = self
        myPickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController(myPickerController, animated: true, completion: nil)
        
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        
        PlatImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    
    

}

