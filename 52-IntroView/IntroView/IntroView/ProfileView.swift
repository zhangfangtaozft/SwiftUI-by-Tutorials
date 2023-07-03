//
//  ProfileView.swift
//  IntroView
//
//  Created by 张芳涛 on 2023/7/3.
//

import SwiftUI

struct ProfileView: View {
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentuserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentuserAge ?? 0) years old")
            Text("their gender is \(currentUserGender ?? "unknown")")
            Text("SIGN OUT")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        
    }
    
    private func signOut() {
        currentUserName = nil
        currentuserAge = nil
        currentUserGender = nil
        currentUserSignedIn = false
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
