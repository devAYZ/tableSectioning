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
        Phone(version: "Version 3", name: ["iPhone X"]),
        Phone(version: "Version 4", name: [])
    ]
    
//    var showList = [""]
        
    var version  = [
        Version(version: "Version 1"),
        Version(version: "Version 2"),
        Version(version: "Version 3")
    ]
    var phone = [
        Name(name: "iPhone 4"),
        Name(name: "iPhone 4"),
        Name(name: "iPhone 4")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        label.textColor = UIColor(named: "AppRed")
        tableView.delegate = self
        tableView.dataSource = self
        
        label.font = R.font.poppinsMedium(size: 13) //UIFont().setfontBold(30)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        list.count
//        version.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

           list[section].version
//        version[section].version

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list[section].name.count
//        phone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = list[indexPath.section].name[indexPath.row]
//        cell.textLabel?.text = phone[indexPath.section].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
}

extension UIFont {
    func setfontBold(_ size: Double) -> UIFont {
        guard let font = R.font.poppinsRegular(size: size) else {
            fatalError()
        }
//        let font = R.font.poppin
//        guard let font = UIFont(name: "Poppins-Bold", size: CGFloat(size)) else {
//            fatalError()
//        }
        return font
    }
}

