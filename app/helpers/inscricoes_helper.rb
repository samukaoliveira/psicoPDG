module InscricoesHelper

    def pagou?(inscrito)
        return "<spam class='text-success'>Pago<spam>".html_safe if inscrito.pago?
        "<spam class='text-danger'>Não<spam>".html_safe
    end

    def formata_valor(valor)
        number_to_currency(valor)
    end
end
