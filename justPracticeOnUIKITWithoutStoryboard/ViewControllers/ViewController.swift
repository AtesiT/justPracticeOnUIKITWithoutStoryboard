import UIKit

final class ViewController: UIViewController {

    private lazy var changeTheme: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Change theme", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(toChangeTheme), for: .touchUpInside)
        return button
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl()
        segmentedControl.insertSegment(withTitle: "First Segment", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "Second Segment", at: 1, animated: false)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    private lazy var secondVCButton: UIButton = {
        let secondVCButton = UIButton()
        secondVCButton.backgroundColor = .red
        secondVCButton.setTitle("Second View Controller", for: .normal)
        secondVCButton.layer.cornerRadius = 15
        secondVCButton.addTarget(self, action: #selector(goToSecondVC), for: .touchUpInside)
        secondVCButton.translatesAutoresizingMaskIntoConstraints = false
        return secondVCButton
    }()
    
    private lazy var thirdVCButton: UIButton = {
        let thirdVCButton = UIButton()
        thirdVCButton.backgroundColor = .orange
        thirdVCButton.setTitle("Third View Controller", for: .normal)
        thirdVCButton.layer.cornerRadius = 15
        thirdVCButton.addTarget(self, action: #selector(goToThirdVC), for: .touchUpInside)
        thirdVCButton.translatesAutoresizingMaskIntoConstraints = false
        return thirdVCButton
    }()
    
    private lazy var theView: UIView = {
        let theView = UIView()
        theView.backgroundColor = .cyan
        theView.layer.cornerRadius = 35
        theView.translatesAutoresizingMaskIntoConstraints = false
        return theView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setSubViews(subView: changeTheme, titleLabel, segmentedControl, secondVCButton, thirdVCButton, theView)
        setupConstraints()
    }

    private func setSubViews(subView: UIView...) {
        subView.forEach { theView in
            view.addSubview(theView)
        }
    }
    
    @objc private func goToSecondVC() {
        let secondVC = SecondViewController()
        present(secondVC, animated: true, completion: nil)
    }
    
    @objc private func goToThirdVC() {
        let thirdVC = ThirdViewController()
        present(thirdVC, animated: true, completion: nil)
    }
    
    @objc private func toChangeTheme() {
        if view.backgroundColor == .white {
            view.backgroundColor = .black
        } else {
            view.backgroundColor = .white
        }
    }
}

extension ViewController {
    func setupConstraints() {
        NSLayoutConstraint.activate([
            changeTheme.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            changeTheme.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            changeTheme.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            titleLabel.topAnchor.constraint(equalTo: changeTheme.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            segmentedControl.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 50),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            secondVCButton.topAnchor.constraint(equalTo: segmentedControl.topAnchor, constant: 50),
            secondVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondVCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            thirdVCButton.topAnchor.constraint(equalTo: secondVCButton.topAnchor, constant: 50),
            thirdVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            thirdVCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            theView.topAnchor.constraint(equalTo: thirdVCButton.topAnchor, constant: 50),
            theView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            theView.bottomAnchor.constraint(equalTo: theView.topAnchor, constant: 80),
        ])
    }
}

#Preview {
    ViewController()
}
