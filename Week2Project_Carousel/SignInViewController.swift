
import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var fullView: UIView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var loginContainer: UIView!
    
    @IBOutlet weak var inputContainers: UIView!
    
    @IBOutlet weak var loginTextImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // dismisses keyboard upon tapping on fullView
        var tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        fullView.addGestureRecognizer(tap)
        
        // dismisses keyboard upon clicking return
        self.emailTextField.delegate = self;
        self.passwordTextField.delegate = self;
        
    }
    
    // dismisses keyboard upon tapping on fullView
    func DismissKeyboard(){
        fullView.endEditing(true)
    }
    
    // dismisses keyboard upon clicking return
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true);
        return false;
    }
    
    @IBAction func didEndEditing(sender: AnyObject) {
    }

    
    @IBAction func didPressSignInButton(sender: AnyObject) {
        println("hey")
        var loadingView = UIAlertView(title: "Signing in...", message: nil, delegate: nil, cancelButtonTitle: nil)
        loadingView.show()
        
        let delay = 2.0 * Double(NSEC_PER_SEC)
        var time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue(), {
            loadingView.dismissWithClickedButtonIndex(-1, animated: true)
            
            if (self.emailTextField.text == "email" && self.passwordTextField.text == "password") {
                println("madeit")
                self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                var alertView = UIAlertView(title: "Oops", message: "email/password is incorrect", delegate: nil, cancelButtonTitle: "OK")
                alertView.show()
            }
        })
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            self.loginContainer.center.y = kbSize.height
            
            self.loginTextImage.hidden = true
            
            self.inputContainers.center.y = self.loginContainer.center.y - 120
            
            }, completion: nil)
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}