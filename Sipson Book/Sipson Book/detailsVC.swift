//
//  detailsVC.swift
//  Sipson Book
//
//  Created by Zeynel Akçay on 12.02.2019.
//  Copyright © 2019 Zeynel Akçay. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    
    var selectedSImpson = Simson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSImpson.name
        occupationLabel.text = selectedSImpson.occupation
        imageView.image = selectedSImpson.image
        
    }
    

}
