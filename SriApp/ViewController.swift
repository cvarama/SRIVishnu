//
//  ViewController.swift
//  SriApp
//
//  Created by Sivarama Arepu on 15/09/17.
//  Copyright © 2017 Sivarama Arepu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadPdf()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Load Pdf
    func loadPdf() {
        if let pdfURL = Bundle.main.url(forResource: "Sri_Vishnu", withExtension: "pdf", subdirectory: nil, localization: nil)  {
            do {
                let data = try Data(contentsOf: pdfURL)
                let webView = WKWebView(frame: CGRect(x:20,y:20,width:view.frame.size.width-40, height:view.frame.size.height-40))
                webView.load(data, mimeType: "application/pdf", characterEncodingName:"", baseURL: pdfURL.deletingLastPathComponent())
                view.addSubview(webView)
                
            }
            catch {
                // catch errors here
            }
        }
    }


}

