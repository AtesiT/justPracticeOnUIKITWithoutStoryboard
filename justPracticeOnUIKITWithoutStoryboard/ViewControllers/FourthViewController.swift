import UIKit

final class FourthViewController: UIViewController {
    
    private var countClickedGreenButton = 0 {
        didSet { updCountLabel() }
    }
    private var countClickedRedButton = 0 {
        didSet { updCountLabel() }
    }
    private var countClickedBlueButton = 0 {
        didSet { updCountLabel() }
    }
    
    private var generalCountClickedButtons = "0"
    
    private lazy var greenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(madeGreenButtonClick), for: .touchUpInside)
        return button
    }()
    
    private lazy var redButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(madeRedButtonClick), for: .touchUpInside)
        return button
    }()
    
    private lazy var blueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(madeBlueButtonClick), for: .touchUpInside)
        return button
    }()
    
    private lazy var generalCountButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Check count", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(generalCountClicked), for: .touchUpInside)
        return button
    }()
    
    private lazy var countLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["White background", "Black background"])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(segmentedChanged), for: .valueChanged)
        return segmentedControl
    }()
    
    private lazy var yellowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var pinkButton: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .systemPink
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var grayButton: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .gray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var brownButton: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .brown
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonsLabel: UILabel = {
        let label = UILabel()
        label.text = "Label of buttons"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews(theView: greenButton, redButton, blueButton, generalCountButton, countLabel, segmentedControl, yellowButton, pinkButton, grayButton, brownButton, buttonsLabel)
        makeConstraints()
    }
    
    private func setSubviews(theView: UIView...) {
        theView.forEach { everyView in
            view.addSubview(everyView)
        }
    }
    
    @objc private func madeGreenButtonClick() {
        countClickedGreenButton += 1
        print(countClickedGreenButton)
        hideRedBlueButtons()
    }
    
    @objc private func madeRedButtonClick() {
        countClickedRedButton += 1
        print(countClickedRedButton)
        showAlert()
    }
    
    @objc private func madeBlueButtonClick() {
        countClickedBlueButton += 1
        print(countClickedBlueButton)
        changeColors()
    }
    
    @objc private func generalCountClicked() {
        let generalCounts = countClickedRedButton + countClickedBlueButton + countClickedGreenButton
        print("General clicks: \(generalCounts). \n Clicks on green button: \(countClickedGreenButton),\n Clicks on red button: \(countClickedRedButton), \n Clicks on blue button: \(countClickedBlueButton).")
        if generalCounts >= 5 {
            view.backgroundColor = .black
        }
    }
    
    @objc private func segmentedChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
    
    private func hideRedBlueButtons() {
        redButton.isHidden.toggle()
        blueButton.isHidden.toggle()
        
        if countClickedGreenButton >= 10 && countClickedGreenButton <= 15 {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .systemBackground
        }
    }
    
    private func showAlert() {
        let alert = UIAlertController(
            title: "Alert",
            message: "You have \(countClickedRedButton) clicks",
            preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    private func changeColors() {
        let standart = CGFloat(0/255)
        let variableToChangeGreenColor = 255 - countClickedGreenButton * 5
        let variableToChangeRedColor = 255 - countClickedRedButton * 5
        let variableToChangeBlueColor = 255 - countClickedBlueButton * 5
        
        greenButton.backgroundColor = UIColor(red: standart, green: CGFloat(variableToChangeGreenColor) / 255, blue: standart, alpha: 1.0)
        redButton.backgroundColor = UIColor(red: CGFloat(variableToChangeRedColor) / 255, green: standart, blue: standart, alpha: 1.0)
        blueButton.backgroundColor = UIColor(red: standart, green: standart, blue: CGFloat(variableToChangeBlueColor) / 255, alpha: 1.0)
    }
    
    private func updCountLabel() {
        generalCountClickedButtons = "\(countClickedGreenButton + countClickedRedButton + countClickedBlueButton)"
        countLabel.text = generalCountClickedButtons
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
                
                generalCountButton.topAnchor.constraint(equalTo: blueButton.topAnchor, constant: 60),
                generalCountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                generalCountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                countLabel.topAnchor.constraint(equalTo: generalCountButton.topAnchor, constant: 60),
                countLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                countLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                segmentedControl.topAnchor.constraint(equalTo: countLabel.topAnchor, constant: 60),
                segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                yellowButton.topAnchor.constraint(equalTo: segmentedControl.topAnchor, constant: 60),
                yellowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                yellowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                pinkButton.topAnchor.constraint(equalTo: yellowButton.topAnchor, constant: 60),
                pinkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                pinkButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                grayButton.topAnchor.constraint(equalTo: pinkButton.topAnchor, constant: 60),
                grayButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                grayButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                brownButton.topAnchor.constraint(equalTo: grayButton.topAnchor, constant: 60),
                brownButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                brownButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
                
                buttonsLabel.topAnchor.constraint(equalTo: brownButton.topAnchor, constant: 60),
                buttonsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
                buttonsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            ]
        )
    }
}

#Preview {
    FourthViewController()
}
