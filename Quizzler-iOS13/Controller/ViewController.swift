//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  //스코어,질문,진행률바
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var QuestionLabel: UILabel!
  @IBOutlet weak var ProgressView: UIProgressView!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      setData()
    }
  
  
  //2.값 설정
  func setData(){
    self.scoreLabel.text = "score = 0"
    self.QuestionLabel.text = "1"
    self.ProgressView.progress = 0.0
  }
  
  //action
  @IBAction func buttonDidTap(_ sender: UIButton) {
    
  }
  

}

