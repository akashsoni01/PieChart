//
//  ViewController.swift
//  PiChartTest
//
//  Created by Akash soni on 7/6/18.
//  Copyright © 2018 Akash soni. All rights reserved.
//

import UIKit
import PieCharts

class ViewController: UIViewController ,PieChartDelegate{
    @IBOutlet weak var piechart: PieChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        piechart.models = [
            PieSliceModel(value: 2.1, color: UIColor.yellow),
            PieSliceModel(value: 3, color: UIColor.blue),
            PieSliceModel(value: 1, color: UIColor.green)
        ]
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        piechart.insertSlice(index: 1, model: PieSliceModel(value: 5, color: UIColor.orange))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onSelected(slice: PieSlice, selected: Bool) {
        print("jdsklfjlakds")
    }

}

