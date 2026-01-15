import UIKit

final class SecondViewController: UIViewController {
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.text = "Test"
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textField)
        setConstraints()
    }
}

private extension SecondViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

#Preview {
    SecondViewController()
}
