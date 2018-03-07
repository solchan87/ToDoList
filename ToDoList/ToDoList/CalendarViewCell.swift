//
//  CalendarViewCell.swift
//  ToDoList
//
//  Created by SolChan Ahn on 2018. 3. 6..
//  Copyright © 2018년 SolChan Ahn. All rights reserved.
//

import UIKit

class CalendarViewCell: UICollectionViewCell {
    @IBOutlet var dateLb: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
}

class CalendarSelectedViewCell: UICollectionViewCell {
    @IBOutlet var dateLb: UILabel!
}
