//
//  ViewController.swift
//  Contacts
//
//  Created by vtsyganov on 12.06.2021.
//

import UIKit

class PersonViewController: UITableViewController {

    var data = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 50
    }

}

extension PersonViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        
        let person = data.persons[indexPath.row]
        
        cell.textLabel?.text = person.fullName
        
        return cell
    }
}

extension PersonViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? PersonDetailsViewController,
              let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let person = data.persons[indexPath.row]
        vc.person = person
    }
}
