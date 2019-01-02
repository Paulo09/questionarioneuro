import javax.servlet.http.HttpServletResponse
import grails.converters.*
class QuestionariovideoeegController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Questionariovideoeeg.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Questionariovideoeeg.findById(params.id)){
			arrObjJson.add(Questionariovideoeeg.findById(params.id))
			render arrObjJson as JSON}
			if(!Questionariovideoeeg.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Questionariovideoeeg nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Questionariovideoeeg.findById(request.JSON.id)){
		Questionariovideoeeg.get(request.JSON.id)?.delete()
		render "Questionariovideoeeg Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Questionariovideoeeg c = Questionariovideoeeg.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Questionariovideoeeg Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def questionariovideoeeg = new Questionariovideoeeg(request.JSON)
		if(questionariovideoeeg.save()){
			render "Questionariovideoeeg Id:${questionariovideoeeg.id} - Salvo com sucesso!" 
		}else{render "Erro: Questionariovideoeeg nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ questionariovideoeegList: Questionariovideoeeg.list( params ) ]
    }

    def show = {
        def questionariovideoeeg = Questionariovideoeeg.get( params.id )

        if(!questionariovideoeeg) {
            flash.message = "Questionariovideoeeg não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionariovideoeeg : questionariovideoeeg ] }
    }

    def delete = {
        def questionariovideoeeg = Questionariovideoeeg.get( params.id )
        if(questionariovideoeeg) {
            questionariovideoeeg.delete()
            flash.message = "Questionariovideoeeg ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Questionariovideoeeg não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionariovideoeeg = Questionariovideoeeg.get( params.id )

        if(!questionariovideoeeg) {
            flash.message = "Questionariovideoeeg não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionariovideoeeg : questionariovideoeeg ]
        }
    }

    def update = {
        def questionariovideoeeg = Questionariovideoeeg.get( params.id )
        if(questionariovideoeeg) {
            questionariovideoeeg.properties = params
            if(!questionariovideoeeg.hasErrors() && questionariovideoeeg.save()) {
                flash.message = "Questionariovideoeeg ${params.id} updated"
                redirect(action:show,id:questionariovideoeeg.id)
            }
            else {
                render(view:'edit',model:[questionariovideoeeg:questionariovideoeeg])
            }
        }
        else {
            flash.message = "Questionariovideoeeg não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionariovideoeeg = new Questionariovideoeeg()
        questionariovideoeeg.properties = params
        return ['questionariovideoeeg':questionariovideoeeg]
    }

    def save = {
        def questionariovideoeeg = new Questionariovideoeeg(params)
        if(!questionariovideoeeg.hasErrors() && questionariovideoeeg.save()) {
            flash.message = "Questionariovideoeeg ${questionariovideoeeg.id} cadastrado"
            redirect(action:show,id:questionariovideoeeg.id)
        }
        else {
            render(view:'create',model:[questionariovideoeeg:questionariovideoeeg])
        }
    }
}
