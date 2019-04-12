//
//  ViewController.swift
//  NewProject
//
//  Created by 章琦 on 2018/2/21.
//  Copyright © 2018年 章琦. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var rollImage1: UIImageView!
    @IBOutlet weak var rollImage2: UIImageView!
    var rollIndex1  = 0;
    var rollIndex2  = 0;

    
    let rollImages =  ["dice1","dice2","dice3","dice4","dice5","dice6"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var bottomRoundingRulerPicker = VNBRluerPicker(frame: CGRect(x: 10, y: 320, width: 300, height: 70), bigUnit:24, smallUnits:6)
        bottomRoundingRulerPicker!.isRoundingEnabled = true;
        bottomRoundingRulerPicker!.rulerValue = "10:00:00";
//        bottomRoundingRulerPicker!.delegate = self as! VNBTimeRulerDelegate;
        bottomRoundingRulerPicker!.triangleHeight = 8;
        bottomRoundingRulerPicker?.showTimeRulerView()
        view.addSubview(bottomRoundingRulerPicker!);
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollAction(_ sender: Any) {
        updateRollImage();
    }
    
    func updateIndex()  {
        self.rollIndex1 = Int.random(in: 0 ... 5);
        self.rollIndex2 = Int.random(in: 0 ... 5);
        
    }
    
    func updateRollImage() {
        self.updateIndex();
        rollImage1.image = UIImage(named: rollImages[rollIndex1]);
        rollImage2.image = UIImage(named: rollImages[rollIndex2]);
    }
    

    


}

