//
//  ViewController.swift
//  ToDoList
//
//  Created by SolChan Ahn on 2018. 2. 28..
//  Copyright © 2018년 SolChan Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{

    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var calendarView: UICollectionView!
    
    var selectedCell: CalendarViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        calendarView.delegate = self
        calendarView.dataSource = self
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell?
        if indexPath.row < 3{
            cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath) as! ToDoViewCell
        }else{
            cell = tableView.dequeueReusableCell(withIdentifier: "toDidCell", for: indexPath) as! ToDidViewCell
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Today"
        case 1:
            return "Tommorow"
        case 2:
            return "Upcomming"
        default:
            return "error"
        }
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as? UITableViewHeaderFooterView
        header?.textLabel?.font = UIFont(name: "NanumSquareRoundB", size: 14) // change it according to ur requirement
        header?.textLabel?.textColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dateCell = calendarView.dequeueReusableCell(withReuseIdentifier: "dateCell", for: indexPath) as! CalendarViewCell
        
        return dateCell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth: CGFloat = (calendarView.frame.size.width - 20) / 7
        let cellHeight: CGFloat = calendarView.frame.size.height / 2
        let size = CGSize(width: cellWidth, height: cellHeight)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if selectedCell != nil{
            selectedCell.dateLb.backgroundColor = UIColor.clear
        }
        
        selectedCell = calendarView.cellForItem(at: indexPath) as! CalendarViewCell
        selectedCell.dateLb.layer.cornerRadius = selectedCell.dateLb.frame.size.width / 2
        selectedCell.dateLb.clipsToBounds = true
        selectedCell.dateLb.backgroundColor = .green
        
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint
    ) -> CGPoint {
        
    }

}

