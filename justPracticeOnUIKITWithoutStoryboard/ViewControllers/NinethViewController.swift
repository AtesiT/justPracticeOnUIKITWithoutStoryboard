import UIKit

final class NinethViewController: UIViewController {
        
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap on me", for: .normal)
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        setConstraints()
    }
}

extension NinethViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            button.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}

#Preview {
    NinethViewController()
}
