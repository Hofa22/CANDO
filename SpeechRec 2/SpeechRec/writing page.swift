//
//  writing page.swift
//  SpeechRec
//
//  Created by Hofa on 19/06/1444 AH.
//

//import SwiftUI
//
//struct writing_page: View {
//    Text("hi")
//   @State var  GoToanotherPage = false
//    
//    @State var text: String = ""
//    var body: some View {
//        ///        NavigationView{
//                    ZStack{
//                    Color("L1")
//                    .ignoresSafeArea()
//                        VStack{
//                ZStack{
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .fill(Color("L2"))
//                        .frame(width: 300, height: 10)
//        
//                        .position(x: 100, y: 100)
//                }
//                        }.padding(.leading, 70.0)
//                    ScrollView {
//        
//        //            VStack{
//        
//        //            ZStack{
//        
//        //Text("")
//        ////                        .font(.title)
//        Text("what you will say will appear here")
//        .bold()
//        .padding(.top, 20.0)
//        .multilineTextAlignment(.center)
//        Divider()
//                        ZStack{}
//        Text(text)
//        .font(.title)
//        .foregroundColor(.red)
//        .multilineTextAlignment(.center)
//        
//        }.overlay(alignment: .bottom) {
//        SpeechRecManager.RecordButton()
//        .swiftSpeechToggleRecordingOnTap(locale: .init(identifier: "ar"), animation: .default)
//        .padding()
//        .onRecognizeLatest(update: $text)
//        }
//        //.navigationBarTitle("Speak to write")
//        
//        
//        
//        
//        
//        
//        }
//        .onAppear {
//        SpeechRecManager.requestSpeechRecognitionAuthorization()
//        }
//        //}//dd
//        ///
//        }
//        
//        
//        //    }
//        }
//        
//public extension SpeechRecManager {
//struct RecordButton : View {
//
//public var body: some View {
//VStack(){
//RoundedRectangle(cornerRadius: 30.0)
//.fill(Color("L1"))
//.frame(width: 848, height: 100)
//.position(x: 398.5, y: 1110)
//    ZStack {
//backgroundColor
//.animation(.easeOut(duration: 0.2))
//.clipShape( Circle())
//.environment(\.isEnabled, $authStatus)
//.zIndex(0)
//
//Image(systemName: state != .cancelling ? "waveform" : "xmark")
//
//.font(.system(size: 30, weight: .medium, design: .default))
//.foregroundColor(.white)
//.opacity(state == .recording ? 0.8 : 1.0)
//.padding(20)
//.transition(.opacity)
//.layoutPriority(2)
//.zIndex(1)
//.scaleEffect(scale)
//.shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.2), radius: 5, x: 0, y: 3)
//    }
//    .padding(.top, 10.0)
//
//}
//}
//
//
//@Environment(\.swiftSpeechState) var state: SpeechRecManager.State
//@SpeechRecognitionAuthStatus var authStatus
//                
//public init() { }
//
//var backgroundColor: Color {
//switch state {
//case .pending:
//return .accentColor
//case .recording:
//return .red
//case .cancelling:
//return .init(white: 0.1)}}
//                
//var scale: CGFloat {
//switch state {
//case .pending:
//return 1.0
//case .recording:
//return 1.8
//case .cancelling:
//return 1.4
//}}}}
//
//
//struct writing_page_Previews: PreviewProvider {
//    static var previews: some View {
//        writing_page()
//    }
//}
