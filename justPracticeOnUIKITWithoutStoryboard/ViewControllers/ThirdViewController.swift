import UIKit

final class ThirdViewController: UIViewController {
    
    private lazy var theView: UIView = {
        let theView = UIView()
        theView.backgroundColor = .green
        theView.translatesAutoresizingMaskIntoConstraints = false
        return theView
    }()
    
    private lazy var theSlider: UISlider = {
        let theSlider = UISlider()
        theSlider.translatesAutoresizingMaskIntoConstraints = false
        return theSlider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(theView)
        view.addSubview(theSlider)
        setupConstraints()
    }
}

extension ThirdViewController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            theView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            theView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            theView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            
            theSlider.topAnchor.constraint(equalTo: theView.topAnchor, constant: 40),
            theSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            ])
    }
}

#Preview {
    ThirdViewController()
}
