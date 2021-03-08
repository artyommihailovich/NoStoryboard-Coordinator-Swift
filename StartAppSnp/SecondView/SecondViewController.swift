//
//  SecondViewController.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 3/2/21.
//

import UIKit
import SnapKit

final class SecondViewController: UIViewController, Coordinate {
    var coordinator: Coordinator?
    
    private let dummyData: [Skills] = [Skills(name: "Swift", percents: "16.0"),
                                       Skills(name: "CoreData", percents: "18.0"),
                                       Skills(name: "ARKit", percents: "22.0"),
                                       Skills(name: "Friend zone lord", percents: "100")]
    
    lazy private var tableView = UITableView().do {
        $0.dataSource = self
        $0.tableFooterView = UIView()
        $0.rowHeight = 100
        $0.register(SecondVCTableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
    }
    
    private func setupSubView() {
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension SecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SecondVCTableViewCell
        
        cell.label.text = dummyData[indexPath.row].name
        cell.descriptionLabel.text = dummyData[indexPath.row].percents + " %"
        
        return cell
    }
}
