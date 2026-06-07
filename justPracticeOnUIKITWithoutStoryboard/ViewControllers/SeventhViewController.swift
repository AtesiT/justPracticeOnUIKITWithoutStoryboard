import UIKit

final class SeventhViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "TextField"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Label"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var theSwitch: UISwitch = {
        let theSwitch = UISwitch()
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        return theSwitch
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl()
        segmentedControl.insertSegment(withTitle: "First", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "Second", at: 1, animated: false)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    private lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.translatesAutoresizingMaskIntoConstraints = false
        return stepper
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        view.addSubview(textField)
        view.addSubview(label)
        view.addSubview(theSwitch)
        view.addSubview(segmentedControl)
        view.addSubview(stepper)
        setConstraints()
    }
}

private extension SeventhViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            textField.topAnchor.constraint(equalTo: button.topAnchor, constant: 60),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            label.topAnchor.constraint(equalTo: textField.topAnchor, constant: 60),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            theSwitch.topAnchor.constraint(equalTo: label.topAnchor, constant: 60),
            theSwitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            segmentedControl.topAnchor.constraint(equalTo: theSwitch.topAnchor, constant: 60),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            stepper.topAnchor.constraint(equalTo: segmentedControl.topAnchor, constant: 60),
            stepper.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stepper.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}

#Preview {
    SeventhViewController()
}
