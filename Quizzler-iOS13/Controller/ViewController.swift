//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  //2-1.quizManager에 QuizManager할당.
  let quizManager = QuizManager()
  //4.타이머로 backgrounColor시간 지정
  var myTimer = Timer()
  
  //스코어,질문,진행률바
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var QuestionLabel: UILabel!
  @IBOutlet weak var ProgressView: UIProgressView!
  
  
  //버튼 변수
  @IBOutlet weak var trueButton: UIButton!
  @IBOutlet weak var falseButton: UIButton!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      setData()
    }
  
  
  //2-0.값 설정
  func setData(){
    self.scoreLabel.text = "score = \(quizManager.letScore())"
    self.QuestionLabel.text = "\(quizManager.letQuestiontext())"
    self.ProgressView.progress = 0.0
  }
  
  
  
  //3.버튼인식
  @IBAction func buttonDidTap(_ sender: UIButton) {
    
    //3-1.클릭할 때마다
    self.QuestionLabel.text = self.quizManager.letQuestiontext()
    self.scoreLabel.text = "score = \(self.quizManager.letScore())"
    
    //답안 체크
    let check = self.quizManager.letAnswer()
    
    //3-2.답안이 "True"이면 backgroundColor변경
    if check == trueButton.currentTitle {
      sender.backgroundColor = .green
    }else {
      sender.backgroundColor = .red
    }
    
    //4-1. 0.3초 뒤에 timerColorTap을 이용한 버튼의backgroundColor clear처리
    myTimer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(timerColorTap), userInfo: nil, repeats: false)
    
  }

  //4-2
  @objc func timerColorTap(button : UIButton){
    self.trueButton.backgroundColor = .clear
    self.falseButton.backgroundColor = .clear
  }


  
}

