//
//  ViewController.swift
//  ch03ImageViewer
//
//  Created by 김규리 on 2022/01/14.
//

import UIKit

class ViewController: UIViewController {
    var minImage = 1
    var maxImage = 4
    var numImage = 1
    
    
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    // 이전 버튼 클릭 시 실행되는 함수
    @IBAction func btnPrev(_ sender: UIButton) {
        numImage = numImage - 1
        
        if (numImage < minImage) {
            numImage = maxImage
        }

        let imageName = String(numImage) + ".PNG"
        imageView.image = UIImage(named: imageName)
        
    }
    
    // 다음 버튼 클릭 시 실행되는 함수
    @IBAction func btnNext(_ sender: UIButton) {
        numImage = numImage + 1
        
        if (numImage > maxImage) {
            numImage = minImage
        }
        
        let imageName = String(numImage) + ".PNG"
        imageView.image = UIImage(named: imageName)
    }

}

