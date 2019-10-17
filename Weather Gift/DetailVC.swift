//
//  DetailVC.swift
//  Weather Gift
//
//  Created by Claudia Yang on 10/16/19.
//  Copyright © 2019 Claudia Yang. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    var currentPage=0
    var locationsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

}
