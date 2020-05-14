//
//  TasksViewController.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/13/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {

    // cellIdetifier Declaration
    fileprivate let identifier = "cell"
    //Outlets Declaration
    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
       // tableView.tableFooterView = UIView.init(frame: CGRect.zero)
        tableView.separatorInset = .zero
        tableView.estimatedRowHeight = 60.0
        tableView.rowHeight = UITableView.automaticDimension
        navigationItem.title = "Tasks"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        handleRefresh()
    }
    private func handleRefresh(){
        
    }
    

    

}
extension TasksViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = "Task: \(indexPath.row + 1)"
        return cell
    }
}
extension TasksViewController : UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
}
