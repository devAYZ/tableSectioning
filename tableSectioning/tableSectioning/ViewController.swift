//
//  ViewController.swift
//  tableSectioning
//
//  Created by Ayokunle Fatokimi on 22/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var list = [
        Phone(version: "Version 1", name: ["iPhone 4","iPhone 5", "iPhone 5s", "iPhone 6", "iPhone 6s" ]),
        Phone(version: "Version 2", name: ["iPhone 7", "iPhone 8"]),
        Phone(version: "Version 3", name: ["iPhone X"])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        label.textColor = UIColor(named: "AppRed")
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       list[section].version
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list[section].name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = list[indexPath.section].name[indexPath.row]
        return cell
    }
}

