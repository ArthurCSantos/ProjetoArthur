class Lancamento
	include Mongoid::Document

	field :data, type:Time
	field :descricao, type:String
	field :tipo, type:String
	field :pagamento, type:String
	field :valor, type:Float
	field :mes, type:String
	field :ano, type:String

	RECEBIMENTO		= 'Recebimento'
	SOCIAL         	= 'Social'
    ALIMENTACAO     = 'Alimentação'
    COMPRAS         = 'Compras'
    MERGULHO 		= 'Mergulho'
    COMBUSTIVEL		= 'Combustível'

    CREDITO_MASTER = 'NuBank (Crédito)'
    CREDITO_AMEX   = 'AmEx (Crédito)'
    DEBITO         = 'Itaú (Débito)'  
    SAQUE          = 'Saque'


	TIPOS = [RECEBIMENTO, SOCIAL, ALIMENTACAO, COMPRAS, MERGULHO, COMBUSTIVEL]
	FORMAS_PAGAMENTO = [CREDITO_MASTER, CREDITO_AMEX, DEBITO, SAQUE]
	MESES = {'Janeiro'=>'1',
			 'Fevereiro'=>'2',
			 'Março'=>'3',
			 'Abril'=>'4',
			 'Maio'=>'5',
			 'Junho'=>'6',
			 'Julho'=>'7',
			 'Agosto'=>'8',
			 'Setembro'=>'9',
			 'Outubro'=>'10',
			 'Novembro'=>'11',
			 'Dezembro'=>'12',
			}
	ANOS = ['2017', '2018', '2019', '2020']


	scope :recebimentos, ->() {self.or(:tipo => RECEBIMENTO)}
	scope :gastos, ->() {self.ne(:tipo => RECEBIMENTO)}

end