//
//  ViewController.swift
//  A2601NetworkImage
//
//  Created by Danny Shen on 2026/1/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        theImageView.backgroundColor = .yellow
        
        print(Date().timeIntervalSince1970)
        let imageAddress = "https://cdn.hk01.com/di/media/images/dw/20220222/572848418750205952062874.jpeg/oo3mQK2GHHCbKZhbPh9fvYVNhYR__ec6pz3p1qc96dY?v=w640"
        
        if let imageURL = URL(string: imageAddress){
            do{
                let imageData = try Data(contentsOf: imageURL)
                theImageView.image = UIImage(data: imageData)
            }catch{
                print(error.localizedDescription)
            }
        }
        print(Date().timeIntervalSince1970)
        
        
        
    }


}

