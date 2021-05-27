//
//  BaseViewController.swift
//  login-with-combine
//
//  Created by Siddhesh Redkar  on 27/05/21.
//

import UIKit

class BaseViewController: UIViewController {
    //When isScrollable is true provide height to view
    var isScrollable:Bool?{
        didSet{
            if isScrollable == false{
                internelView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor).isActive = true
            }
        }
    }
    let scrollView:UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.showsVerticalScrollIndicator = false
        return v
    }()
    let internelView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //internelView.backgroundColor = .cyan
        setViews()
        setConstraint()
    }
    private func setViews(){
        view.addSubview(scrollView)
        scrollView.addSubview(internelView)
    }
    private func setConstraint(){
        scrollView.pinToEdges(of: view)
        internelView.pinToEdges(of: scrollView)
        NSLayoutConstraint.activate([
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            internelView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
        ])
    }
}
