//
//  SampleTableViewController.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 3/8/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class SampleTableViewController: UITableViewController {

	let masterCellRow:Int = 3
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.tableView.rowHeight = UITableViewAutomaticDimension
		self.tableView.estimatedRowHeight = 100; //Set this to any value that works for you.
		
		tableView.register(UINib(nibName: "ProGS8TableViewCell", bundle: nil), forCellReuseIdentifier: "pgsCell")

	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		// removing seperator inset
		if cell.responds(to: #selector(setter: UITableViewCell.separatorInset)) {
			cell.separatorInset = UIEdgeInsets.zero
		}
		// prevent the cell from inheriting the tableView's margin settings
		if cell.responds(to: #selector(setter: UIView.preservesSuperviewLayoutMargins)) {
			cell.preservesSuperviewLayoutMargins = false
		}
		// explicitly setting cell's layout margins
		if cell.responds(to: #selector(setter: UITableViewCell.layoutMargins)) {
			cell.layoutMargins = UIEdgeInsets.zero
		}
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 12
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		if indexPath.row % 4 == 0 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "pgsCell", for: indexPath) as! ProGS8TableViewCell
			cell.PeopleDrivenValue.text = "\(indexPath.section)"
			cell.RidesTakenValue.text = "\(indexPath.row)"
			return cell
		}
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell", for: indexPath) as! SimpleTableViewCell
		var s = "Section: \(indexPath.section) Row: \(indexPath.row)"
		if indexPath.row % 4 == 2 {
			s += "\nLine 2\nLine 3"
		}
		cell.theLabel.text = s
		
		return cell
		
	}
	
}
