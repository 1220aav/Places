//
//  NewPlaceTableViewController.swift
//  Places
//
//  Created by Andrey Andryukhin on 11.03.2020.
//  Copyright © 2020 Andrey Andryukhin. All rights reserved.
//

import UIKit

class NewPlaceTableViewController: UITableViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var setNameField: UITextField!
    @IBOutlet weak var setLocationField: UITextField!
    @IBOutlet weak var setTypeField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    // MARK: - TableView Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cameraIcon = #imageLiteral(resourceName: "camera")
        let photoIcon = #imageLiteral(resourceName: "photo")
        
        if indexPath.row == 0 {
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            
            let cameraSheetAction = UIAlertAction(title: "Camera", style: .default, handler: { _ in
                self.chooseImagePicker(source: .camera)
            })
            cameraSheetAction.setValue(cameraIcon, forKey: "image")
            cameraSheetAction.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
            
            let photoSheetAction = UIAlertAction(title: "Photo", style: .default, handler: {_ in
                self.chooseImagePicker(source: .photoLibrary)
            })
            photoSheetAction.setValue(photoIcon, forKey: "image")
            photoSheetAction.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
            
            let cancelSheetAction = UIAlertAction(title: "Cancel", style: .cancel)
            
            actionSheet.addAction(cameraSheetAction)
            actionSheet.addAction(photoSheetAction)
            actionSheet.addAction(cancelSheetAction)
            
            present(actionSheet, animated: true)
        } else {
            view.endEditing(true)
        }
    }

}

// MARK: - UITextField Delegate

extension NewPlaceTableViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

// MARK: - Image Choosing

extension NewPlaceTableViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func chooseImagePicker(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            present(imagePicker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        placeImage.image = info[.editedImage] as? UIImage
        placeImage.contentMode = .scaleAspectFill
        placeImage.clipsToBounds = true
        dismiss(animated: true)
    }
}
