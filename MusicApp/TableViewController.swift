//
//  TableViewController.swift
//  MusicApp
//
//  Created by Felix Weinreich
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {

    
    var events = ["Event 1", "Event 2", "Event 3", "Event 4"]
    var filteredEvents: [String]!
    @IBOutlet weak var SearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SearchBar.delegate = self
        
        filteredEvents = events

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredEvents.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = filteredEvents[indexPath.row]
        
        return cell
    }
    
    // Search bar Configuration
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filteredEvents = []
        
        if searchText == "" {
            
            filteredEvents = events
        }
        else {
        for event in events {
            
            if event.lowercased().contains(searchText.lowercased()) {
                
                filteredEvents.append(event)
            }
        }
        self.tableView.reloadData()
        
        }
    }
}
