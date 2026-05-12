import UIKit

final class SixthViewController: UIViewController {
    
    private lazy var setButton: UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(setButton)
        setConstraints()
    }
}

extension SixthViewController {
    func setConstraints() {
        NSLayoutConstraint.activate(
            [
            setButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            setButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 60),
            setButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -60),
            ]
        )
    }
}

#Preview {
    SixthViewController()
}
