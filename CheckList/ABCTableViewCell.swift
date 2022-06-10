//
//  ABCTableViewCell.swift
//  CheckList
//
//  Created by TPS on 6/7/22.
//

import UIKit

protocol ABCTableViewCellEditFieldDelegate {
    func editField(text: String)
}

class ABCTableViewCell: UITableViewCell {
    
    @IBOutlet weak var infoButton: UIButton!

    @IBOutlet weak var nameLabel: UILabel!
    var content: String = ""
    
    var delegate: ABCTableViewCellEditFieldDelegate?
//    var delegate: abcDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        delegate.a1()
        // Initialization code
        
    }
 

    func config(name: String) {
        nameLabel.text = name
        content = name
//        infoButton.addTarget(self, action: #selector(onClickInfo), for: .touchUpInside)
    }
    
//    func editField() {
//        let mess = nameLabel.text!
//        infoButton.addTarget(self, action: Selector(("editField")), for: .touchUpInside)
//    }
//
    @IBAction func onClickInfo(_ sender: Any) {
        delegate?.editField(text: content)
    }
    
    @objc func onClickInfo(){
        
    }
    
}
