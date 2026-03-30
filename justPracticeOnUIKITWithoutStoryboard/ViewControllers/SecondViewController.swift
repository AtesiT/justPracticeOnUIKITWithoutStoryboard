import UIKit

final class SecondViewController: UIViewController {
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.text = "Test"
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private lazy var textView: UITextView = {
        let textView = UITextView()
        textView.text = "Test"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textField)
        view.addSubview(textView)
        setConstraints()
    }
}

private extension SecondViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            textView.topAnchor.constraint(equalTo: textField.topAnchor, constant: 50),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}

#Preview {
    SecondViewController()
}
