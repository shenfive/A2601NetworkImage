//
//  ViewController.swift
//  A2601NetworkImage
//
//  Created by Danny Shen on 2026/1/21.
//

import UIKit
import SDWebImage
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        

        APIService.share.queryRandomUserAlamofire { data, error in
            print(data)
            print(data?["results"][0]["picture"]["large"])
            let imageAddress = data?["results"][0]["picture"]["large"].stringValue ?? ""
            self.theImageView.sd_setImage(with: URL(string: imageAddress))
        }
    
    }

}

