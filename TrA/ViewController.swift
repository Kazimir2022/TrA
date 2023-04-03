//
//  ViewController.swift
//  TrA
//
//  Created by Kazimir on 3.04.23.
//

import UIKit

class ViewController: UIViewController {
    var updatedData: String = "Test data"
    @IBOutlet var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel(withText: updatedData)
    }
    
    // Обновляем данные в текстовой метке
    private func updateLabel(withText text: String) {
        dataLabel.text = updatedData
    }

    @IBAction func editDataWithDelegate(_ sender: UIButton) {
        // получаем вью контроллер
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // получаем сцену второго вьюконтроллера и преобразуем ее
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        // передаем данные через свойство во втором вьюконтроллере
        // в качестве значения текст текстовой метки певой сцены
        editScreen.updatingData = dataLabel.text ?? ""
        

        // добавляем в экран в стэк
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
}

