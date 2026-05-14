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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(setButton)
        view.addSubview(setLabel)
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
            ]
        )
    }
}

#Preview {
    SixthViewController()
}
