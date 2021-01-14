//
//  ViewController.swift
//  SlotMaster
//
//  Created by Rachel Wong on 14/1/21.
//

import UIKit

class ViewController: UIViewController {
  let imageNames: [String] = ["lemon", "dollarsign", "cherries", "grapes", "number7"]
  var points: Int = 0
  
  @IBOutlet weak var Img1: UIImageView!
  @IBOutlet weak var Img2: UIImageView!
  @IBOutlet weak var Img3: UIImageView!
  
  @IBOutlet weak var PointScore: UILabel!
  @IBOutlet weak var PointsLabel: UILabel!
  

  @IBAction func playBtnTapped(_ sender: UIButton) {
    let slots = [Img1, Img2, Img3]
  
    for img in slots {
      if let randomImg = imageNames.randomElement() {
        img?.image = UIImage(named: randomImg)
      }
    }
    
    if Img1.image == Img2.image && Img2.image == Img3.image {
      PointsLabel.text = String("You get 5 points!")
    } else if Img1.image == Img2.image || Img2.image == Img3.image || Img3.image == Img1.image {
      points += 2
      PointsLabel.text = String("You get 2 points!")
    } else {
      PointsLabel.text = String("")
    }
    
    PointScore.text = String(points)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

}

