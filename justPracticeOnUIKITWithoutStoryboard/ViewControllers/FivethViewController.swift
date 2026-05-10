import UIKit

final class FivethViewController: UIViewController {
    
    private var variableShowElements = true
    
    private lazy var scrollView: UIScrollView = {
        let scrollview = UIScrollView()
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        return scrollview
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var showElementsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Hide or Show elements", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showElements), for: .touchUpInside)
        return button
    }()
    
    private lazy var rectangleView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.text = "Swift"
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    @objc private func showElements() {
        if variableShowElements {
            rectangleView.isHidden = true
        } else {
            rectangleView.isHidden = false
        }
        variableShowElements.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(rectangleView)
        view.addSubview(scrollView)
        view.addSubview(showElementsButton)
        view.addSubview(titleLabel)
        scrollView.addSubview(contentView)
        
        setConstraints()
    }
}

extension FivethViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
            //  MARK: - ContentView in ScrollView
            //  Устанавливаем верхний край квадрата в 1000 points от начала нашего scrollView
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 1000),
            
            //  Привязываем левый и правый края нашего ContentView к правому и левому краям ScrollView
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            
            //  Устанавливаем ширину квадрата с шириной равной нашему ScrollView
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
            
            //  Ширина нашего contentView
            contentView.heightAnchor.constraint(equalToConstant: 100),
            
            //  Устанавливаем нижний край нашего ContentView к нижнему краю ScrollView
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            //  MARK: - END OF ContentView
            
            showElementsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            showElementsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            showElementsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            titleLabel.topAnchor.constraint(equalTo: showElementsButton.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            rectangleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            rectangleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            rectangleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            rectangleView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
}

#Preview {
    FivethViewController()
}
