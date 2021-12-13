//
//  Screen2ViewController.swift
//  HW2.8_swizzling
//
//  Created by Sergii Kotyk on 13/12/21.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var blueImage: UIImageView?
    var image: UIImage?
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        blueImage!.image = image

    }

}
