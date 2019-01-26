import javax.servlet.http.HttpServletResponse
import grails.converters.*
class PesquisasatisfacaoController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Pesquisasatisfacao.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Pesquisasatisfacao.findById(params.id)){
			arrObjJson.add(Pesquisasatisfacao.findById(params.id))
			render arrObjJson as JSON}
			if(!Pesquisasatisfacao.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Pesquisasatisfacao nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Pesquisasatisfacao.findById(request.JSON.id)){
		Pesquisasatisfacao.get(request.JSON.id)?.delete()
		render "Pesquisasatisfacao Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Pesquisasatisfacao c = Pesquisasatisfacao.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Pesquisasatisfacao Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def pesquisasatisfacao = new Pesquisasatisfacao(request.JSON)
		if(pesquisasatisfacao.save()){
			render "Pesquisasatisfacao Id:${pesquisasatisfacao.id} - Salvo com sucesso!" 
		}else{render "Erro: Pesquisasatisfacao nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ pesquisasatisfacaoList: Pesquisasatisfacao.list( params ) ]
    }

    def show = {
        def pesquisasatisfacao = Pesquisasatisfacao.get( params.id )

        if(!pesquisasatisfacao) {
            flash.message = "Pesquisasatisfacao não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ pesquisasatisfacao : pesquisasatisfacao ] }
    }

    def delete = {
        def pesquisasatisfacao = Pesquisasatisfacao.get( params.id )
        if(pesquisasatisfacao) {
            pesquisasatisfacao.delete()
            flash.message = "Pesquisasatisfacao ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Pesquisasatisfacao não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def pesquisasatisfacao = Pesquisasatisfacao.get( params.id )

        if(!pesquisasatisfacao) {
            flash.message = "Pesquisasatisfacao não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ pesquisasatisfacao : pesquisasatisfacao ]
        }
    }

    def update = {
        def pesquisasatisfacao = Pesquisasatisfacao.get( params.id )
        if(pesquisasatisfacao) {
            pesquisasatisfacao.properties = params
            if(!pesquisasatisfacao.hasErrors() && pesquisasatisfacao.save()) {
                flash.message = "Pesquisasatisfacao ${params.id} Editado com sucesso!"
                redirect(action:show,id:pesquisasatisfacao.id)
            }
            else {
                render(view:'edit',model:[pesquisasatisfacao:pesquisasatisfacao])
            }
        }
        else {
            flash.message = "Pesquisasatisfacao não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def pesquisasatisfacao = new Pesquisasatisfacao()
        pesquisasatisfacao.properties = params
        return ['pesquisasatisfacao':pesquisasatisfacao]
    }

    def save = {
        def pesquisasatisfacao = new Pesquisasatisfacao(params)
        if(!pesquisasatisfacao.hasErrors() && pesquisasatisfacao.save()) {
            flash.message = "Pesquisasatisfacao ${pesquisasatisfacao.id} cadastrado"
            redirect(action:show,id:pesquisasatisfacao.id)
        }
        else {
            render(view:'create',model:[pesquisasatisfacao:pesquisasatisfacao])
        }
    }
}
