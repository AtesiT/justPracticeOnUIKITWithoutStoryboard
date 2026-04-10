import UIKit

final class FourthViewController: UIViewController {
    
    private var countClickedGreenButton = 0
    private var countClickedRedButton = 0
    private var countClickedBlueButton = 0
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews(theView: greenButton, redButton, blueButton, generalCountButton)
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
    }
    
    @objc private func madeRedButtonClick() {
        countClickedRedButton += 1
        print(countClickedRedButton)
    }
    
    @objc private func madeBlueButtonClick() {
        countClickedBlueButton += 1
        print(countClickedBlueButton)
    }
    
    @objc private func generalCountClicked() {
        print("General clicks: \(countClickedRedButton + countClickedBlueButton + countClickedGreenButton). \n Clicks on green button: \(countClickedGreenButton),\n Clicks on red button: \(countClickedRedButton), \n Clicks on blue button: \(countClickedBlueButton).")
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
            ]
        )
    }
}

#Preview {
    FourthViewController()
}
