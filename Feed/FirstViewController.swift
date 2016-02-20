//
//  FirstViewController.swift
//  Feed
//
//  Created by Arnau Marti Font on 19/2/16.
//  Copyright © 2016 Arnau Marti Font. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    @IBOutlet var TableViewPlats: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        TableViewPlats.reloadData()
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        TableViewPlats.reloadData()
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
        
        cell.textLabel?.text = Plats[indexPath.row].nom
        cell.imageView?.image = Plats[indexPath.row].imatge
        cell.detailTextLabel?.text = "Usuari"
       
        cell.imageView!.layer.cornerRadius = 10
        cell.imageView!.layer.borderWidth = 2
   
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        DescripcioVista = Plats[indexPath.row].descripcio
        NomVista = Plats[indexPath.row].nom
        ImatgeVista = (Plats[indexPath.row].imatge)!
        
    }
    //borrar index
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.Delete{
            Plats.removeAtIndex(indexPath.row)
        }
        
        TableViewPlats.reloadData()
    }




}

