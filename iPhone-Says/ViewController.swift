//
//  ViewController.swift
//  iPhone-Says
//
//  Created by Carlos Blandino on 5/10/20.
//  Copyright © 2020 Carlos Blandino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var modelName = UIDevice.current.name
    var askMeImages = [UIImage.init(named: "yes"),UIImage.init(named: "notToday"),UIImage.init(named: "notSure"),UIImage.init(named: "maybe"),UIImage.init(named: "askMeNicely"),UIImage.init(named: "askMeLater"),UIImage.init(named: "askGod"),UIImage.init(named: "notToday")]
    
    @IBOutlet weak var askMeView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        askMeView.image =  #imageLiteral(resourceName: "askMe.png")
    }
    
   
    @IBAction func tryMeButton(_ sender: Any) {
        askMeView.image = askMeImages.randomElement()!
    }
    
}

