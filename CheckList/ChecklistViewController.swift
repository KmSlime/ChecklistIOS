//
//  ViewController.swift
//  CheckList
//
//  Created by TPS on 6/6/22.
//

import UIKit


class ChecklistViewController: UITableViewController {

//    var arrayTest: [String]!
    var arrayText: [String]!
    var arrayChecked: [Bool]!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        arrayText = ["Walk the dog", "Brush my teeth", "Learn iOS development", "Soccer practice", "Eat ice cream", "nội dung 66666666666666", "nội dung i"]
        
        arrayChecked = [false, false, false, false, false, false, false]
        self.tableView.register(UINib(nibName: "ABCTableViewCell", bundle: nil), forCellReuseIdentifier: "ABCTableViewCell")
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
    }
    
    func showAlert() {
        
        let alertController = UIAlertController(title: "Thông báo", message: "Không được chọn hàng này!!", preferredStyle: .alert)

        let action = UIAlertAction(
            title: "Chọn lại!",
            style: .default, handler: nil) //this is handle event when click, ex: confirm or cancle

        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil) //show
    }

    override func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int
    ) -> Int {
        return arrayText.count + 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ABCTableViewCell", for: indexPath) as? ABCTableViewCell else {
            return UITableViewCell()
        }

        //?????? note chỗ này, nó in ra cái false
        cell.config(name: (indexPath.row < arrayText.count ? arrayText[indexPath.row] : "dòng thứ " + (indexPath.row % 2 == 0 ? "\t\t\t\t\t" : "") + String(indexPath.row)))
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if indexPath.row >= arrayText.count
            {
                showAlert()
            } else if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
                arrayChecked[indexPath.row].toggle()
                print("vị trí: \(indexPath.row):", arrayChecked[indexPath.row])
                print(arrayChecked!)
            } else {
                cell.accessoryType = .none
                arrayChecked[indexPath.row].toggle()
                print("vị trí: \(indexPath.row):", arrayChecked[indexPath.row])
                print(arrayChecked!)

            }
        }
        tableView.deselectRow(at: indexPath, animated: true)

        //animation when click item
        //        let vc = AniViewController()
        //        self.present(vc, animated: true, completion: nil)
    }
    
    override func tableView( _ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath
    ) {
        //destroy!!!!!!
        arrayText.remove(at: indexPath.row - 1)
        arrayChecked.remove(at: indexPath.row - 1)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    @IBAction func addItem(_ inputText: String, _ status: Bool){
        let itemAdd = inputText
        let newItemStatus = status
        arrayText.append(itemAdd)
        arrayChecked.append(newItemStatus)
        let indexPath = IndexPath(row: arrayText.count, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
        print(arrayText!)
        print(arrayChecked!)
    }
}

