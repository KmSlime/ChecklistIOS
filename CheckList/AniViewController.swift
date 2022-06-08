//
//  AniViewController.swift
//  CheckList
//
//  Created by TPS on 6/7/22.
//

import UIKit

class AniViewController: UIViewController {

    @IBOutlet weak var aniView: UIView!
    @IBOutlet weak var widthContraint: NSLayoutConstraint!
    
    var abc: Int = 1
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        aniView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageView)
        self.widthContraint.constant = 0
        self.imageView.frame = .zero
        imageView.center = self.view.center
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (_) in
            UIView.animate(withDuration: 2) {
                self.imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 200, height: 200))
            } completion: { (_) in
                
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    deinit {
        
    }
}
