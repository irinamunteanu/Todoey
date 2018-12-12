//
//  ViewController.swift
//  Todoey
//
//  Created by Irina Munteanu on 07/12/2018.
//  Copyright © 2018 Irina Munteanu. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggs", "Destroy Demorgon"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK - TableView Data Source Methods
    
    //Declare numberOfRowsInSection
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    
    //Declare cellForRowAtIndexPath
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
   
    //MARK - TableView Delegate Methods
    
    //Print the cell to the console and check mark whenever the cell gets tapped
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        

    }
    
    
    
    


}


