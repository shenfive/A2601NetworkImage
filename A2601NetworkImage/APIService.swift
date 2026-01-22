//
//  APIService.swift
//  A2601NetworkImage
//
//  Created by Danny Shen on 2026/1/22.
//
import UIKit
import Alamofire
import SwiftyJSON

class APIService{
    static var share = APIService()     // 單例化
    private init(){}                    // 單例化
    
    private var apiURL = "https://randomuser.me/"   //api 主要位置
    
    
    //使用 @escaping 參數實作 Call back
    func queryRandomUserAlamofire(completion:@escaping (_ data:JSON?,_ error: Error?)->())->(){
        let url = apiURL + "api/"               //要操作的資料
        let parameters:Parameters? = nil       // body 無參數
        
        AF.request(url,
                   method: .get,
                   parameters: parameters,
                   encoding: URLEncoding.default,
                   headers: nil).response { (response) in
            switch response.result{
            case .success(let value):
                print("get Data:\(Date().timeIntervalSince1970)")
                
                let json = JSON(value as! Any)
                return completion(json,nil)    // 成功時call back
            case .failure(let error):
                return completion(nil,error)    // 失敗時call back
            }
        }
    }
    
    
    
}








