//
//  TableCell.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 08.01.2022.
//

import UIKit

class BuyTableCell: UITableViewCell {

    @IBOutlet weak var iPhoneImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    func configure(with product: IPhone) {
        
        iPhoneImage.image = UIImage(named: product.model)
        nameLabel.text = product.model
        infoLabel.text = "Display Size: \(product.displaySize). Memory Size: \(product.memorySize). Price \(product.price). Color \(product.color)."
        
    }
    @IBAction func appendCart(_ sender: Any) {
    }
}
// :-)
