////
////  ViewController.swift
////  CheckList
////
////  Created by TPS on 6/6/22.
////
//
//import UIKit
////
////extension ChecklistViewController: newItemAdd, ABCTableViewCellEditFieldDelegate {
////
////    func getIndexPath(_ tableView: UITableView, selectedIndex indexPath: IndexPath) {
////
////        if let cell = tableView.cellForRow(at: indexPath) {
////
//////            editField()
////        }
////    }
////
////
////    @objc func editField(text: String) {
////        sentMess = arrayText[indexSelected].mess
////        let controller = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "addItemController") as? itemDetailViewController
////        controller?.content = text
////        navigationController?.pushViewController(controller!, animated: true)
////    }
////
////    func getItemAdd(_ inputValue: String, _ inputStatus: Bool) {
////        print(inputValue, inputStatus)
////        arrayText.append((inputValue, inputStatus))
////        print(arrayText)
////
////        print("cái này có thể gọi từ check list sang màn hình textField")
////    }
////    override func viewWillAppear(_ animated: Bool) {
////
////        for item in arrayText {
////            print("Item: " + item.mess + "\nStatus: " + String(item.status) + "\n")
////
////        }
////
////        self.tableView.reloadData()
////    }
////
////}
//
//class ChecklistViewController: UITableViewController {
//
////
////    var arrayText: [(mess: String, status: Bool)] = [(mess: "Walk the dog", status: false),
////                                       (mess: "Brush my teeth", status: false),
////                                       (mess: "Learn iOS development", status: false),
////                                       (mess: "Soccer practice", status: false),
////                                       (mess: "Eat ice cream", status: false),
////                                       (mess: "nội dung 66666666666666", status: false),
////                                       (mess: "nội dung i", status: false)]
////
////    //var
////    var itemAddGet: String = "item mới"
////    var statusGet: Bool = false
////    var receiveMess: String!
////    var sentMess: ((String?))
////    var indexSelected: Int = 0
////
//////    init(arrayText: [(String, Bool)]){
//////        self.arrayText = arrayText
//////    }
//////
//////    required init?(coder: NSCoder) {
//////        fatalError("init(coder:) has not been implemented")
//////    }
//////
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
////        self.tableView.register(UINib(nibName: "ABCTableViewCell", bundle: nil), forCellReuseIdentifier: "ABCTableViewCell")
////
////        navigationItem.largeTitleDisplayMode = .never
////        navigationController?.navigationBar.prefersLargeTitles = true
////        print("Documents folder is \(documentsDirectory())")
////        print("Data file path is \(dataFilePath())")
//    }
//    
//    // MARK: - Table View Data Source
//    override func tableView(
//        _ tableView: UITableView,
//        numberOfRowsInSection section: Int
//    ) -> Int {
//        return 10
//    }
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem",for: indexPath)
//        // Add the following code
//        let label = cell.viewWithTag(1000) as! UILabel
//        if indexPath.row % 5 == 0 {
//        label.text = "Walk the dog"
//        } else if indexPath.row % 5 == 1 {
//        label.text = "Brush my teeth"
//        } else if indexPath.row % 5 == 2 {
//        label.text = "Learn iOS development"
//        } else if indexPath.row % 5 == 3 {
//        label.text = "Soccer practice"
//        } else if indexPath.row % 5 == 4 {
//        label.text = "Eat ice cream"
//        }
//        // End of new code block
//        return cell
//    }
//
////
////    func showAlert() {
////
////        let alertController = UIAlertController(title: "Thông báo", message: "Không được chọn hàng này!!", preferredStyle: .alert)
////
////        let action = UIAlertAction(
////            title: "Chọn lại!",
////            style: .default, handler: nil) //this is handle event when click, ex: confirm or cancle
////
////        alertController.addAction(action)
////
////        present(alertController, animated: true, completion: nil) //show
////    }
////
////    override func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int
////    ) -> Int {
////        return arrayText.count + 1
////    }
////
////    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath
////    ) -> UITableViewCell {
////
////        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ABCTableViewCell", for: indexPath) as? ABCTableViewCell else {
////            return UITableViewCell()
////        }
////        cell.delegate = self
//////        cell.infoButton.addTarget(self, action: #selector(self.editField), for: .touchUpInside)
////
////        cell.config(name: (indexPath.row < arrayText.count ? arrayText[indexPath.row].mess : "dòng này không có trong dữ liệu!"))
////
////        return cell
////    }
////
//////    func saveChecklistItems() {
//////        // 1
//////        let encoder = PropertyListEncoder()
//////        // 2
//////        do {
//////            // 3
////////            let data = try encoder.encode(arrayText)
//////            // 4
//////            try data.write(
//////                to: dataFilePath(),
//////                options: Data.WritingOptions.atomic)
//////            // 5
//////        } catch {
//////            // 6
//////            print("Error encoding item array: \(error.localizedDescription)")
//////        }
//////    }
////
////    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        return UITableView.automaticDimension
////    }
////
////    //MARK: - Selected a Row
////    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        if let cell = tableView.cellForRow(at: indexPath) {
////            let checkMarkText = cell.viewWithTag(1001) as! UILabel
////            if indexPath.row >= arrayText.count
////            {
////                checkMarkText.text = ""
////                showAlert()
////            } else if checkMarkText.text == "" {
//////                cell.accessoryType == .none {
//////                cell.accessoryType = .checkmark
////                checkMarkText.text = "√"
////
////                arrayText[indexPath.row].status.toggle()
////                print(#"message "\#(arrayText[indexPath.row].mess)" ở vị trí thứ \#(indexPath.row):"#, "Hoàn thành!")
////                print("Status: ", arrayText[indexPath.row].status)
////            } else {
////                checkMarkText.text = ""
//////                cell.accessoryType = .none
////                arrayText[indexPath.row].status.toggle()
////                print(#"message "\#(arrayText[indexPath.row].mess)" ở vị trí thứ \#(indexPath.row):"#, "Huỷ chọn!")
////                print("Status: ", arrayText[indexPath.row].status)
////            }
////        }
////        tableView.deselectRow(at: indexPath, animated: true)
////
////        //animation when click item
////        //        let vc = AniViewController()
////        //        self.present(vc, animated: true, completion: nil)
////    }
////
////    //MARK: swipe to delete a row
////    override func tableView( _ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
////        //destroy!!!!!!
////
////        arrayText.remove(at: indexPath.row - 1)
////        print(arrayText)
////        let indexPaths = [indexPath]
////        tableView.deleteRows(at: indexPaths, with: .automatic)
////        print(arrayText)
////    }
////
////
////    func itemDetailViewController(_ controller: itemDetailViewController, didFinishAdding item: String) {
////        let newRowIndex = arrayText.count
////        let addItemView = itemDetailViewController()
////
////        let item = (addItemView.inputValue!, false)
//////        items.append(item)
////        arrayText.append(item)
////        let indexPath = IndexPath(row: newRowIndex, section: 0)
////        let indexPaths = [indexPath]
////        tableView.insertRows(at: indexPaths, with: .automatic)
////        navigationController?.popViewController(animated:true)
////
////        print(arrayText)
////
////    }
////
////    func documentsDirectory() -> URL {
////        let paths = FileManager.default.urls(
////            for: .documentDirectory,
////            in: .userDomainMask)
////        return paths[0]
////    }
////    func dataFilePath() -> URL {
////        return
////        documentsDirectory().appendingPathComponent("Checklists.plist")
////    }
////
//////    func editItemViewController(_ controller: itemDetailViewController, didFinishAdding item: String) {
//////        let addItemView = itemDetailViewController()
//////        navigationController?.popViewController(animated:true)
//////    }
////
////
////
////    @IBAction func onClickAddButton(_ sender: Any) {
////        print("\nChuẩn bị lấy dữ liệu")
////
//////        let controller = itemDetailViewController()
////        let controller = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "addItemController") as? itemDetailViewController
////        controller?.completetionHandler = addItemCallback
////
////        controller?.delegate = self
////        navigationController?.pushViewController(controller!, animated: true)
////    }
////
////    func addItemCallback(text: String) {
////        print(text)
////    }
////
////
////    @IBAction func addItem(_ inputText: String, _ status: Bool){
////        arrayText.append((inputText, status))
////        let indexPath = IndexPath(row: arrayText.count, section: 0)
////        let indexPaths = [indexPath]
////        tableView.insertRows(at: indexPaths, with: .automatic)
////        print(arrayText)
////    }
//}
//
//
