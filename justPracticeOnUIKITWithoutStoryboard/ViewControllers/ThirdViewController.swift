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
    
    private lazy var theSwitch: UISwitch = {
        let theSwitch = UISwitch()
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        theSwitch.onTintColor = .systemGreen
        theSwitch.isOn = true
        return theSwitch
    }()
    
    private lazy var theProgressBar: UIProgressView = {
        let progressBar = UIProgressView(progressViewStyle: .default)
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        progressBar.tintColor = .systemGreen
        progressBar.trackTintColor = .systemRed
        
        return progressBar
    }()
    
    private lazy var theToolbar: UIToolbar = {
        let toolbar = UIToolbar()
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        
        //  Добавление элементов
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let action = UIBarButtonItem(title: "Тест", style: .plain, target: self, action: #selector(didTapButton))
        
        toolbar.setItems([space, action, space], animated: false)
        
        return toolbar
    }()
    
    private lazy var theLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Текст"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var theSegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["First", "Second"])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    private lazy var theButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Кнопка", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    private lazy var theActivityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.isHidden = false
        return activityIndicator
    }()
    
    private lazy var theStepper: UIStepper = {
        let stepper = UIStepper()
        stepper.translatesAutoresizingMaskIntoConstraints = false
        return stepper
    }()
    
    private lazy var theTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Type text..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var theSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search..."
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private lazy var theImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .systemPink
        imageView.backgroundColor = .white
        imageView.frame = .init(x: 20, y: 700, width: 75, height: 50)
        imageView.image = UIImage(systemName: "heart.fill")
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private func setViews(theView: UIView...) {
        theView.forEach { element in
            view.addSubview(element)
        }
    }
    
    @objc private func didTapButton() {
        print("Test")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews(theView: theView, theSlider, theSwitch, theProgressBar, theToolbar, theLabel, theSegmentedControl, theButton, theActivityIndicator, theStepper, theTextField, theSearchBar, theImageView)
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
            
            theSwitch.topAnchor.constraint(equalTo: theSlider.topAnchor, constant: 60),
            theSwitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            theProgressBar.topAnchor.constraint(equalTo: theSwitch.topAnchor, constant: 60),
            theProgressBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theProgressBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            theToolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            theToolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            theToolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            theLabel.topAnchor.constraint(equalTo: theProgressBar.topAnchor, constant: 60),
            theLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            theSegmentedControl.topAnchor.constraint(equalTo: theLabel.topAnchor, constant: 60),
            theSegmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theSegmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            theButton.topAnchor.constraint(equalTo: theSegmentedControl.topAnchor, constant: 60),
            theButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            theButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            theActivityIndicator.topAnchor.constraint(equalTo: theButton.topAnchor, constant: 60),
            theActivityIndicator.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            theActivityIndicator.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            theStepper.topAnchor.constraint(equalTo: theActivityIndicator.topAnchor, constant: 60),
            theStepper.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theStepper.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            
            theTextField.topAnchor.constraint(equalTo: theStepper.topAnchor, constant: 60),
            theTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            
            theSearchBar.topAnchor.constraint(equalTo: theTextField.topAnchor, constant: 60),
            theSearchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theSearchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            
            theImageView.topAnchor.constraint(equalTo: theSearchBar.topAnchor, constant: 60),
            theImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            theImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            
            ])

    }
}

#Preview {
    ThirdViewController()
}
