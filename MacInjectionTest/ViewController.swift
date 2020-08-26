//
//  ViewController.swift
//  MacInjectionTest
//
//  Created by Koichiro Eto on 2020/08/25.
//  Copyright © 2020 Koichiro Eto. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @objc func injected() {
        //print("start injected")
        show()
        //print("end injected")
    }
    override func viewDidLoad() {
        //print("start viewDidLoad")
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.injected), name: NSNotification.Name(rawValue: "INJECTION_BUNDLE_NOTIFICATION"), object: nil)
        show()
    }
    func show() {
        //print("start show")
        let label = NSTextField(frame: NSRect(x: Int.random(in: 10..<100), y: Int.random(in: 10..<100), width: 150, height: 50))
        label.backgroundColor = NSColor.cyan
        label.stringValue = "Hello, world!"
        view.addSubview(label)
        //print("end show")
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

