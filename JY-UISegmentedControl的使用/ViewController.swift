//
//  ViewController.swift
//  JY-UISegmentedControl的使用
//
//  Created by atom on 2017/4/8.
//  Copyright © 2017年 atom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let fullScreenSize = UIScreen.main.bounds.size
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(mySegmentedControl)
    }
    private lazy var mySegmentedControl: UISegmentedControl = {
        let mySegmentedControl = UISegmentedControl(items: ["早餐", "午餐", "晚餐", "夜宵"])
        mySegmentedControl.tintColor = UIColor.black
        mySegmentedControl.backgroundColor = UIColor.lightGray
        mySegmentedControl.selectedSegmentIndex = 0
        mySegmentedControl.addTarget(self, action: #selector(onChange(sender:)), for: .valueChanged)
        return mySegmentedControl
    }()
    
    override func viewDidLayoutSubviews() {
        mySegmentedControl.frame.size = CGSize(width: fullScreenSize.width * 0.8, height: 30)
        mySegmentedControl.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.25)
    }
    
    @objc private func onChange(sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        print("\(index)")
        let selectString = sender.titleForSegment(at: index)
        
        print("\(String(describing: selectString?.description))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

