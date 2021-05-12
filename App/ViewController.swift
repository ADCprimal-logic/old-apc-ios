//
//  ViewController.swift
//  APC
//
//  Created by Anthony D. Castelli on 11/3/17.
//  Copyright © 2017 APC Data Analytics. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    let url = URL (string: "https://pricing.apcdata.net/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myRequest = URLRequest(url: url!)
        webView.navigationDelegate = self
        webView.load(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView,didStart navigation: WKNavigation!) {
        activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView,didFinish navigation: WKNavigation!) {
        activity.stopAnimating()
    }
    

}

