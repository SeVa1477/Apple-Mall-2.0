//
//  BuyViewController.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import UIKit

class BuyViewController: UIViewController {
    
    @IBOutlet weak var tableIPhone: UITableView!
    
    var buyIphones: [IPhone] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableIPhone.delegate = self
        tableIPhone.dataSource = self
        tableIPhone.rowHeight = 80
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func clearCart(_ sender: Any) {
        buyIphones = []
        tableIPhone.reloadData()
    }
    @IBAction func goPayment(_ sender: Any) {
    }
    
}

extension BuyViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        buyIphones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
                let iPhone = buyIphones[indexPath.row]
        
                var content = cell.defaultContentConfiguration()
        
                content.text = iPhone.model
                content.image = UIImage(named: iPhone.model)
                content.imageProperties.cornerRadius = tableView.rowHeight / 10
    
                cell.contentConfiguration = content
        
                return cell
    }

}
// :-)
