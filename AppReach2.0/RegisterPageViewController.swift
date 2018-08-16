//
//  RegisterPageViewController.swift
//  AppReach2.0
//
//  Created by Gaurav Tyagi on 8/15/18.
//  Copyright © 2018 Gaurav Tyagi. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var securityAnswerTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        //Check for empty fields
        if(userEmail!.isEmpty || userPassword!.isEmpty || (userRepeatPassword?.isEmpty)!)
        
        {//Display alert message
            displayMyAlertMessage(userMessage:"All fields are required");
            return;
            
        }
        
        //Check if passwords match
        if(userPassword != userRepeatPassword)
        
        {
            //Display an alert message
            displayMyAlertMessage(userMessage:"Passwords do not match");
            return;
            
        }
        //Store Data
        UserDefaults.standard.set(userEmail,forKey:"userEmail");
        UserDefaults.standard.set(userPassword,forKey:"userPassword");
        UserDefaults.standard.synchronize();
            
        
        //Display alert message with confirmation
        _ = UIAlertController(title:"Alert", message:"Registration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert);
        
        _ = UIAlertAction(title: "OK", style:UIAlertActionStyle.default){action in
            self.dismiss(animated: true, completion:nil);
        }
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
