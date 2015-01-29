//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Leytzher on 1/28/15.
//  Copyright (c) 2015 Leytzher. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
	
	var detailTaskModel:TaskModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		println(self.detailTaskModel.task)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	

}
