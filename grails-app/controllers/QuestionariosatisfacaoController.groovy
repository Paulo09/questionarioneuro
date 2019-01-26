import javax.servlet.http.HttpServletResponse
import grails.converters.*
class QuestionariosatisfacaoController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Questionariosatisfacao.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Questionariosatisfacao.findById(params.id)){
			arrObjJson.add(Questionariosatisfacao.findById(params.id))
			render arrObjJson as JSON}
			if(!Questionariosatisfacao.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Questionariosatisfacao nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Questionariosatisfacao.findById(request.JSON.id)){
		Questionariosatisfacao.get(request.JSON.id)?.delete()
		render "Questionariosatisfacao Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Questionariosatisfacao c = Questionariosatisfacao.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Questionariosatisfacao Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def questionariosatisfacao = new Questionariosatisfacao(request.JSON)
		if(questionariosatisfacao.save()){
			render "Questionariosatisfacao Id:${questionariosatisfacao.id} - Salvo com sucesso!" 
		}else{render "Erro: Questionariosatisfacao nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ questionariosatisfacaoList: Questionariosatisfacao.list( params ) ]
    }

    def show = {
        def questionariosatisfacao = Questionariosatisfacao.get( params.id )

        if(!questionariosatisfacao) {
            flash.message = "Questionariosatisfacao não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionariosatisfacao : questionariosatisfacao ] }
    }

    def delete = {
        def questionariosatisfacao = Questionariosatisfacao.get( params.id )
        if(questionariosatisfacao) {
            questionariosatisfacao.delete()
            flash.message = "Questionariosatisfacao ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Questionariosatisfacao não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionariosatisfacao = Questionariosatisfacao.get( params.id )

        if(!questionariosatisfacao) {
            flash.message = "Questionariosatisfacao não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionariosatisfacao : questionariosatisfacao ]
        }
    }

    def update = {
        def questionariosatisfacao = Questionariosatisfacao.get( params.id )
        if(questionariosatisfacao) {
            questionariosatisfacao.properties = params
            if(!questionariosatisfacao.hasErrors() && questionariosatisfacao.save()) {
                flash.message = "Questionariosatisfacao ${params.id} Editado com sucesso!"
                redirect(action:show,id:questionariosatisfacao.id)
            }
            else {
                render(view:'edit',model:[questionariosatisfacao:questionariosatisfacao])
            }
        }
        else {
            flash.message = "Questionariosatisfacao não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionariosatisfacao = new Questionariosatisfacao()
        questionariosatisfacao.properties = params
        return ['questionariosatisfacao':questionariosatisfacao]
    }

    def save = {
        def questionariosatisfacao = new Questionariosatisfacao(params)
        if(!questionariosatisfacao.hasErrors() && questionariosatisfacao.save()) {
            flash.message = "Questionariosatisfacao ${questionariosatisfacao.id} cadastrado"
            redirect(action:show,id:questionariosatisfacao.id)
        }
        else {
            render(view:'create',model:[questionariosatisfacao:questionariosatisfacao])
        }
    }
}
