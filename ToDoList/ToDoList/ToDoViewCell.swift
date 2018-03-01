//
//  ToDoViewCell.swift
//  ToDoList
//
//  Created by SolChan Ahn on 2018. 2. 28..
//  Copyright © 2018년 SolChan Ahn. All rights reserved.
//

import UIKit

class ToDoViewCell: UITableViewCell {
    @IBOutlet var timeLb: UILabel!
    @IBOutlet var contentLb: UILabel!
    @IBOutlet var checkImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        checkImgView.image = checkImgView.image!.withRenderingMode(.alwaysTemplate)
        checkImgView.tintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
