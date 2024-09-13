//
//  ColoursTableVC.swift
//  RandomColours
//
//  Created by Diva Goyal on 22/06/24.
//

import UIKit

class ColoursTableVC: UIViewController{
    
    var colours: [UIColor]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColours()
        
        // Do any additional setup after loading the view.
    }
    
    func createRandomColours(){
        for _ in 0..<50{
            colours.append(createRandomColour())
        }
    }
    
    func createRandomColour() -> UIColor{
        let randomColour=UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomColour
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColoursDetailVC
        destVC.colour = sender as? UIColor 
    }
    
}

extension ColoursTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColourCell") else{
            return UITableViewCell()
        }
        cell.backgroundColor = colours[indexPath.row]
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: "toColoursDetailVC", sender: colour)
    }
    
    
}
