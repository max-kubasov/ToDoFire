//
//  TasksViewController.swift
//  ToDoFire
//
//  Created by Max on 01.01.2023.
//

import UIKit
import Firebase

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
    

    @IBAction func signOutTapped(_ sender: UIBarButtonItem) {
        do {
           try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        
        let alertController = UIAlertController(title: "New Task", message: "Add new task", preferredStyle: .alert)
        alertController.addTextField()
        
        let save = UIAlertAction(title: "Save", style: .default) { _ in
            
            guard let textField = alertController.textFields?.first, textField.text != "" else { return }
            
            // let task
            // taskRef
            //
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .default)
        alertController.addAction(save)
        alertController.addAction(cancel)
        
        present(alertController, animated: true)
        
    }
    
}
