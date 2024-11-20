import UIKit

class TimeDisplayViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up the initial UI or perform any additional setup after loading the view.
        appendTimeTextView()
    }
    
    /// Appends a text view that displays the current system time as defined by the system.
    func appendTimeTextView() {
        let textView = UITextView()
        
        // Configure the text view
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.font = UIFont.systemFont(ofSize: 18)
        
        // Get the current system time
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        let currentTime = dateFormatter.string(from: Date())
        
        // Set the text of the text view to the current time
        textView.text = "Current Time: \(currentTime)"
        
        // Add the text view to the view hierarchy
        self.view.addSubview(textView)
        
        // Set up constraints
        NSLayoutConstraint.activate([
            textView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            textView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            textView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8),
            textView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

}
