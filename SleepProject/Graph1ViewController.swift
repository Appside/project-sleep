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

class Graph1ViewController: UIViewController {
    
    let GraphView:LineChartView = LineChartView()
    let JSONImport: JSONModel = JSONModel()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        self.view.backgroundColor = Color.cyan.lighten5
        tabItem.title = "Graph 1"
        tabItem.titleColor = .white
        
        var lineChartEntry = [ChartDataEntry]()
        for i in 1...10 {
            let value = ChartDataEntry(x: Double(i), y:Double(i)*Double(i))
            lineChartEntry.append(value)
        }
        
        let line1 = LineChartDataSet(values: lineChartEntry, label:"Number")
        line1.colors = [NSUIColor.blue]
        
        let data = LineChartData()
        data.addDataSet(line1)
        
        self.GraphView.data = data
        self.GraphView.chartDescription?.text = "Graph 1"
        
        self.view.addSubview(self.GraphView)
        self.GraphView.fillSuperview()
        
    }
    
}
