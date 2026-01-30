import UIKit

final class ThirdViewController: UIViewController {
    
    private lazy var theView: UIView = {
        let theView = UIView()
        theView.backgroundColor = .green
        theView.translatesAutoresizingMaskIntoConstraints = false
        return theView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(theView)
        setupConstraints()
    }
}

extension ThirdViewController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            theView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            theView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            theView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 40)
            ])
    }
}

#Preview {
    ThirdViewController()
}
