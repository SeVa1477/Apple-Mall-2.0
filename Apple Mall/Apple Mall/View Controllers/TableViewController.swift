//
//  TableViewController.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import UIKit

protocol TableViewControllerDelegate {
    func update(iphone: [IPhone])
}

class TableViewController: UITableViewController {
    
    var iPhones = IPhone.getIPhones()
    var iPhonesBuy: [IPhone] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        iPhones.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:  BuyTableCell.self)) as! BuyTableCell
            cell.configure(with: iPhones[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //передача данных на другой экран по действию
        tableView.deselectRow(at: indexPath, animated: true)
        //если сработала ячейка по данному индексу (метод который анимационно убирает выделение ячейки)
        let iphone = iPhones[indexPath.row]
        routeToInfo(iPhon: iphone)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let buyVC = segue.destination as? BuyViewController {
            buyVC.buyIphones = iPhonesBuy
        }

}
    
    @IBAction func goCart(_ sender: Any) {
    }
}

extension TableViewController: TableViewControllerDelegate {
    
    func setupTableView() {
        registerXibs()
    }
    func registerXibs() {
        tableView.register(UINib(nibName: String(describing:  BuyTableCell.self), bundle: nil), forCellReuseIdentifier: String(describing:  BuyTableCell.self))
    }

//    func setupNavigationController() {
//        navigationItem.rightBarButtonItem = UIBarButtonItem(systemItem: .search, primaryAction: UIAction(handler: { [weak self]_ in
//            self?.routeToFilters()
//        }), menu: nil)
//    }
    
    /// Перейти на контроллер фильтров
    func routeToInfo(iPhon: IPhone) {
        // Взять Main.storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // Взять из него viewController с indetifier == "FiltersViewController"
        let infoViewController =  storyboard.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
        infoViewController.delegate = self
        infoViewController.iPhone = iPhon
        // Добавить в стек navigationController-а полученный контроллер
        navigationController?.pushViewController(infoViewController, animated: true)
    }
    
    func update(iphone: [IPhone]) {
        iPhonesBuy = iphone
    }
}
// :-)
