import UIKit

final class SixthViewController: UIViewController {
    
    private lazy var setButton: UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var setLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var setTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Any text.."
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var setSwitch: UISwitch = {
        let theSwitch = UISwitch()
        theSwitch.isOn = true
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        return theSwitch
    }()
    
    private lazy var setStepper: UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 100
        stepper.translatesAutoresizingMaskIntoConstraints = false
        return stepper
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(setButton)
        view.addSubview(setLabel)
        view.addSubview(setTextField)
        view.addSubview(setSwitch)
        view.addSubview(setStepper)
        setConstraints()
    }
}

extension SixthViewController {
    func setConstraints() {
        NSLayoutConstraint.activate(
            [
            setButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            setButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            setButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            setLabel.topAnchor.constraint(equalTo: setButton.topAnchor, constant: 60),
            setLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            setLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            setTextField.topAnchor.constraint(equalTo: setLabel.topAnchor, constant: 60),
            setTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            setTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            setSwitch.topAnchor.constraint(equalTo: setTextField.topAnchor, constant: 60),
            setSwitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            setSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            setStepper.topAnchor.constraint(equalTo: setSwitch.topAnchor, constant: 60),
            setStepper.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            setStepper.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            ]
        )
    }
}

#Preview {
    SixthViewController()
}
