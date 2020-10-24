
![App Brewery Banner](Documentation/AppBreweryBanner.png)

#  Quizzler

문항에 따라 True, False로 푸는 퀴즈앱.

<div>
<img width="200" src="https://qussk.github.io/image/gif/quiz.gif">
</div>


## Development goal
- 디자인 패턴이란 무엇이며, 프로그래밍에서 어떻게 사용되는 지
- 앱 개발에 Model-View-Controller 또는 MVC 패턴을 사용하는 방법
- 구조체 인스턴스를 인스턴스화하는 방법
- 값 유형과 참조 유형의 차이점 이해
- 객체지향 프로그래밍
- 코드를 리팩터링하고 체계적으로 유지하는 방법


## Why you start this project?
Quizzler 프로젝트를 이용하여 MVC 패턴 익히기


### What MVC ?

![](https://miro.medium.com/max/1400/1*uhPpTHYzTmHGrAZy8hiM7w.png)

여러가지 디자인 패턴들 중, iOS개발에는 MVC패턴이 사용됩니다.MVC(Model-View-Controller)패턴이란 어플리케이션 객체를 모델, 뷰, 컨트롤러의 3가지 역할 중 하나로 구분하여 서로 통신하며 동작하도록 하는 방식입니다. 이 방식은 뷰를 재사용하기 쉽게하고, 데이터 흐름이 정상적으로 되도록 돕습니다.

**Model (모델 객체)**
 모델은 데이터를 캡슐화하고, 데이터를 처리하는 로직을 담당합니다. 그 외의 뷰나 인터페이스에는 절대 관여할 수 없습니다. 모델 클래스를 구현할 때는 다음과 같은 사항을 고려해야 합니다. 
 
  인스턴스 변수는 어플리케이션 내에서 데이터를 캡슐화하고 유지하기 위해 사용됩니다. 이때 인스턴스 변수의 타입을 적절하게 고려해야합니다.
 
 접근자 메서드는 인스턴스 변수를 설정하거나 획득할 때 사용됩니다. 보통 get 메서드와 set 메서드로 알려져 있습니다. swift 에서 인스턴스가 pirvate 또는 fileprivate 으로 선언되어 있는 경우 단순히 변수로는 값에 접근할 수 없습니다. 이 경우 접근자 메서드를 통해 값에 접근해야합니다.

 키-값 코딩은 클라이언트가 프로퍼티 이름을 키로 설정하여 해당 프로퍼티에 접근할 수 있도록 하는 매커니즘입니다. 접근자 메서드의 이름을 지정하거나 암시적으로는 프로퍼티의 이름을 지정해서 사용해야합니다.

 대부분 모델 클래스는 초기화 메서드를 통해 인스턴스 변수의 값을 적절하게 설정합니다. 이 때 초기화 메서드의 표준 형식을 따라야 합니다. 반대로 인스턴스 변수의 값을 할당 해제하기 위해서는 deinit 메서드를 통해 해제할 수 있습니다.

 모델 클래스의 객체를 저장하는 경우, 인스턴스 변수를 인코딩하거나 디코딩할 수 있습니다.

 클래스가 모델 객체를 복사하는 가능성이 있는 경우 클래스에서 객체 복사를 구현해야합니다.

**View(뷰 객체)**
뷰는 어플리케이션에서 사용자가 볼 수 있는 것을 관리합니다. 뷰 객체는 모델의 데이터를 보여주거나 편집할 수 있도록 합니다. 즉 화면에 어떻게 나타날지, 사용자의 동작에 어떻게 반응할지를 결정합니다.

**Controller(컨트롤러 객체)**
컨트롤러 객체는 뷰와 모델 사이에 중개자 역할을 합니다. 뷰에서 이루어지는 동작을 해석하고, 변경되는 값들을 모델에 전달합니다. 반대로 모델의 값들을 뷰에 전달하기도 합니다. 또 객체들의 라이프사이클을 관리하기도 합니다. 코코아 터치 프레임워크에서는 2가지 유형의 컨트롤러 유형을 제공합니다.

뷰 컨트롤러는 콘텐츠를 화면에 표시하는 뷰를 관리합니다. 뷰의 전환이나 동작에 관여하고, 방향에 따라 뷰를 회전시키기도 하며, 메모리 부족과 같은 경고에 응답하기도 합니다. UIViewController 클래스의 인스턴스로 구현되어 있습니다.

코디네이팅 컨트롤러(Coordinating Controller)라는 것도 존재합니다. 이것은 어플리케이션 전체나 일부 기능들을 감독합니다. 객체의 라이프사이클을 관리하고, 객체 간 연결을 수행하고, 사용자의 동작을 처리하며, 알림을 관리합니다.


### 적용
- **Model** - Quiz, Quizbrain
- **View** - Storyboard
- **C** - ViewController


***

>This is a companion project to The App Brewery's Complete App Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)

![End Banner](Documentation/readme-end-banner.png)
