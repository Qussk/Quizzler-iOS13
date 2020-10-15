//
//  QuizManager.swift
//  Quizzler-iOS13
//
//  Created by Qussk_MAC on 2020/10/15.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation


//1-0. 앱의 모든 데이터를 관리하는 QuizManager라는 데이터모델을 만듦.
class QuizManager {
  
  //1-1.Question이라는 구조체를 quizArray에 할당함
  let quizArray = [Question(q: "A slug's blood is green.", a: "True"),
                   Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                   Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                   Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                   Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                   Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                   Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                   Question(q: "Google was originally called 'Backrub'.", a: "True"),
                   Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                   Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                   Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                   Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
]
  
  
  //2-2. 초깃값 생성
  var score = 0
  var number = 0
  var pro = 0.0
  
  //2-3. 함수 만들기
  //스코어 반환
  func letScore()->Int{
    if self.quizArray[number].a == "True"{
    score += 1
    }
    return score
  }
  //문제 반환 -> number값에 따른 문제변경
  func letQuestiontext()-> String{
    //2-4.만약 11번째 보다 작으면 '문제번호+=1', 12번째 문제 도달시 '문제[0]'으로 초기화
    if number < 11 {
      number += 1
    }else{
      number = 0
    }
    return self.quizArray[number].q
  }
  
  //진행률 반환
  func letProBar(){
    //2-5. 문제넘길때마다 pro게이지 상승(full게이지는 number을 1로 나눈 값)
    pro = 1/Double(number)
  }
  
  //답안 반환
  func letAnswer()-> String {
    return self.quizArray[number].a
  }
  
}

