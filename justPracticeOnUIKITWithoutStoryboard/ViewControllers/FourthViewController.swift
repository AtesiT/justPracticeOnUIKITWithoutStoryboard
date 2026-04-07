import UIKit

final class FourthViewController: UIViewController {
    
    private lazy var greenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private lazy var redButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private lazy var blueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews(theView: greenButton, redButton, blueButton)
        makeConstraints()
    }
    
    private func setSubviews(theView: UIView...) {
        theView.forEach { everyView in
            view.addSubview(everyView)
        }
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
                
                blueButton.topAnchor.constraint(equalTo: redButton.topAnchor, constant: 60),
                blueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                blueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            ]
        )
    }
}

#Preview {
    FourthViewController()
}
