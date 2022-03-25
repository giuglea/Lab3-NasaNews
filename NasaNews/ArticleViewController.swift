//
//  ArticleViewController.swift
//  NasaNews
//
//  Created by Tzy on 18.03.2022.
//

import UIKit
import WebKit

final class ArticleViewController: UIViewController {
    
    var item: Item?
    @IBOutlet var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        guard let item = item else {
            return
        }

        title = item.title
        webView?.loadHTMLString(item.body, baseURL: nil)
    }
}
