//
//  CommitteeViewController.swift
//  politigage
//
//  Created by Jackson Beadle on 2/27/16.
//  Copyright © 2016 beadlejack. All rights reserved.
//

import UIKit
import Foundation

class CommitteeViewController: UIViewController {
    @IBOutlet var committeeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        var committees = [Committee]()
        let urlPath = "https://www.govtrack.us/api/v2/committee"
        let url : NSURL = NSURL(string: urlPath)!
        let data = NSData(contentsOfURL: url)!
    
        
        if let json = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) {
            if let objs = json["objects"] as? [[String: AnyObject]] {
                for obj in objs {
                    print(obj)
                    if let obsolete = obj["obsolete"] as? String {
                        if obsolete == "false" && obj["committee"] as? String == "<null>" {
                            let temp = Committee()
                            temp.abbrev = obj["abbrev"] as? String
                            temp.code = obj["code"] as? String
                            temp.committee_type = obj["committee_type"] as? String
                            temp.id = obj["id"] as? String
                            temp.jurisdiction = obj["jurisdiction"] as? String
                            temp.jurisdiction_link = obj["jurisdiction_link"] as? String
                            temp.name = obj["name"] as? String
                            temp.url = obj["url"] as? String
                            committees.append(temp)
                            print(temp)
                        }
                    }
                }
            }
        }
        

        
        for i in committees {
            print(i.abbrev)
        }
        
        loadTableCells()
        
    }
    
    func loadTableCells() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}