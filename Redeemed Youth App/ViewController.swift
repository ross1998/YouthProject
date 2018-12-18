//
//  ViewController.swift
//  Redeemed Youth App
//
//  Created by Rostislav Martsenyak on 12/15/18.
//  Copyright © 2018 Ross M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var labels: [Labels] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labels = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib. Testing
    }
    
    func createArray() -> [Labels] {
        
        var tempLabels: [Labels] = []
        
        let label1 = Labels(date: "12/25/18", ministry: "Youth", notificationText: "Everyone is invited to come to tonights service @7pm, special guest speaker!")
        let label2 = Labels(date: "12/26/18", ministry: "Choir", notificationText: "Last choir rehersal before we sing this sunday, please come at 7!")
        let label3 = Labels(date: "12/27/18", ministry: "Band", notificationText: "Band is playing tomorrow morning, please where black suits and black ties!")
        let label4 = Labels(date: "12/28/18", ministry: "Leaders", notificationText: "Lets have a metting tonight after choir practice at 9pm")
        let label5 = Labels(date: "12/29/18", ministry: "WorshipBand", notificationText: "Sorry cant make it today lets cancel practice?")
        let label6 = Labels(date: "12/27/18", ministry: "Band", notificationText: "Band is playing tomorrow morning, please where black suits and black ties!")
        let label7 = Labels(date: "12/28/18", ministry: "Leaders", notificationText: "Lets have a metting tonight after choir practice at 9pm")
        let label8 = Labels(date: "12/29/18", ministry: "WorshipBand", notificationText: "Sorry cant make it today lets cancel practice?")
        let label9 = Labels(date: "12/27/18", ministry: "Band", notificationText: "Band is playing tomorrow morning, please where black suits and black ties!")
        let label10 = Labels(date: "12/28/18", ministry: "Leaders", notificationText: "Lets have a metting tonight after choir practice at 9pm")
        let label11 = Labels(date: "12/29/18", ministry: "WorshipBand", notificationText: "Sorry cant make it today lets cancel practice?")
        
        tempLabels.append(label1)
        tempLabels.append(label2)
        tempLabels.append(label3)
        tempLabels.append(label4)
        tempLabels.append(label5)
        tempLabels.append(label6)
        tempLabels.append(label7)
        tempLabels.append(label8)
        tempLabels.append(label9)
        tempLabels.append(label10)
        tempLabels.append(label11)
        
        return tempLabels
        
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let label = labels[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell") as! notificationCell
        
        if cell.ministryLabel.text == "Band" {
        cell.contentView.backgroundColor = UIColor.yellow
        }
        print(cell.ministryLabel.text)
        
        cell.setLabel(label: label)
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        
    
    }
}


