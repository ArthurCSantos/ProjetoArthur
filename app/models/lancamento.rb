class Lancamento
	include Mongoid::Document

	field :data, type:Time
	field :descricao, type:String
	field :tipo, type:String
	field :pagamento, type:String
	field :valor, type:Float

	RECEBIMENTO		= 'Recebimento'
	SOCIAL         	= 'Social'
    ALIMENTACAO     = 'Compras'
    COMPRAS         = 'Compras'
    MERGULHO 		= 'Mergulho'

    CREDITO_MASTER = 'NuBank (Crédito)'
    CREDITO_AMEX   = 'AmEx (Crédito)'
    DEBITO         = 'Itau (Débito)'  
    DINEHIRO       = 'Dinheiro' 

	TIPOS = [RECEBIMENTO, SOCIAL, ALIMENTACAO, COMPRAS, MERGULHO]
	FORMAS_PAGAMENTO = [CREDITO_MASTER, CREDITO_AMEX, DEBITO, DINEHIRO]

	scope :recebimentos, ->() {self.or(:tipo => RECEBIMENTO)}
	scope :gastos, ->() {self.ne(:tipo => RECEBIMENTO)}

end