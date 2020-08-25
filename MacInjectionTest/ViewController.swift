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
        show()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        show()
    }
    func show() {
        let label = NSTextField(frame: NSRect(x: 20, y: 20, width: 150, height: 50))
        label.backgroundColor = NSColor.cyan
        label.stringValue = "Hello, world!"
        view.addSubview(label)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

