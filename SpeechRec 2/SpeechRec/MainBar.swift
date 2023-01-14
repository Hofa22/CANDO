//
//  MainBar.swift
//  SpeechRec
//
//  Created by Hofa on 20/06/1444 AH.
//

import SwiftUI

struct MainBar: View {
let didClose: () -> Void
var body: some View {
VStack(){
ZStack{
RoundedRectangle(cornerRadius: 30.0)
.fill(Color("L2"))
.frame(width: 714, height: 577)

            Image("Image")
                .resizable()
                .frame(width: 650, height: 465).cornerRadius(30.0)
        }
        .padding(.top,-460)
ZStack{
            RoundedRectangle(cornerRadius: 30.0)
                .fill(Color("L2"))
                .frame(width: .infinity, height: 104)
    HStack(alignment: .firstTextBaseline, spacing: 540){
        Text("Tree house in pencile")
            .font(.system(size: 26))

        Image(systemName: "mic.fill")
            .font(.system(size: 32))
            .foregroundColor(Color("ICONTEXT"))
            }
        }
.padding(.bottom,-200)
.padding(.top,200)
    }
    .frame(maxWidth: 1550, maxHeight: 1500)
    .background(back)
    .padding(.bottom,-640)
}
}

struct MainBar_Previews: PreviewProvider {
static var previews: some View {
MainBar{}
.previewInterfaceOrientation(.portraitUpsideDown)
// .padding()
//.background(Color.blue)
// .previewLayout(.sizeThatFits)
}
}

private extension MainBar{
var back: some View{
RoundedCorners1(color: Color("ForTextBackground"),
tl:20,
tr:20,
bl:0,
br:0)

}
}

// MARK: https://stackoverflow.com/questions/56760335/round-specific-corners-swiftui
struct RoundedCorners1: View {
var color: Color = .black
var tl: CGFloat = 0.0
var tr: CGFloat = 0.0
var bl: CGFloat = 0.0
var br: CGFloat = 0.0

var body: some View {
GeometryReader { geometry in
Path { path in

        let w = geometry.size.width
        let h = geometry.size.height

        // Make sure we do not exceed the size of the rectangle
        let tr = min(min(self.tr, h/2), w/2)
        let tl = min(min(self.tl, h/2), w/2)
        let bl = min(min(self.bl, h/2), w/2)
        let br = min(min(self.br, h/2), w/2)
        
        path.move(to: CGPoint(x: w / 2.0, y: 0))
        path.addLine(to: CGPoint(x: w - tr, y: 0))
        path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: w, y: h - br))
        path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: CGPoint(x: bl, y: h))
        path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        path.closeSubpath()
    }
    .fill(self.color)
}
}
}
