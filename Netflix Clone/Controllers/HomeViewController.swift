//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Рауан Абишев on 15.06.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    private lazy var homeFeedTable: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
      
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
        let headerView = HeaderUIView(frame: CGRect(x: 0, y: 0, width:view.bounds.width, height: 450))
        homeFeedTable.tableHeaderView = headerView
    }
    
    
    
}


extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else{
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
