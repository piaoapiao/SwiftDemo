//
//  main.swift
//  SwiftDemo
//
//  Created by guodong on 2018/10/9.
//  Copyright © 2018年 maizi. All rights reserved.
//

import Foundation


//import Foundation
import UIKit

//UIApplicationMain(Process.argc, Process.unsafeArgv, NSStringFromClass(UIApplication), NSStringFromClass(AppDelegate))


//class MyApplication: UIApplication {
//     func sendEvent(event: UIEvent) {
//        super.sendEvent(event)
//        print("sendEvent")
//    }
//}


UIApplicationMain(
    CommandLine.argc,
    UnsafeMutableRawPointer(CommandLine.unsafeArgv)
        .bindMemory(
            to: UnsafeMutablePointer<Int8>.self,
            capacity: Int(CommandLine.argc)),
    nil,
    NSStringFromClass(AppDelegate.self)
)



//UIApplicationMain(
//    CommandLine.argc,
//    UnsafeMutableRawPointer(CommandLine.unsafeArgv)
//        .bindMemory(
//            to: UnsafeMutablePointer<Int8>.self,
//            capacity: Int(CommandLine.argc)),
//   NSStringFromClass(MyApplication.self),
//    NSStringFromClass(AppDelegate.self)
//)



