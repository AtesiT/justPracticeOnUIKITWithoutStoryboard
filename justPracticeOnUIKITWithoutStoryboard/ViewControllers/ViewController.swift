import UIKit

final class ViewController: UIViewController {

    private lazy var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(saveButton)
        setupConstraints()
    }


}

extension ViewController {
    func setupConstraints() {
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

#Preview {
    ViewController()
}
