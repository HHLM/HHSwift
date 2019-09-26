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
/**
 MVC
 Model 、View、ViewController
 数据处理 |交互 | 逻辑处理 更新数据 刷新UI
 MVVM
 Model 、View、ViewModel、ViewController
 数据处理 | 用户输入行为，显示输出状态 | 逻辑层，将用户的输入行为，转为输出x状态 | 主要负责数据绑定
 减轻VC的负担、和控制器，view相互独立
 */

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
        creatReplaySubject()
        creatPublicSubject()
//        rx_filter()
//        rx_map()
//        rx_skip()
        rx_flatMap()
//        let d:Driver = self.nameTF.rx.text.asDriver()
//        let s:Driver = self.sureBtn.rx.tap.asDriver()
//        let l = showInfoLab.rx.text
//        let p = passworldTF.rx.text
//        d.drive(l)
//        s.drive(onNext: {
//        })
    }
}


//MARK:操作符
extension HHRxSwiftViewController {
    
    //MARK:信号转换
    func rx_map() {
        Observable.of(10,100)
            .map { $0 * 10}
            .subscribe(onNext: {print($0)})
            .disposed(by: DisposeBag())
    }
    
    //MARK:将observable的元素转成其他的observable，然后合并
    func rx_flatMap() {
        let subject1 = BehaviorSubject.init(value: "A")
        let subject2 = BehaviorSubject.init(value: "B")
        Observable.of(subject1,subject2)
            .flatMap { $0}
            .subscribe(onNext: {print($0)})
            .disposed(by: DisposeBag())
        subject1.onNext("HHH")
        subject2.onNext("MMM")
    }
    
    //MARK:过滤
    func rx_filter() {
        let disposebag = DisposeBag()
        Observable.of(10,100)
            .filter { $0 > 2}
            .subscribe(onNext: { print($0)})
            .disposed(by:disposebag)
    }
    
    //MARK:跳过信号count
    func rx_skip() {
        Observable.of(10,100)
        .map { $0 * 10}
        .skip(1)
        .subscribe(onNext: {print($0)})
        .disposed(by: DisposeBag())
    }
}

//MARK:创建subject
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
        let subject:ReplaySubject = ReplaySubject<Any>.create(bufferSize: 4)
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
        sureBtn.rx.tap.asObservable()
            .subscribe(onNext: {
            DLog("touch up in")
            }).disposed(by: DisposeBag())

    }
}
