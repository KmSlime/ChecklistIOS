//
//  itemDetailViewController.swift
//  CheckList
//
//  Created by TPS on 6/8/22.
//

import UIKit

 // MARK: - UITableViewController

//extension itemDetailViewController2: UITextFieldDelegate {
//    
//}
//
//protocol newItemAdd {
//    func getItemAdd(_ inputValue: String, _ inputStatus: Bool)
//}

class itemDetailViewController2: UITableViewController {
    
//    var completetionHandler: ((String) -> Void)?
//    var delegate: newItemAdd?
//    var content: String = ""
//
//    @IBOutlet weak var inputText: UITextField!
//    @IBOutlet weak var doneBarButton: UIBarButtonItem!
//
//    var inputValue: String?
//    var receiveMess: String!
//
    override func viewDidLoad() {
        super.viewDidLoad()
//        inputText.text = content
//        navigationItem.largeTitleDisplayMode = .never


    }
//
//
//
//    func textFieldShouldClear(_ textField: UITextField) -> Bool {
//        doneBarButton.isEnabled = false
//        return true
//    }
//
//    func textField(
//        _ inputText: UITextField,
//        shouldChangeCharactersIn range: NSRange,
//        replacementString string: String
//    ) -> Bool {
//        let oldText = inputText.text!
//        let stringRange = Range(range, in: oldText)!
//        let newText = oldText.replacingCharacters(
//            in: stringRange,
//            with: string)
//        if newText.isEmpty {
//            doneBarButton.isEnabled = false
//        } else {
//            doneBarButton.isEnabled = true
//        }
//        return true
//    }
//
//    @IBAction func cancel(){
//        navigationController?.popViewController(animated: true)
//    }
//
//    @IBAction func done(){
//        let inputValue = inputText.text!
//        completetionHandler?(inputValue)
//        delegate?.getItemAdd(inputValue, false)
//
////        if let item = itemToEdit {
////         item.text = textField.text!
////         delegate?.itemDetailViewController(
////         self,
////         didFinishEditing: item)
////         } else {
////         let item = ChecklistItem()
////         item.text = textField.text!
////         delegate?.itemDetailViewController(self, didFinishAdding: item)
////         }
//
//        navigationController?.popViewController(animated: true)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        inputText.becomeFirstResponder()
//
//        let checkListViewController = ChecklistViewController()
//        receiveMess = checkListViewController.sentMess
//
//        if case inputText.text = receiveMess {
//            title = "Edit Item"
//            inputText.text = receiveMess
//         doneBarButton.isEnabled = true
//        }
//
//
//        //check flow sequence to modify
//
//        //
////
////        if inputText.text != nil {
////            inputText.text = content
////        }
//
////        let aniVC1 = AniViewController()
////        let aniVC2 = AniViewController()
////        aniVC.abc = 2
////        let addItemVC = itemDetailViewController()
////        if (true) {
////            navigationController?.pushViewController(aniVC, animated: true)
////            navigationController?.popToViewController(animated: )
////        }
//    }
}



