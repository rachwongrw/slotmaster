//
//  ViewController.swift
//  SlotMaster
//
//  Created by Rachel Wong on 14/1/21.
//

import UIKit

class ViewController: UIViewController {
  let imageNames: [String] = ["lemon", "dollarsign", "cherries", "grapes", "number7"]
  
  @IBOutlet weak var Img1: UIImageView!
  @IBOutlet weak var Img2: UIImageView!
  @IBOutlet weak var Img3: UIImageView!
  
  @IBAction func playBtnTapped(_ sender: UIButton) {
    let slots = [Img1, Img2, Img3]
    
    for img in slots {
      let randomImg1 = imageNames.randomElement()
      if let unwrapped1 = randomImg1 {
        img?.image = UIImage(named: unwrapped1)
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

