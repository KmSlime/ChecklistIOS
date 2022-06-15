//
//  itemDetailViewController.swift
//  CheckList
//
//  Created by Nguyen Hong Liem on 6/15/22.
//

import UIKit

class ItemDetailViewController: UITableViewController {


    // MARK: - IBOutlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    // MARK: - Properties
    var checklistViewController: ChecklistViewController!
    var delegate: itemDetailViewControllerDelegate?
    var itemToEdit: ChecklistItem?


    // MARK: - Overrides
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // MARK: - Table View Delegates
    override func tableView(
    _ tableView: UITableView,
    willSelectRowAt indexPath: IndexPath
    ) -> IndexPath? {
    return nil
    }
    
    
    // MARK: - Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.becomeFirstResponder()
        doneBarButton.isEnabled = true
        navigationItem.largeTitleDisplayMode = .never

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    textField.becomeFirstResponder()
        if let item = itemToEdit {
            title = "Edit Item"
            textField.text = item.text
        }
    }
    // MARK: - Publics
    // MARK: - Text Field Delegates
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String
    ) -> Bool {
        let oldText = textField.text!
        let stringRange = Range(range, in: oldText)!
        let newText = oldText.replacingCharacters(
            in: stringRange,
            with: string)
        if newText.isEmpty {
            doneBarButton.isEnabled = false
        } else {
            doneBarButton.isEnabled = true
        }
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        doneBarButton.isEnabled = false
        return true
    }

    func configureCheckmark(
        for cell: UITableViewCell,
        with item: ChecklistItem
    ) {
        let label = cell.viewWithTag(1001) as! UILabel
        if item.checked {
            label.text = "√"
        } else {
            label.text = ""
        }
    }
    // MARK: - Private

    // MARK: - Actions
    @IBAction func cancel() {
        delegate?.itemDetailViewControllerDidCancel(self)

    }
   
    @IBAction func done() {
        if let item = itemToEdit {
            item.text = textField.text!
            delegate?.itemDetailViewController(self, didFinishEditing: item)
        } else {
            let item = ChecklistItem()
            item.text = textField.text!
            delegate?.itemDetailViewController(self, didFinishAdding: item)
        }
    }
}

// MARK: - extension
extension ItemDetailViewController: UITextFieldDelegate {
    
}


// MARK: - protocol
protocol itemDetailViewControllerDelegate: AnyObject {
    func itemDetailViewControllerDidCancel( _ controller: ItemDetailViewController)
    func itemDetailViewController( _ controller: ItemDetailViewController, didFinishAdding item: ChecklistItem )
    func itemDetailViewController( _ controller: ItemDetailViewController, didFinishEditing item: ChecklistItem )
}

