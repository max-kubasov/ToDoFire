//
//  TasksViewController.swift
//  ToDoFire
//
//  Created by Max on 01.01.2023.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.backgroundColor = .clear
        
        var content = cell.defaultContentConfiguration()
        content.text = "This is cell number \(indexPath.row)"
        content.textProperties.color = .white
        cell.contentConfiguration = content
        
        return cell
    }
    



}
