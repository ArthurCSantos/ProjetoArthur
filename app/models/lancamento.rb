class Lancamento
	include Mongoid::Document

  	TIPOS = ['Recebimento', 'Social', 'Alimentação', 'Compras', 'Mergulho']     
		

	field :data, type:Time
	field :descricao, type:String
	field :tipo, type:String
	field :pagamento, type:String
	field :valor, type:Float


end
