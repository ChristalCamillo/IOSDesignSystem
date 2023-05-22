//
//  ViewController.swift
//  DesignSystemExample
//
//  Created by Fernanda Olimpio Jesus de Abreu on 08/02/23.
//

import DesignSystem
import UIKit

public class ViewController: UIViewController {

    public var view2 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(view2)
        // Do any additional setup after loading the view.
        // let appRedColor = UIColor(named: "amber-0")
        view.backgroundColor = .amber0
        LDSColors.allCases.forEach {
            // Define a cor de fundo da view para cada cor no array
            self.view2.backgroundColor = UIColor.appColor($0)
        }
    }

}
