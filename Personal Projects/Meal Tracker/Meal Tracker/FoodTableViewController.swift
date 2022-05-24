//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by David Jones on 4/26/22.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] = [
        Meal(name: "Breakfast", food: [
            Food(name: "cereal", description: "Frosted Flakes"),
            Food(name: "Juice", description: "Orange"),
            Food(name: "Porridge", description: "Strawberries")]),
        Meal(name: "Lunch", food: [
            Food(name: "Curry", description: "Buttered Chicken"),
            Food(name: "Beans on Toast", description: "Baked beans and toast"),
            Food(name: "Smoothie", description: "Advocado")]),
        Meal(name: "Dinner", food: [
            Food(name: "Steak", description: "Medium well"),
            Food(name: "Mac n' Cheese", description: "Shells and aged cheddar"),
            Food(name: "Pizza", description: "Margarita")])]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        // Configure the cell...
        cell.textLabel!.text = meals[indexPath.section].food[indexPath.row].name
        cell.detailTextLabel!.text = meals[indexPath.section].food[indexPath.row].description
        return cell
   }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
    
}
