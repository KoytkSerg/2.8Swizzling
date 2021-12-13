//
//  ViewController.swift
//  HW2.8_swizzling
//
//  Created by Sergii Kotyk on 6/12/21.
//


import UIKit
import MobileCoreServices

class ViewController: UIViewController {
     @IBOutlet weak var chosenImageView: UIImageView!


    @IBAction func selectImageAction(_ sender: UIButton) {
        let pickerController = UIImagePickerController()
    
        pickerController.sourceType = .savedPhotosAlbum
        pickerController.mediaTypes = [kUTTypeImage as String]
        pickerController.allowsEditing = true
        pickerController.delegate = self
        present(pickerController, animated: true, completion: nil)
        
    }
    
    @IBAction func blueButton(_ sender: Any) {
        performSegueWithIdentifier(identifier: "showBlue", sender: nil) { (segue) in
            if let blue = segue.destination as? BlueViewController, segue.identifier == "showBlue"{
                blue.image = self.chosenImageView.image
            }
        }
    }
    @IBAction func greenButton(_ sender: Any) {
        performSegueWithIdentifier(identifier: "showGreen", sender: nil) { (segue) in
            if let green = segue.destination as? GreenViewController, segue.identifier == "showGreen"{
                green.image = self.chosenImageView.image
            }
        }
    }
    
    @IBAction func yellowButton(_ sender: Any) {
        performSegueWithIdentifier(identifier: "showYellow", sender: nil) { (segue) in
            if let yellow = segue.destination as? YellowViewController, segue.identifier == "showYellow"{
                yellow.image = self.chosenImageView.image
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

