class Lancamento
	include Mongoid::Document

	TIPOS = [RECEBIMENTO, SOCIAL, ALIMENTACAO, COMPRAS, MERGULHO]

  	DESC_TIPO = {
  			RECEBIMENTO		=> 'Recebimento',
  			SOCIAL         	=> 'Social',
            ALIMENTACAO     => 'Compras',
            COMPRAS         => 'Operação',
            MERGULHO 		=> 'Mergulho'    
        	}

	field :data, type:Time
	field :descricao, type:String
	field :tipo, type:String
	field :pagamento, type:String
	field :valor, type:Float


end