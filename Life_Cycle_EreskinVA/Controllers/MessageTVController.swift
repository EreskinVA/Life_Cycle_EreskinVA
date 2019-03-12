//
//  MessageTVController.swift
//  Life_Cycle_EreskinVA
//
//  Created by Vladimir Ereskin on 12/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class MessageTVController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalMessages.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = globalMessages[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 12)
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
}
