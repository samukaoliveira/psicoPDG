class CertificadoService

    def gera_certificado(palestra_id, inscricao_id)
        carrega_palestra(palestra_id)
        carrega_inscricao(inscricao_id)
        monta_certificado(@inscricao.participante, @palestra)
    end

    def monta_certificado(participante, palestra)
        return "Certificado \n\n
        Declaro que #{participante.nome} participou da palestra: \n
        <b>#{palestra.titulo}</b> realizada no dia <b>#{palestra.data}</b> \n\n
        ______________________________________________\n
        Assinatura
        ".html_safe
    end


    private

    def carrega_palestra(id)
        @palestra = Palestra.find(id) unless id.nil?
    end

    def carrega_inscricao(id)
        @inscricao = Inscricao.find(id) unless id.nil?
    end



end