//
//  FirstViewController.swift
//  Feed
//
//  Created by Arnau Marti Font on 19/2/16.
//  Copyright © 2016 Arnau Marti Font. All rights reserved.
//

import UIKit
import Alamofire
var Plats = [Plat]()

class FirstViewController: UITableViewController {

    @IBOutlet var TableViewPlats: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        Alamofire.request(.GET, "http://54.201.234.52/plat/getList")
            .responseJSON { response in
                
                do {
                    Plats.removeAll()
                    let json = try NSJSONSerialization.JSONObjectWithData(response.data!, options: NSJSONReadingOptions.AllowFragments)
                    
                    for item in (json as? NSArray)! {
                        
                        print(item)
                        print(item.valueForKey("nom"))
                        print(item.valueForKey("descripcio"))
                        
                        var nom = item.valueForKey("nom")
                        var descripcio = item.valueForKey("descripcio")
                       // var foto = UIImage();
                        //print(item.valueForKey("foto"))
                        /*if (item.valueForKey("foto") != nil) {
                            foto = UIImage(data: (item.valueForKey("foto") as? NSData)!)!
                        }
                        */
                        let newPlat = Plat(nom: (nom as? String)!, descripcio: (descripcio as? String)! /*, imatge: foto*/)
                        
                        
                        Plats.append(newPlat!)
                        
                    }
                    self.TableViewPlats.reloadData()
                } catch let error as NSError {
                    print("hola")
                }
        }
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Plats.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = String(Plats[indexPath.row].nom)
        //cell.imageView?.image = plats[indexPath.row].imatge
        cell.detailTextLabel?.text = "Usuari"
       
        /*
        cell.imageView!.layer.cornerRadius = 10
        cell.imageView!.layer.borderWidth = 2
        */
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        DescripcioVista = Plats[indexPath.row].descripcio
        NomVista = Plats[indexPath.row].nom
      //  ImatgeVista = (Plats[indexPath.row].imatge)!
        
    }
    //borrar index
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.Delete{
            Plats.removeAtIndex(indexPath.row)
        }
        
        TableViewPlats.reloadData()
    }


}

