import javax.servlet.http.HttpServletResponse
import grails.converters.*
class QuartoController {

    
	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Quarto.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Quarto.findById(params.id)){
			arrObjJson.add(Quarto.findById(params.id))
			render arrObjJson as JSON}
			if(!Quarto.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Quarto nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Quarto.findById(request.JSON.id)){
		Quarto.get(request.JSON.id)?.delete()
		render "Quarto Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Quarto c = Quarto.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Quarto Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def quarto = new Quarto(request.JSON)
		if(quarto.save()){
			render "Quarto Id:${quarto.id} - Salvo com sucesso!" 
		}else{render "Erro: Quarto nao foi salvo!"}	    
    }
   
    def list = {

        if(!params.max) params.max = 10
        [ quartoList: Quarto.list( params ) ]
    }

    def show = {
        def quarto = Quarto.get( params.id )

         if(!quarto) {
            flash.message = "Prontuario não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ quarto : quarto ] }
            
    }

    def delete = {
        def quarto = Quarto.get( params.id )
        if(quarto) {
            quarto.delete()
            flash.message = "Quarto ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Quarto n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def quarto = Quarto.get( params.id )

        if(!quarto) {
            flash.message = "Quarto n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ quarto : quarto ]
        }
    }

    def update = {
        def quarto = Quarto.get( params.id )
        if(quarto) {
            quarto.properties = params
            if(!quarto.hasErrors() && quarto.save()) {
                flash.message = "Quarto ${params.id} Editado com sucesso!"
                redirect(action:show,id:quarto.id)
            }
            else {
                render(view:'edit',model:[quarto:quarto])
            }
        }
        else {
            flash.message = "Quarto n�o encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def quarto = new Quarto()
        quarto.properties = params
        return ['quarto':quarto]
    }

    def save = {
        def quarto = new Quarto(params)
        if(!quarto.hasErrors() && quarto.save()) {
            flash.message = "Quarto ${quarto.id} cadastrado"
            redirect(action:show,id:quarto.id)
        }
        else {
            render(view:'create',model:[quarto:quarto])
        }
    }
}
