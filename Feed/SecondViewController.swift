//
//  SecondViewController.swift
//  Feed
//
//  Created by Arnau Marti Font on 19/2/16.
//  Copyright © 2016 Arnau Marti Font. All rights reserved.
//

import UIKit
import Alamofire


class SecondViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var NomLabel: UITextField!
    @IBOutlet weak var DescripcioLabel: UITextView!
    
    @IBAction func SaveTapped(sender: AnyObject) {
        
//        var plat = (nom: NomLabel.text, descripcio: DescripcioLabel.text, foto: UIImagePNGRepresentation(ImatgeVista))
        Alamofire.request(.POST, "http://54.201.234.52/plat/save", parameters: ["nom" : NomLabel.text!, "descripcio" : DescripcioLabel.text/*, "foto" : String(UIImagePNGRepresentation(PlatImage.image!)!)*/], encoding: .JSON)
            .responseString { response in
                print(response)
                self.NomLabel.text = ""
                self.DescripcioLabel.text = ""
        }
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

    @IBOutlet weak var PlatImage: UIImageView!

 
    
    @IBAction func SelectImageTapped(sender: AnyObject) {
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

