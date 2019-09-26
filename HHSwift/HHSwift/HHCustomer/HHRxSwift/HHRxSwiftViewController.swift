//
//  HHRxSwiftViewController.swift
//  HHSwift
//
//  Created by Now on 2019/9/26.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


// Observeble   可监听序列
// Observer     观察者
// Operator     操作符
// Disposble    订阅
struct Student {
    
}

class HHRxSwiftViewController: HHBaseVC {
    
    @IBOutlet weak var showInfoLab: UILabel!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passworldTF: UITextField!
    @IBOutlet weak var sureBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rx_rac_tap()
        rx_creatObserver()
//        creatBehaviorSubject()
//        creatReplaySubject()
        creatPublicSubject()
//        let d:Driver = self.nameTF.rx.text.asDriver()
//        let s:Driver = self.sureBtn.rx.tap.asDriver()
//        let l = showInfoLab.rx.text
//        let p = passworldTF.rx.text
//        d.drive(l)
//        s.drive(onNext: {
//        })
        
    }
}


extension HHRxSwiftViewController {

    
    func creatBehaviorSubject() {
        let disposeBag = DisposeBag()
        let subject = BehaviorSubject(value: "🔴")

        subject
          .subscribe { print("Subscription: 1 Event:", $0) }
          .disposed(by: disposeBag)

        subject.onNext("🐱")
        subject.onNext("🐶")
        
        subject
          .subscribe { print("Subscription: 2 Event:", $0) }
          .disposed(by: disposeBag)

        subject.onNext("🅰️")
        subject.onNext("🅱️")

        subject
          .subscribe { print("Subscription: 3 Event:", $0) }
          .disposed(by: disposeBag)

        subject.onNext("🍐")
        subject.onNext("🍊")
    }
    func creatReplaySubject() {
        let subject:ReplaySubject = ReplaySubject<Any>.create(bufferSize: 0)
        let disposeBag = DisposeBag()
        subject
            .subscribe{ print("success : 1 Event：",$0)}
            .disposed(by: disposeBag)
        
        subject.onNext("狗")
        subject.onNext("猫")
        
        subject
        .subscribe{ print("success : 2 Event：",$0)}
        .disposed(by: disposeBag)
        
        subject.onNext("A")
        subject.onNext("B")
    }
    func creatPublicSubject() {
        let dispoeseBag = DisposeBag()
        let subject = PublishSubject<String>()
        subject
            .subscribe {print("success Event 1: Event:", $0)}
            .disposed(by: dispoeseBag)
        subject.onNext("√")
        subject.onNext("❎")
        
        subject
            .subscribe {print("success Event 2: Event:", $0)}
            .disposed(by: dispoeseBag)
        subject.onNext("A")
        subject.onNext("B")
        
    }
}

//MARK:创建序列
extension HHRxSwiftViewController {
    func rx_creatObserver() {
        let number:Observable<Int> = Observable.create { (observer) -> Disposable in
            observer.onNext(1)
            observer.onNext(2)
            observer.onCompleted()
            return Disposables.create()
        }
        DLog("\(number)" + "序列")
    }
}

//MARK:函数式编程：将函数当做参数传递，或者作为返回值，组合成不同的方法，获取目标结果。
//MARK:优势：灵活、高复用、简洁、易维护、适应各种需求变化
extension HHRxSwiftViewController {
    
    func rx_student() {
        let _: [HHTool] = [HHTool()]
    }
    
}

//MARK:函数响应式编程
extension HHRxSwiftViewController {
    
    func rx_rac_student() {
        let _: [HHTool] = [HHTool()]
    }
}

//MARK:响应式编程
extension HHRxSwiftViewController {
    func rx_rac_tap() {
        sureBtn.rx.tap.asObservable().subscribe(onNext: {
            DLog("touch up in")
        })

    }
}
