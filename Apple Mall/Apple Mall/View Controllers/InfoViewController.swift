//
//  InfoViewController.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var delegate: TableViewControllerDelegate?
    var iPhone: IPhone!
    var iPhoness: [IPhone] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: iPhone.model)
        nameLabel.text = iPhone.model
        infoLabel.text = "Display Size: \(iPhone.displaySize). Memory Size: \(iPhone.memorySize). Price \(iPhone.price). Color \(iPhone.color)."
    }
    
    @IBAction func addCart(_ sender: Any) {
        iPhoness.append(iPhone)
        delegate?.update(iphone: iPhoness)
    }
}
// :-)
