//
//  ViewController.swift
//  TaskIt
//
//  Created by Leytzher on 1/26/15.
//  Copyright (c) 2015 Leytzher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var tableView: UITableView!
	var taskArray:[TaskModel] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let task1 = TaskModel(task: "Study French", subtask: "Verbs", date: "01/01/2014")
		let task2 = TaskModel(task: "Eat Dinner", subtask: "Burgers", date: "01/01/2014")
		taskArray = [task1, task2, TaskModel(task: "Gym", subtask: "Leg day", date: "01/01/2014")]
		
		self.tableView.reloadData()
		
		

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	//UITableViewDataSource
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return self.taskArray.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		println(indexPath.row)
		
		let thisTask = taskArray[indexPath.row]
		
		var cell:TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
		
		
		cell.taskLabel.text = thisTask.task
		cell.descriptionLabel.text = thisTask.subtask
		cell.dateLabel.text = thisTask.date
		
		return cell
		
	}

	//UITableViewDelegate
	func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
		
	}

}

