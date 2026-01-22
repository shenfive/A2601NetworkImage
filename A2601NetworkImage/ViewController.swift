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
        

        APIService.share.queryRandomUserAlamofire { [weak self] data, error in
            if let error{
                //處理 error
                print(error.localizedDescription)
                return
            }
            
            if let data{
                let imageAddress = data["results"][0]["picture"]["large"].stringValue
                self?.theImageView.sd_setImage(with: URL(string: imageAddress))
            }
        }
    
    }

}

