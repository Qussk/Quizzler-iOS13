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
  let quizArray = [Question(q: "문제1. 값 타입(구조체,열거형)은 상속이 불가하다.", a: "True"),
                   Question(q: "문제2. 일반적으로 값 타입은 기본 자료형과 struct, enum, tuple를 가르킨다.", a: "True"),
                   Question(q: "문제3. 언래핑과 달리, 옵셔널체이닝은 런타임 에러 대신 nil값을 반환하는 특징이 있다.", a: "True"),
                   Question(q: "문제4. 에러의 종류중,'런타임에러'는 문법적 오류(Xcode에 표시됨)이고,'컴파일에러'는 코드를 실행했을때 예기치 않게 발생하는 오류이다.", a: "True"),
                   Question(q: "문제5. 옵셔널 체이닝중 이어지는 프로퍼티, 메소드, 서브스크립트의 값이 하나라도 nil일경우 계속 체이닝되므로 값이 있는 것으로 표기된다.", a: "False"),
                   Question(q: "문제6. 구조체에서 init을 쓰지 않아도 되는 이유는 멤버와이즈이니셜라이저 덕분이다", a: "True"),
                   Question(q: "문제7. 디자인패턴중, MVC는 C(Cotroller)에 모두 집중적으로 때려 넣는 것이다.", a: "False"),
                   Question(q: "문제8. 디자인패턴중, MVC의 C(Cotroller)는 기능만을 담당한다.", a: "True"),
                   Question(q: "문제9. 에러핸들링은 우선적으로 에러를 정의하여야 한다.", a: "True"),
                   Question(q: "문제10. do-catch문으로 에러를 처리할 때, try?인 경우 앱이 종료된다.", a: "False"),
                   Question(q: "문제11. do-catch문의 경우 한 함수에 에러타입과 성공타입을 함께 쓸 수 있고, Result Type은 그럴 수 없다.", a: "False"),
                   Question(q: "문제12. throwing함수에서 선언시 throws, 이후 각각 오류를 구분하여 던질 때는 throw을 쓴다.", a: "True")
]
  
  
  
  
  //2-2. 초깃값 생성
  var score = 0
  var number = 0
  var pro = 0.0
  
  //2-3. 함수 만들기
  func getQuestion() ->String{
    return self.quizArray[number].q
  }
  
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
      //2-5. 문제넘길때마다 pro게이지 상승(full게이지는 number을 1로 나눈 값)
      pro = Double(number)/Double(self.quizArray.count)
    }else{
      number = 0
      score = 0
      pro = 0.0
    }
    return self.quizArray[number].q
  }
  
  //진행률 반환
  func letProBar() -> Float{
  return Float(pro)
  }
  
  //답안 반환
  func letAnswer()-> String {
    return self.quizArray[number].a
  }
  
}

