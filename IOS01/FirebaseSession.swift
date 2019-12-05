import SwiftUI
import Firebase
import FirebaseAuth

class FirebaseSession: ObservableObject {
    
    //MARK: Properties
    @Published var session: User?
    @Published var isLoggedIn: Bool?
    //@Published var items: [TODOS] = []

    //var ref: DatabaseReference = Database.database().reference(withPath: "\(String(describing: Auth.auth().currentUser?.uid ?? "Error"))")
    
    //MARK: Functions
    
    
    func logIn(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    
    func logOut() {
            try! Auth.auth().signOut()
            self.isLoggedIn = false
            self.session = nil

    }
    
    func signUp(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().createUser(withEmail: email, password: password, completion: handler)
    }
    
}
