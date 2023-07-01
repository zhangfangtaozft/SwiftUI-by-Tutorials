//
//  ContentView.swift
//  ModelBootcamp
//
//  Created by 张芳涛 on 2023/7/2.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ContentView: View {
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "Samantha2002", followerCount: 88,isVerified: false),
        UserModel(displayName: "Chris", userName: "chrish2009", followerCount: 190, isVerified: true)
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                            
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
