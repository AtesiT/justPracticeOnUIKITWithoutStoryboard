import UIKit

final class EighthViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let secondButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Second Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Label"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondlabel: UILabel = {
        let label = UILabel()
        label.text = "SecondLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let thirdlabel: UILabel = {
        let label = UILabel()
        label.text = "ThirdLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let fourthlabel: UILabel = {
        let label = UILabel()
        label.text = "FourthLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let fivethlabel: UILabel = {
        let label = UILabel()
        label.text = "FivethLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let sixthlabel: UILabel = {
        let label = UILabel()
        label.text = "SixthLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let seventhlabel: UILabel = {
        let label = UILabel()
        label.text = "SeventhLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let eighthlabel: UILabel = {
        let label = UILabel()
        label.text = "EigthLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        view.addSubview(contentView)
        contentView.addSubview(button)
        contentView.addSubview(secondButton)
        contentView.addSubview(label)
        contentView.addSubview(secondlabel)
        contentView.addSubview(thirdlabel)
        contentView.addSubview(fourthlabel)
        contentView.addSubview(fivethlabel)
        contentView.addSubview(sixthlabel)
        contentView.addSubview(seventhlabel)
        contentView.addSubview(eighthlabel)
        setConstraints()
    }
}

#Preview {
    EighthViewController()
}

extension EighthViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
        ])
    }
}
