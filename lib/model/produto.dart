class Produto{
  Produto({required this.nome, required this.quantidade, required this.unidade });
  
  String nome;
  int quantidade;
  double unidade;
  late double preco;

  List<Produto> mockProdutos(){
    List<Produto> produtos = [
      Produto(nome: "Fruta", quantidade: 1, unidade: 3.99),
      Produto(nome: "Pão", quantidade: 1, unidade: 2.5),
      Produto(nome: "Celular", quantidade: 1, unidade: 1100.10),
      Produto(nome: "Fogão", quantidade: 1, unidade: 2000.51),
      Produto(nome: "Carro", quantidade: 1, unidade: 35000.00),
      Produto(nome: "Miojo", quantidade: 1, unidade: 5.40),
      Produto(nome: "Cerveja", quantidade: 1, unidade: 2.9),
      Produto(nome: "Suco", quantidade: 1, unidade: 1.0),
      Produto(nome: "Teclado", quantidade: 1, unidade: 249.99),
      Produto(nome: "Televisão", quantidade: 1, unidade: 1500.00),
      Produto(nome: "Computador", quantidade: 1, unidade: 5000.11)
    ];
    return produtos;
  }
}