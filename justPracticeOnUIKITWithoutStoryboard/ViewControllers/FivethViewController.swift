import UIKit

final class FivethViewController: UIViewController {
    
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
        button.setTitle("Show elements", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.addSubview(showElementsButton)
        
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
        ])
    }
}

#Preview {
    FivethViewController()
}
