//
//  ViewController.swift
//  editingAndReOrdering
//
//  Created by West Kraemer on 4/3/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let emojis = allEmojis
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    
    
}

extension ViewController: UITableViewDelegate {
    
}

