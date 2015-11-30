//
//  RootViewController.swift
//  SwiftPlayFor5
//
//  Created by Lee on 11/30/15.
//  Copyright © 2015 Lee. All rights reserved.
//

import UIKit

let ROOT_CELL_IDENTIFIER = "rootCell"

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var rootTableView: UITableView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Main"
        self.view.backgroundColor = UIColor.blueColor()
        
        self.rootTableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: ROOT_CELL_IDENTIFIER)
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        /*
        var cell = tableView.dequeueReusableCellWithIdentifier(ROOT_CELL_IDENTIFIER) as UITableViewCell!;
        if(cell == nil)
        {
            cell = UITableViewCell(style:.Default,reuseIdentifier:ROOT_CELL_IDENTIFIER);
        }
        */

        let cell = tableView.dequeueReusableCellWithIdentifier(ROOT_CELL_IDENTIFIER, forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = String("Index path: \(indexPath.row+1)")
            
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 60;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
