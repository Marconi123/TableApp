//
//  MainTableVC.swift
//  TableApp
//
//  Created by Владислав on 24.08.22.
//

import UIKit

final class MainTableVC: UITableViewController {
    
//    let cellManager = CellManager()
    
    
    private var meals: [Meal] {
        MealsData.shared.meals
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  MealsData.shared.meals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainViewCell", for: indexPath) as! MainViewCell
        
        let meal = meals[indexPath.row]
        
        cell.titleLabel.text = meal.name
        cell.imageCell?.image = meal.image
        cell.subtitleLabel.text = String(meal.price) + " " + "BYN\n" + String(meal.ratingBar)
        
        return cell
    }
   /*
    }
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let DetailVC = segue.destination as? Detailed_meals_VC,
            let selectedIndexPath = tableView.indexPathForSelectedRow
         {
             DetailVC.meal = meals[selectedIndexPath.row]
         }
     }
}
