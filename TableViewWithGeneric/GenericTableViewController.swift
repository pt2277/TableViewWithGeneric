//
//  GenericTableViewController.swift
//  TableViewWithGeneric
//
//  Created by Papoj Thamjaroenporn on 1/14/18.
//  Copyright © 2018 Papoj Thamjaroenporn. All rights reserved.
//

import UIKit

class ViewController: BaseTableViewController {
    let data: Int
    
    init(data: Int) {
        self.data = data
        super.init(style: .grouped)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        print("called numberOfSections")
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("called numberOfRows for section \(section)")
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellFor: (\(indexPath.section), \(indexPath.row))")
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel!.text = "foo \(indexPath.row) \(String(describing: self.data))"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelect: (\(indexPath.section), \(indexPath.row))")
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}
