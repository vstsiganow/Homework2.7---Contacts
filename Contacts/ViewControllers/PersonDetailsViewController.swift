//
//  PersonDetailsViewController.swift
//  Contacts
//
//  Created by vtsyganov on 13.06.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }

}

extension PersonDetailsViewController {
    private func updateLabel() {
        phoneLabel.text = person?.phone
        emailLabel.text = person?.email
        title = person?.fullName
    }
}
