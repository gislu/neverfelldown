//
//  FirstViewController.swift
//  own explorer
//
//  Created by 陆小凤 on 16/11/29.
//  Copyright © 2016年 陆小凤. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var urlInput: UITextField!
    @IBOutlet weak var urlButton: UIButton!
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }

    
    @IBAction func btnclick(_ sender: AnyObject) {
        let url = URL(string: urlInput.text!)
        let alert = UIAlertController(title: nil, message: urlInput.text!, preferredStyle: .alert)
        let action = UIAlertAction(title: "sure", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        webView.loadRequest(URLRequest(url: url!))

    }

}

