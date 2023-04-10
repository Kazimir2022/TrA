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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // определяем идентификатор segue. При помощи свойства identifier
        switch segue.identifier {
        case "toEditScreen":
            // обрабатываем переход(вызов метода).Отправляем источник перехода
            prepareEditScreen(segue)
        default:
            break
        }
    }
    
    // подготовка к переходу на экран редактирования
    private func prepareEditScreen(_ segue: UIStoryboardSegue) {
        // безопасно извлекаем опциональное значение контроллера назначения путем преобразования
        guard let destinationController = segue.destination as? SecondViewController else {
            return // если не получилось то выходим из метода
        }
        // У контроллера назначения (тип SecondViewController) изменяем текстовое свойство
        destinationController.updatingData = dataLabel.text ?? ""
    }
    
    @IBAction func unwindToFirstScreen(_ segue: UIStoryboardSegue) {}//
    
    
    
    
}

