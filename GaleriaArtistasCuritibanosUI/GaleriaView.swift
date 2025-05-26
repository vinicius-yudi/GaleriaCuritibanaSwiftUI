import SwiftUI

struct GaleriaView: View {
    let colunas = [GridItem(.adaptive(minimum: 150))]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colunas, spacing: 20) {
                    ForEach(obras) { obra in
                        NavigationLink(destination: DetalhesObraView(obra: obra)) {
                            ObraCardView(obra: obra)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Galeria de Artistas Curitibanos")
        }
    }
}
