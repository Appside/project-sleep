//
//  StartingViewController.swift
//  SleepProject
//
//  Created by Jean-Charles Koch on 26/08/2017.
//  Copyright © 2017 Jean-Charles Koch. All rights reserved.
//

import UIKit
import Material
import Charts
import Neon

class Graph3ViewController: UIViewController {
    
    let GraphView:LineChartView = LineChartView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = Color.cyan.lighten5
        tabItem.title = "Graph 3"
        tabItem.titleColor = .white
        
        var lineChartEntry = [ChartDataEntry]()
        for i in 1...10 {
            let value = ChartDataEntry(x: Double(i), y:log(Double(i)))
            lineChartEntry.append(value)
        }
        
        let line1 = LineChartDataSet(values: lineChartEntry, label:"Number")
        line1.colors = [NSUIColor.blue]
        
        let data = LineChartData()
        data.addDataSet(line1)
        
        self.GraphView.data = data
        self.GraphView.chartDescription?.text = "Graph 3"
        
        self.view.addSubview(self.GraphView)
        self.GraphView.fillSuperview()
        
    }
    
}
