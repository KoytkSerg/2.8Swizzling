//
//  ImagePickerController.swift
//  HW2.8_swizzling
//
//  Created by Sergii Kotyk on 13/12/21.
//

import MobileCoreServices
import UIKit

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as! CFString
        switch mediaType {
        case kUTTypeImage:
            let editedImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
            chosenImageView.image = editedImage
            let originalImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            chosenImageView.image = originalImage
      default:
            print("Mismatched type: \(mediaType)")
      }

      picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
      picker.dismiss(animated: true, completion: nil)
    }
}
