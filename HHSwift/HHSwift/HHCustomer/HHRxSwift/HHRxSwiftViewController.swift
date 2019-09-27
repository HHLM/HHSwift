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
    let name:String
    let age:Int
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
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
//        rx_rac_tap()
//        rx_creatObserver()
//        creatBehaviorSubject()
//        creatReplaySubject()
//        creatPublicSubject()
//        rx_filter()
//        rx_map()
//        rx_skip()
//        rx_flatMap()
//        let d:Driver = self.nameTF.rx.text.asDriver()
//        let s:Driver = self.sureBtn.rx.tap.asDriver()
//        let l = showInfoLab.rx.text
//        let p = passworldTF.rx.text
//        d.drive(l)
//        s.drive(onNext: {
//        })
        
//        rx_Observable()
//        demoGuardLet(name: "打磨", age: 10)
//        demoIfLet(name: "赵云", age: 12)
        
//        rx_doOnObservable()
        
    }
}

enum MyError: Error {
    case A
    case B
}

//FIXME:if let 和 guard let
extension HHRxSwiftViewController {
    func demoIfLet(name: String?, age: Int?) {
        if let name = name,
            let age = age {
            /**
             * 'name'至此只会有两个
             * 1.String  name('if let'守护,等号右边的'name',仅在'{}'作用域内有效)
             * 2.String? name('if let'守护,等号右边的'name')
             * 3.这里正常应该选择不带'?'的'name',但是即便是选择了('Optional'的'name'),编译器也会帮你更正过来,这就是取名的技巧
             * 4.如果'name'或'age'中有一个为'nil',或者都为'nil',下面就不会输出
             */
            print(name + String(age))   // 输出:老王11('name'和'age'为不带'Optional'的)
        }
        
        /**
         * 'name'至此只会有一个
         * 2.String? name(demo(name: String?)中的'name')
         * 3.这里正常应该选择不带'?'的'name',但是即便是选择了('Optional'的'name'),编译器也会帮你更正过来,这就是取名的技巧
         */
        print("demo(name: String?)中的'name'")
    }
    func demoGuardLet(name: String?, age: Int?) {
        guard let name = name,
            let age = age else {
            print("姓名或年龄为nil")
            return
        }
        /**
         * 'name'至此会有两个
         * 1.String  name('guard let'守护,等号右边的'name')
         * 2.String? name('guard let'守护,等号右边的'name')
         * 3.这里正常应该选择不带'?'的'name',但是即便是选择了('Optional'的'name'),编译器也会帮你更正过来,这就是取名的技巧
         */
        print(name + String(age))   // 输出:老王11('name'和'age'为不带'Optional'的)
    }
}
extension HHRxSwiftViewController: UITableViewDelegate {
    
}
extension HHRxSwiftViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        return cell ?? UITableViewCell()
    }
    
    
}

//MARK:Observable使用
extension HHRxSwiftViewController {
    
    func rx_Observable() {
        
        let ob1 = Observable.just(1)
        ob1.map {print($0)}.subscribe(onNext: { (iii) in
            print("\(iii):just")
            }).disposed(by: DisposeBag())
        
        let ob2 = Observable.of("1","2","3","A")
        ob2.filter { (iiii) -> Bool in
            return iiii == "1"
        }.subscribe(onNext: { (iii) in
            print("\(iii):of")
        }).disposed(by: DisposeBag())
        
        let ob3 = Observable.from([1,2,3,4])
        ob3.subscribe(onNext: { (iii) in
            print("\(iii):from")
        }).disposed(by: DisposeBag())
        
        let ob4 = Observable<Any>.empty()
        let ob5 = Observable<Any>.error(MyError.A)
        let ob6 = Observable<Any>.never()
        let ob7 = Observable.range(start: 0, count: 1)
       
        //创建监听序列
        let ob8 = Observable<Any>.create { observer -> Disposable in
            DLog("发送消息")
            observer.onNext("ob8")
            observer.onCompleted()
            return Disposables.create {
            }
        }
        //订阅信号
        ob8.subscribe(onNext: { key in
            DLog(key)
        }, onError: { error in
            DLog(error)
        }, onCompleted: {
            DLog("发送完成了~~~")
        }) {
            DLog("这是干啥呢")
        }.disposed(by: DisposeBag())
        
        
        let ob9 =  Observable<Int>.interval(10, scheduler: MainScheduler.instance)
            ob9.subscribe(onNext: { time in
                DLog("interval:\(time)")
                DLog("---++++-")
            }).disposed(by: DisposeBag())
        
        
        let ob10 = Observable<Int>.timer(1,period: 10, scheduler: MainScheduler.instance)
            ob10.subscribe(onNext: { time in
                DLog("timer:\(time)")
                DLog("------")
            }).disposed(by: DisposeBag())
    }
    func rx_doOnObservable() {
        let observable = Observable.of("A", "B", "C")
        //监视Observable生命周期
        observable
            .do(onNext: { element in
                print("Intercepted Next：", element)
            }, onError: { error in
                print("Intercepted Error：", error)
            }, onCompleted: {
                print("Intercepted Completed")
            }, onDispose: {
                print("Intercepted Disposed")
            })
            .subscribe(onNext: { element in
                print(element)
            }, onError: { error in
                print(error)
            }, onCompleted: {
                print("completed")
            }, onDisposed: {
                print("disposed")
            })
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
