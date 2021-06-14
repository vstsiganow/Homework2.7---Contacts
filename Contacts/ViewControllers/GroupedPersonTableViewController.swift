//
//  GroupedPersonTableViewController.swift
//  Contacts
//
//  Created by vtsyganov on 13.06.2021.
//

import UIKit

class GroupedPersonTableViewController: UITableViewController {

    var persons = DataManager().persons
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension GroupedPersonTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = persons[section]
        let name = section.fullName
        return name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupedPersonCell", for: indexPath)
        
        let person = persons[indexPath.section]
        
        let fullTextLabel = NSMutableAttributedString(string: "")
        let image1Attachment = NSTextAttachment()
        
        image1Attachment.image = UIImage(systemName: "phone.fill")
        fullTextLabel.append(NSAttributedString(attachment: image1Attachment))
        fullTextLabel.append(NSAttributedString(string:" \(person.phone)"))
        
        cell.textLabel?.attributedText = fullTextLabel
        
        let fullDetailTextLabel = NSMutableAttributedString(string: "")
        let image2Attachment = NSTextAttachment()
        
        image2Attachment.image = UIImage(systemName: "envelope.fill")
        fullDetailTextLabel.append(NSAttributedString(attachment: image2Attachment))
        fullDetailTextLabel.append(NSAttributedString(string:" \(person.email)"))

        cell.detailTextLabel?.attributedText = fullDetailTextLabel

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30
    }
}
