//
//  ColoursDetailVC.swift
//  RandomColours
//
//  Created by Diva Goyal on 22/06/24.
//

import UIKit

class ColoursDetailVC: UIViewController {
    
    var colour: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor=colour ?? .blue
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
