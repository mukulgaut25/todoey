//
//  ViewController.swift
//  todoey
//
//  Created by mukul gautam on 31/08/18.
//  Copyright © 2018 mukul gautam. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["find fink","buy eggs","eat cake"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   //mark- tableview datasource method
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoitemCell", for: indexPath)
        
 cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    //mark delegate method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row])
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark


        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    
    
  
}

