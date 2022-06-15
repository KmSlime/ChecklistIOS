//
//  AllListsViewControllerTableViewController.swift
//  CheckList
//
//  Created by Nguyen Hong Liem on 6/15/22.
//

import UIKit

class AllListsViewControllerTableViewController: UITableViewController {


    // MARK: - IBOutlets

    
    
    // MARK: - Properties
    let cellIdentifier = "ChecklistCell"
    var lists = [Checklist]() // note: === var lists = Array<Checklist>()

    
    
    // MARK: - Overrides
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,for: indexPath)
        let checklist = lists[indexPath.row]
        cell.textLabel!.text = checklist.name
        cell.accessoryType = .detailDisclosureButton
        return cell
  
// -MARK: ĐÂY LÀ CÁCH KHAI BÁO CELL TRONG TABLE Ở NHỮNG VỊ TRÍ KHÁC NHAU
//        // At the top of the class implementation
//        let cellIdentifier = "ChecklistCell"
//        // In viewDidLoad
//        tableView.register(
//        UITableViewCell.self,
//        forCellReuseIdentifier: cellIdentifier)
//        // In tableView(_:cellForRowAt:)
//        let cell = tableView.dequeueReusableCell(
//        withIdentifier: cellIdentifier,
//        for: indexPath)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowChecklist" {
            let controller = segue.destination as! ChecklistViewController
            controller.checklist = sender as? Checklist
        }
    }
    
    // MARK: - Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()

        var listItem = Checklist(name: "Liêm Todo List")
        lists.append(listItem)
        listItem = Checklist(name: "Birthdays")
        lists.append(listItem)
        listItem = Checklist(name: "Groceries")
        lists.append(listItem)
        listItem = Checklist(name: "Cool Apps")
        lists.append(listItem)
        listItem = Checklist(name: "To Do")
        lists.append(listItem)
        
        
//        var list = Checklist()
//        list.name = "Liêm Todo List"
//        var list = Checklist()
//        list.name = "Birthdays"
//        lists.append(list)
//        list = Checklist()
//        list.name = "Groceries"
//        lists.append(list)
//        list = Checklist()
//        list.name = "Cool Apps"
//        lists.append(list)
//        list = Checklist()
//        list.name = "To Do"
//        lists.append(list)
        
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    // MARK: - didSelectRowAt
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let checklist = lists[indexPath.row]

        performSegue(withIdentifier: "ShowChecklist", sender: checklist)
    }

    // MARK: - Publics

    // MARK: - Private

    // MARK: - Actions

}

// MARK: - extension



// MARK: - protocol
