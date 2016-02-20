//
//  FourViewController.swift
//  Feed
//
//  Created by Arnau Marti Font on 20/2/16.
//  Copyright © 2016 Arnau Marti Font. All rights reserved.
//

import UIKit

class FourViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Table view data source
    /*
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 28
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = String(Plats[indexPath.row].nom)
        
        //cell.imageView?.image = plats[indexPath.row].imatge
        
        //cell.detailTextLabel?.text = String(Plats[indexPath.row].usuari)
        
        /*
        cell.imageView!.layer.cornerRadius = 10
        cell.imageView!.layer.borderWidth = 2
        */
        return cell
    }*/
    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        DescripcioVista = Plats[indexPath.row].descripcio
        NomVista = Plats[indexPath.row].nom
        
       //ImatgeVista = (Plats[indexPath.row].imatge)!
        
    }*/
    //borrar index
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.Delete{
            Plats.removeAtIndex(indexPath.row)
        }
        
        
    }
    
}
