import UIKit

final class FourthViewController: UIViewController {
    
    private lazy var greenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.green, for: .normal)
        return button
    }()
    
    private lazy var redButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(greenButton)
        view.addSubview(redButton)
        makeConstraints()
    }
}

extension FourthViewController {
    func makeConstraints() {
        NSLayoutConstraint.activate(
            [
                greenButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
                greenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                greenButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                redButton.topAnchor.constraint(equalTo: greenButton.topAnchor, constant: 60),
                redButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                redButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            ]
        )
    }
}

#Preview {
    FourthViewController()
}
