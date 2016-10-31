//
//  ViewController.swift
//  Count
//
//  Created by Ryo Eguchi on 2016/10/31.
//  Copyright © 2016年 Ryo Eguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus () {
        number = number + 1
        label.text = String(number)
        self.color()
    
    }
    
    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
        self.color()
    }
    
    @IBAction func reset() {
        number = 0
        label.text = String(number)
        self.color()
    }
    
    @IBAction func times() {
        number = number * 2
        label.text = String(number)
        self.color()
    }
    
    @IBAction func waru() {
        number = number / 2
        label.text = String(number)
        self.color()
    }
    
    func color() {
        
        //numberが負の数になったら赤、0以上なら白に設定する
        if number < 0 {
            label.textColor = .red
        }else{
            label.textColor = .white
        }
    }


}

