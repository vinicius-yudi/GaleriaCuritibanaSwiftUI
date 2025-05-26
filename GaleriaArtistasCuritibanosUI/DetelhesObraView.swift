import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Image(obra.imagemNome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .padding()

                Text(obra.titulo)
                    .font(.title)
                    .bold()

                Text("Por \(String(obra.artista))")
                    .font(.title3)
                    .foregroundColor(.secondary)

                Text("Ano: \(obra.ano)")
                Text("Estilo: \(obra.estilo)")

                Text(obra.descricao)
                    .padding()
            }
            .navigationTitle(obra.titulo)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
