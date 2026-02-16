import SwiftUI

struct ButtonBasic: View {
    var body: some View {
        VStack{
            Button("Tap Me") {
                print("Button tapped")
            }
            
            Button(action: {
                print("Pressed")
            }) {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Like")
                }
            }
            
            Button("Continue") {
                print("Next")
            }
            .buttonStyle(.bordered)

            Button("Delete") {
                print("Delete")
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
            Button("Submit") {
                print("Submit")
            }
            .disabled(true)



        }
       

    }
}

