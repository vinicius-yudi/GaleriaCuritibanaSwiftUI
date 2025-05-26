import SwiftUI

struct ObraCardView: View {
    let obra: ObraDeArte

    var body: some View {
        VStack {
            Image(obra.imagemNome)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(obra.titulo)
                .font(.headline)
                .multilineTextAlignment(.center)
            
            Text(obra.artista)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
