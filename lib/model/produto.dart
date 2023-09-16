class Produto{
  Produto({required this.nome, required this.quantidade, required this.unidade });
  
  String nome;
  int quantidade;
  double unidade;
  late double preco;

  List<Produto> mockProdutos(){
    List<Produto> produtos = [];
    produtos.add(Produto(nome: "Fruta", quantidade: 1, unidade: 3.99));
    produtos.add(Produto(nome: "Pão", quantidade: 1, unidade: 2.5));
    produtos.add(Produto(nome: "Celular", quantidade: 1, unidade: 1100.10));
    produtos.add(Produto(nome: "Fogão", quantidade: 1, unidade: 2000.51));
    produtos.add(Produto(nome: "Carro", quantidade: 1, unidade: 35000.00));
    produtos.add(Produto(nome: "Miojo", quantidade: 1, unidade: 5.40));
    produtos.add(Produto(nome: "Cerveja", quantidade: 1, unidade: 2.9));
    produtos.add(Produto(nome: "Suco", quantidade: 1, unidade: 1));
    produtos.add(Produto(nome: "Teclado", quantidade: 1, unidade: 249.99));
    produtos.add(Produto(nome: "Televisão", quantidade: 1, unidade: 1500));
    produtos.add(Produto(nome: "Computador", quantidade: 1, unidade: 5000.11));
    return produtos;
  }
}