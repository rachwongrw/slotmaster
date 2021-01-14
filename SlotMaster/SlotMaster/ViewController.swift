//
//  ViewController.swift
//  SlotMaster
//
//  Created by Rachel Wong on 14/1/21.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var Img1: UIImageView!
  @IBOutlet weak var Img2: UIImageView!
  @IBOutlet weak var Img3: UIImageView!
  
  @IBAction func playBtnTapped(_ sender: UIButton) {
    Img1.image = UIImage(named: "dollarsign")
    Img2.image = UIImage(named: "dollarsign")
    Img3.image = UIImage(named: "dollarsign")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

