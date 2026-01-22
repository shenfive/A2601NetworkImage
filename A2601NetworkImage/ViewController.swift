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
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        updateUser()
    
    }

    @IBAction func nextAction(_ sender: Any) {
        updateUser()
    }
    
    func updateUser(){
        APIService.share.queryRandomUserAlamofire { [weak self] data, error in
            if let error{
                //處理 error
                print(error.localizedDescription)
                return
            }
          
            if let data{
                print(data)
                let name = data["results"][0]["name"]["title"].stringValue + " " +
                        data["results"][0]["name"]["first"].stringValue + " " +
                        data["results"][0]["name"]["last"].stringValue
                self?.nameLabel.text = name
                
                let imageAddress = data["results"][0]["picture"]["large"].stringValue
                self?.theImageView.sd_setImage(with: URL(string: imageAddress))
            }
        }
    }
}

