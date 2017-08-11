class Lancamento
	include Mongoid::Document

	RECEBIMENTO		= 'Recebimento'
	SOCIAL         	= 'Social'
    ALIMENTACAO     = 'Compras'
    COMPRAS         = 'Operação'
    MERGULHO 		= 'Mergulho'   

	TIPOS = [RECEBIMENTO, SOCIAL, ALIMENTACAO, COMPRAS, MERGULHO]


	field :data, type:Time
	field :descricao, type:String
	field :tipo, type:String
	field :pagamento, type:String
	field :valor, type:Float


end