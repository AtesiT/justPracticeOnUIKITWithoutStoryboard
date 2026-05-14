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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(setButton)
        view.addSubview(setLabel)
        view.addSubview(setTextField)
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
            ]
        )
    }
}

#Preview {
    SixthViewController()
}
