//
//  ViewController.swift
//  Never Fell Down
//
//  Created by 陆小凤 on 16/11/17.
//  Copyright © 2016年 陆小凤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertTest(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Greeting", message: "Hello World", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

}

