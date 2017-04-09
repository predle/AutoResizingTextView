//
//  ViewController.swift
//  AutoResizingTextView
//
//  Created by Beomseok on 4/10/17.
//  Copyright © 2017 Beomseok. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    fileprivate weak var scrollView: UIScrollView?
    fileprivate weak var contentView: UIView?
    fileprivate weak var textView: UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView.init()
        scrollView.backgroundColor = UIColor.red
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        self.scrollView = scrollView;
        
        var views: [String:AnyObject] = [String:AnyObject]()
        views["scrollView"] = scrollView;
        
        var layoutConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[scrollView]-0-|", options: [], metrics: nil, views: views)
        self.view.addConstraints(layoutConstraints)
        layoutConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[scrollView]-0-|", options: [], metrics: nil, views: views)
        self.view.addConstraints(layoutConstraints)
        
        
        let contentView = UIView.init()
        contentView.backgroundColor = UIColor.blue
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView = contentView
        scrollView.addSubview(contentView)
        
        views["contentView"] = contentView;
        layoutConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[contentView(==scrollView)]-0-|", options: [], metrics: nil, views: views)
        self.view.addConstraints(layoutConstraints)
        layoutConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[contentView]-0-|", options: [], metrics: nil, views: views)
        self.view.addConstraints(layoutConstraints)
        
        let textView = UITextView.init()
        textView.backgroundColor = UIColor.green
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.delegate = self
        self.textView = textView
        contentView.addSubview(textView)
        
        views["textView"] = textView;
        layoutConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[textView]-0-|", options: [], metrics: nil, views: views)
        self.view.addConstraints(layoutConstraints)
        layoutConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[textView]-0-|", options: [], metrics: nil, views: views)
        self.view.addConstraints(layoutConstraints)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

