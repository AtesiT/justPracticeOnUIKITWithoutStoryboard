import UIKit

final class ViewController: UIViewController {

    private lazy var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setSubViews(subView: saveButton, titleLabel, segmentedControl, secondVCButton)
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
}

extension ViewController {
    func setupConstraints() {
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            titleLabel.topAnchor.constraint(equalTo: saveButton.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            segmentedControl.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 50),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            secondVCButton.topAnchor.constraint(equalTo: segmentedControl.topAnchor, constant: 50),
            secondVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondVCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

#Preview {
    ViewController()
}
