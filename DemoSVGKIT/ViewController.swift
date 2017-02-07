//
//  ViewController.swift
//  DemoSVGKIT
//
//  Created by jason akakpo on 06/02/2017.
//  Copyright © 2017 MTT. All rights reserved.
//

import UIKit
import SVGKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: SVGKLayeredImageView!
    @IBOutlet weak var secondView: SVGKLayeredImageView!
    
    @IBAction func firstButtonTapped(_ sender: Any) {
        loadSVG(to: firstView)
    }
    @IBAction func secondButtonTapped(_ sender: Any) {
            loadSVG(to: secondView)
    }

    func loadSVG(to view: SVGKLayeredImageView) {
        let image = SVGKImage(named: "RainbowWing.svg")!
        
        // STRANGELY THESE TWO LINES FIXES THE BUG 
        // let size = image.size
        // image.size = size
        view.image = image
    }
}

