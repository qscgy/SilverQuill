//
//  SubmitViewController.swift
//  SilverQuill
//
//  Created by Sam Ehrenstein on 12/21/15.
//  Copyright © 2015 SmartPhoneClub. All rights reserved.
//

import UIKit
import AVFoundation

class SubmitViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var imgPreview: UIImageView!
    @IBOutlet weak var nameField: UITextField!
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
    
    @IBAction func submit(sender: AnyObject) {
        //TODO prevent alert if not all data is present
        let alert=UIAlertController(title: "Submit", message: "Submit entry?", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
            self.submitEntry()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func submitEntry(){
        //this is where you actually upload the submission to the server
    }
    
    @IBAction func viewTapped(recognizer:UITapGestureRecognizer!){
        nameField.resignFirstResponder()
        titleField.resignFirstResponder()
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        dismissViewControllerAnimated(true, completion: nil)
        imgPreview.image=info[UIImagePickerControllerOriginalImage] as? UIImage
    }
}
