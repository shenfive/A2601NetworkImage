//
//  ViewController.swift
//  A2601NetworkImage
//
//  Created by Danny Shen on 2026/1/21.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        theImageView.backgroundColor = .yellow
        
        print(Date().timeIntervalSince1970)
//        DispatchQueue.global().async {
            let imageAddress = "https://cdn.hk01.com/di/media/images/dw/20220222/572848418750205952062874.jpeg/oo3mQK2GHHCbKZhbPh9fvYVNhYR__ec6pz3p1qc96dY?v=w640"
        theImageView.sd_setImage(with: URL(string: imageAddress))
            
//            if let imageURL = URL(string: imageAddress){
                
                
//                do{
//                    let imageData = try Data(contentsOf: imageURL)
//                    DispatchQueue.main.async {
//                        self.theImageView.image = UIImage(data: imageData)
//                        print("imageDidLoad:")
//                        print(Date().timeIntervalSince1970)
//                    }
//                }catch{
//                    print(error.localizedDescription)
//                }
//            }
//        }
        
        

        print(Date().timeIntervalSince1970)
        
  
        
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        theImageView.clipsToBounds = false
        theImageView.layer.shadowRadius = 20         //陰影
        theImageView.layer.shadowOpacity = 0.6;
        theImageView.layer.shadowColor = UIColor.gray.cgColor
        theImageView.layer.shadowOffset = CGSize(width: 10, height: 10)
    }

}

