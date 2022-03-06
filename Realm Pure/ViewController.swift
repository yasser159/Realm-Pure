//
//  ViewController.swift
//  Realm Pure
//
//  Created by Yasser Hajlaoui on 3/5/22.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    //var todoItems : Results<Item>?
    let realm = try! Realm()
    var boxes: Results<Box>?
    
    
    @IBOutlet weak var lbl_Label: UILabel!
    @IBOutlet weak var txt_Input: UITextField!
    @IBOutlet weak var btn_Save: UIButton!
    @IBOutlet weak var btn_Load: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let realm = try! Realm()
        
        print(Realm.Configuration.defaultConfiguration.fileURL)

        let results = realm.objects(Cat.self).filter("color = 'Orange'")

        print(results.count)
        
        
        
//        var myCat    = Cat()
//        myCat.name   = "Tom"
//        myCat.gender = "Male"
//        myCat.color  = "Gray"
//
//        try! realm.write {
//            realm.add(myCat)
//        }
    }
    
    
    
    
    
    
    

    @IBAction func btn_Save(_ sender: Any) {
        print("Save")
        


    
    }
    
    @IBAction func btn_Load(_ sender: Any) {
        print("Load")
    }

    func loadBoxes() {
        
        boxes = realm.objects(Box.self)
        //tableView.reloadData()
    }
}





//for later

//            do {
//            try self.realm.write {
//                let newBox = Box()
//                newBox.name = txt_Input.text!
//
////              newBox.dateCreated = Date()
////             currentCategory.items.append(newItem)
//            }
//            } catch {
//                print("Error saving new items, \(error)")
//            }



//    func save(Box: Box){
//        do {
//            try realm.write {
//                realm.add(boxes)
//            }
//        } catch {
//            print("Error saving category \(error)")
//        }
//
//        //tableView.reloadData()
//    }
//
