//
//  SubmitViewController.swift
//  SilverQuill
//
//  Created by Sam Ehrenstein on 12/21/15.
//  Copyright © 2015 SmartPhoneClub. All rights reserved.
//

import UIKit
import AVFoundation

class SubmitViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imgPreview: UIImageView!
    var imagePicker:UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func takePhoto(sender: AnyObject) {
        imagePicker=UIImagePickerController()
        imagePicker.delegate=self
        imagePicker.sourceType = .Camera
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        dismissViewControllerAnimated(true, completion: nil)
        imgPreview.image=info[UIImagePickerControllerOriginalImage] as? UIImage
    }
}
