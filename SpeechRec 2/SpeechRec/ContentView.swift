//
//  ContentView.swift
//  SpeechRec
//
//  Created by AA on 11/5/22.
//

import SwiftUI


// not: this project is not compltetd,it  still need work, we did only implemented one main feature, and definitly we will work on it in the future.

struct ContentView: View {
    @State var  GoToanotherPage = false
    @State var text: String = ""
    var body: some View {
        //TabView{
        ////write the view you want to go to
        //main_page()
        //.tabItem{
        //
        //Label("progect", systemImage: "doc.text.image")
        //}
        //
        //writing_page()
        //.tabItem{
        //Label("voice", systemImage: "mic.fill")
        //}
        //
        //AI_page()
        //.tabItem{
        //Label("Cando", systemImage: "pencil")
        //}
        //}
        //
        //
        //NavigationView{
ScrollView {
VStack{
ZStack{
Color("L1")
.ignoresSafeArea()

ZStack{
RoundedRectangle(cornerRadius: 30.0)
.fill(Color("L2"))
.frame(width: 850, height: 90)
.position(x: 415, y: 20)
Text("Write Your Script")
.font(.largeTitle).bold()
.padding(.bottom, 1500.0)
//Text("what you will say will appear here")
//.padding(.top, 20.0)
.multilineTextAlignment(.center)
Divider()
}
                    
                    
                    //RoundedRectangle(cornerRadius: 30.0)
                    //.fill(Color(.red))
                    //.frame(width: 770, height: 1400)
                    //.position(x: 415, y: 800)
                    
                    //HStack{
RoundedRectangle(cornerRadius: 30.0)
.fill(Color("ForTextBackground"))
.frame(width: 740, height: 1400)
.position(x: 420, y: 830)
                    
                    //VStack{
                    //Image("tree")
                    //.resizable()
                    //.frame(width:350 ,height:350).cornerRadius(30.0)
                    //.position(x: 185, y: 310)
                    //
                    //RoundedRectangle(cornerRadius: 30.0)
                    //.fill(Color("ForTextBackground"))
                    //.frame(width: 360, height: 1210)
                    //.position(x: 189, y: 550)
                    //}}
                    
                    //Text("Write Your Script")
                    //.font(.largeTitle).bold()
                    //.padding(.bottom , 1100.0)
                    ////Text("what you will say will appear here")
                    ////.padding(.top, 20.0)
                    //.multilineTextAlignment(.center)
                    //Divider()
                    
                    //RoundedRectangle(cornerRadius: 30.0)
                    //.fill(Color("L2"))
                    //.frame(width: 850, height: 90)
                    //.position(x: 415, y: 1125)
                    
                    
                    ////fished other pad
Text(text)
.font(.title)
.foregroundColor(.red)
.multilineTextAlignment(.center)
}
.overlay(alignment: .bottom) {
SpeechRecManager.RecordButton()
.swiftSpeechToggleRecordingOnTap(locale: .init(identifier: "ar"), animation: .default)
.padding()
.onRecognizeLatest(update: $text)
}
            //.navigationBarTitle("Speak to write")
}
//}//dd
}//end scroll
.onAppear {
SpeechRecManager.requestSpeechRecognitionAuthorization()
//}
//}}

}
}}

public extension SpeechRecManager {
    struct RecordButton : View {
        
        public var body: some View {
//            VStack(){
                //HStack{
                //RoundedRectangle(cornerRadius: 30.0)
                //.fill(Color("ForTextBackground"))
                //.frame(width: 350, height: 1400)
                //.position(x: 230, y: 830)
                //VStack{
                //Image("tree2")
                //    .resizable()
                //    .frame(width:350 ,height:350).cornerRadius(30.0)
                //    .position(x: 185, y: 310)
                //
                //RoundedRectangle(cornerRadius: 30.0)
                //    .fill(Color("ForTextBackground"))
                //    .frame(width: 360, height: 1210)
                //    .position(x: 189, y: 550)
                //}}
                
                //RoundedRectangle(cornerRadius: 30.0)
                //.fill(Color(.red))
                //.frame(width: 875, height: 90)
                //.position(x: 398.5, y: 1110)
//TabView{
//NavigationView{
HStack(spacing: 60){
ZStack {
backgroundColor
.animation(.easeOut(duration: 0.2))
.clipShape( Circle())
.environment(\.isEnabled, $authStatus)
.zIndex(0)

Image(systemName: state != .cancelling ? "waveform" : "xmark")
.font(.system(size: 30, weight: .medium, design: .default))
.foregroundColor(.white)
.opacity(state == .recording ? 0.8 : 1.0)
.padding(20)
.transition(.opacity)
.layoutPriority(2)
.zIndex(1)
.scaleEffect(scale)
.shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.2), radius: 5, x: 0, y: 3)
}}.foregroundColor(Color("ICONTEXT"))
//}
            
        //}
}
@Environment(\.swiftSpeechState) var state: SpeechRecManager.State
@SpeechRecognitionAuthStatus var authStatus

    
    
public init() { }

var backgroundColor: Color {
switch state {
case .pending:
    return .accentColor
case .recording:
    return .red
case .cancelling:
    return .init(white: 0.1)
}}

var scale: CGFloat {
switch state {
case .pending:
    return 1.0
case .recording:
    return 1.8
case .cancelling:
    return 1.4
}}}}






struct ContentView_Previews: PreviewProvider {
static var previews: some View {
ContentView()
}
}

