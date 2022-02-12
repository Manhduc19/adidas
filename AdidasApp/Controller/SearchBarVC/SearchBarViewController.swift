//
//  SearchBarViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 12/12/2021.
//

import UIKit

class SearchBarViewController: UIViewController {

    @IBOutlet weak var tableResultView: UITableView!
    @IBOutlet weak var searchBarView: UISearchBar!
    var pendingWorkitem: DispatchWorkItem?
    override func viewDidLoad() {
        super.viewDidLoad()
       config()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        navigationController?.isNavigationBarHidden = false
    
    }
    //MARK: Search
    
    func config() {
        searchBarView.showsCancelButton = true
        searchBarView.delegate = self
        createArrayName()
        
        tableResultView.delegate = self
        tableResultView.dataSource = self
        tableResultView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    func createArrayName(){
        for item in alldetailList {
            names.append(item.name)
        }
    }
    func search(text: String) {
        pendingWorkitem?.cancel()
        
        pendingWorkitem = DispatchWorkItem.init(block: {
            if text.isEmpty {
                searchNames = names
            }
            else {
                searchNames = names.filter { names in
                    names.lowercased().contains(text.lowercased())
                }
            }
            self.tableResultView.reloadData()
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: pendingWorkitem!)
    }

    
}
extension SearchBarViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = searchNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailProductViewController()
        let name = searchNames[indexPath.row]
        guard let index = alldetailList.firstIndex(where: {$0.name == name}) else {
            return
        }
        vc.index = index
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension SearchBarViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        search(text: searchText)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        search(text: "")
    }
}

