//
//  ViewController.swift
//  WebView
//
//  Created by Nazar Kostiv on 12.10.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    let html = """
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            text-align: center;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <button class="btn" id="red" aria-label="Red">Red</button>
    <button class="btn" id="blue" aria-label="Blue">Blue</button>
    <button class="btn" id="yellow" aria-label="Yellow">Yellow</button>
    <button class="btn" id="green" aria-label="Green">Green</button>
    
    <script>
        // JavaScript to change the background color
        document.getElementById("red").addEventListener("click", function() {
            document.body.style.backgroundColor = "red";
        });
        
        document.getElementById("blue").addEventListener("click", function() {
            document.body.style.backgroundColor = "blue";
        });
        
        document.getElementById("yellow").addEventListener("click", function() {
            document.body.style.backgroundColor = "yellow";
        });
        
        document.getElementById("green").addEventListener("click", function() {
            document.body.style.backgroundColor = "green";
        });
    </script>
</body>
</html>
"""
    var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadHTMLString(html, baseURL: nil)
    }
}

