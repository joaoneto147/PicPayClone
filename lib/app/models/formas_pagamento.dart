enum BandeirasCartao { visa, master, elo }

class FormasPagamento {
  String nome;
  int finalCartao;
  BandeirasCartao bandeira;

  FormasPagamento({this.nome, this.finalCartao, this.bandeira});

  static String getImage(BandeirasCartao bandeira) {
    switch (bandeira) {
      case BandeirasCartao.visa:
        return 'assets/images/visa.png';
        break;
      case BandeirasCartao.master:
        return 'assets/images/master.png';
        break;
      case BandeirasCartao.elo:
        return 'assets/images/elo.png';
        break;
      default:
        return 'assets/images/master.png';
        break;
    }
  }

  static String getNomeBandeira(BandeirasCartao bandeira) {
    switch (bandeira) {
      case BandeirasCartao.visa:
        return 'Visa';
        break;
      case BandeirasCartao.master:
        return 'Master';
        break;
      case BandeirasCartao.elo:
        return 'Elo';
        break;
      default:
        return 'Master';
        break;
    }
  }
}
