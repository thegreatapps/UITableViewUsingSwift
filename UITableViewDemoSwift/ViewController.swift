//
//  ViewController.swift
//  UITableViewDemoSwift
//
//  Created by Hardik Trivedi on 21/07/2016.
//  Copyright © 2016 iHart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell")!
        
        cell.textLabel?.text = "Row : \(indexPath.row + 1)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let alert: UIAlertController = UIAlertController(title: "Row Tap", message: "Row : \(indexPath.row + 1) selected", preferredStyle: .Alert)
        
        let okAction: UIAlertAction = UIAlertAction(title: "Okay", style: .Default, handler: nil)
        alert.addAction(okAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

}

