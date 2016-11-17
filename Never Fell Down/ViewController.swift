//
//  ViewController.swift
//  Never Fell Down
//
//  Created by 陆小凤 on 16/11/17.
//  Copyright © 2016年 陆小凤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numField: UITextField!
    var num = Int(arc4random_uniform(100));
    var times = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertTest(_ sender: AnyObject) {
        let resultText = numField.text!
        if let result = Int(resultText) {
            times += 1
            var message = ""
            
            if result > num {
                message = "input \(result) is bigger than answer"
            } else if result < num {
                message = "input \(result) is smaller than answer"
            } else {
                message = "Success! the answer is \(result), and you have tried \(times) times"
            }
            
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "sure", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        } else {
            let alert = UIAlertController(title: nil, message: "plz input a number between 0~99", preferredStyle: .alert)
            let action = UIAlertAction(title: "sure", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func resetGame(_ sender: AnyObject) {
        times = 0
        num = Int(arc4random_uniform(100));
    }
}

