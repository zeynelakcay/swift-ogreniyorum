//
//  ViewController.swift
//  Sipson Book
//
//  Created by Zeynel Akçay on 12.02.2019.
//  Copyright © 2019 Zeynel Akçay. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet var tableView: UITableView!
    var mySimson = [Simson]()
    var chooseSimpson = Simson()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let bart = Simson()
        bart.name = "Bart"
        bart.occupation = "Genel Müdür";
        bart.image = UIImage(named: "bart.png")!
        
        let homer = Simson()
        homer.name = "Homer"
        homer.occupation = "CEO";
        homer.image = UIImage(named: "homer.png")!
        
        let lisa = Simson()
        lisa.name = "Lisa"
        lisa.occupation = "Pazarlama Müdürü";
        lisa.image = UIImage(named: "lisa.png")!
        
        let maggie = Simson()
        maggie.name = "Maggie"
        maggie.occupation = "Yazılım Geliştirme Müdürü";
        maggie.image = UIImage(named: "maggie.png")!
        
        let marge = Simson()
        marge.name = "Maggie"
        marge.occupation = "Muhasebe Müdürü";
        marge.image = UIImage(named: "marge.png")!
        
        mySimson.append(bart);
        mySimson.append(homer);
        mySimson.append(lisa);
        mySimson.append(maggie);
        mySimson.append(marge);
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimson[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chooseSimpson = mySimson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSImpson = chooseSimpson
        }
    }
    
}

