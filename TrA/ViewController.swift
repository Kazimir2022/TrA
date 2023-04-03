//
//  ViewController.swift
//  TrA
//
//  Created by Kazimir on 3.04.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func editDataWithDelegate(_ sender: UIButton) {
        // получаем вью контроллер
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        // передаем данные
        editScreen.updatingData = dataLabel.text ?? ""
        

        // открываем следующий экран
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
}

