//
//  CryptoViewController.swift
//  CryptoCurrencyApp
//
//  Created by Muhammad Qureshi on 9/17/21.
//

import UIKit
import WebKit
class CryptoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(refreshData), userInfo: nil, repeats: true)
    }
    func SVGtoImage(SVGURL: String){
        let path = SVGURL
        let webView = WKWebView(frame: self.view.bounds)
        let request = URLRequest(url: URL(string: path)!)
        webView.load(request)
        self.btcLogoWKT.addSubview(webView)
    }
    var ppath: String?
    @IBOutlet weak var priceLabel: UILabel!

    @objc func refreshData() -> Void
    {
        Secretary.shared.getDogData(url: URLofBTC.url.rawValue) { btcdm, error in
            self.SVGtoImage(SVGURL: (String(btcdm!.logo_url)))
            self.priceLabel.text = btcdm?.price
        }
    }
    @IBOutlet weak var btcLogoWKT: WKWebView!
}

