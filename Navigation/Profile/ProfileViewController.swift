
import UIKit

class ProfileViewController: UIViewController {
    
    let mainView = ProfileHeaderView()

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        mainView.frame = view.frame

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        mainView.addSubview(mainView.statusView)
        mainView.addSubview(mainView.avaView)
        mainView.addSubview(mainView.nameView)
        mainView.addSubview(mainView.buttonView)
        view.addSubview(mainView)
        
        
        
        NSLayoutConstraint.activate([
            mainView.avaView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            mainView.avaView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            mainView.avaView.widthAnchor.constraint(equalToConstant: 120),
            mainView.avaView.heightAnchor.constraint(equalTo: mainView.avaView.widthAnchor),
            
            mainView.nameView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 27),
            mainView.nameView.leadingAnchor.constraint(equalTo: mainView.avaView.trailingAnchor, constant: 16),
            mainView.nameView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            mainView.nameView.heightAnchor.constraint(equalToConstant: 18),
            
            mainView.buttonView.topAnchor.constraint(equalTo: mainView.avaView.bottomAnchor, constant: 16),
            mainView.buttonView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            mainView.buttonView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            mainView.buttonView.heightAnchor.constraint(equalToConstant: 50),
            
            mainView.statusView.bottomAnchor.constraint(equalTo: mainView.buttonView.topAnchor, constant: -34),
            mainView.statusView.leadingAnchor.constraint(equalTo: mainView.avaView.trailingAnchor, constant: 16),
            mainView.statusView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            mainView.statusView.heightAnchor.constraint(equalToConstant: 14)
         ])
    
    }
    
}

