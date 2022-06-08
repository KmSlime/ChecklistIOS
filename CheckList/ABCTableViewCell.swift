//
//  ABCTableViewCell.swift
//  CheckList
//
//  Created by TPS on 6/7/22.
//

import UIKit

class ABCTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    var onClickButton: (() -> Void)?
    var delegate: abcDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        delegate.a1()
        // Initialization code
    }

    func config(name: String) {
        nameLabel.text = name
    }
    
    
    
}
