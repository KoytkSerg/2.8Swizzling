//
//  ViewExtension.swift
//  HW2.8_swizzling
//
//  Created by Sergii Kotyk on 13/12/21.
//

import UIKit
import ObjectiveC


private var asociatedObjectHandle: UnsafeRawPointer?

@IBDesignable
extension UIView{
    @IBInspectable var identifire: String {
        get{
            return objc_getAssociatedObject(self, asociatedObjectHandle!) as! String
        }
        set{
            objc_setAssociatedObject(self, asociatedObjectHandle!, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
