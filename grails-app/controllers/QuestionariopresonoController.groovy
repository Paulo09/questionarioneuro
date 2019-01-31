import javax.servlet.http.HttpServletResponse
import grails.converters.*
class QuestionariopresonoController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Questionariopresono.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Questionariopresono.findById(params.id)){
			arrObjJson.add(Questionariopresono.findById(params.id))
			render arrObjJson as JSON}
			if(!Questionariopresono.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Questionariopresono nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Questionariopresono.findById(request.JSON.id)){
		Questionariopresono.get(request.JSON.id)?.delete()
		render "Questionariopresono Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Questionariopresono c = Questionariopresono.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Questionariopresono Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def questionariopresono = new Questionariopresono(request.JSON)
		if(questionariopresono.save()){
			render "Questionariopresono Id:${questionariopresono.id} - Salvo com sucesso!" 
		}else{render "Erro: Questionariopresono nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ questionariopresonoList: Questionariopresono.list( params ) ]
    }

    def show = {
        def questionariopresono = Questionariopresono.get( params.id )

        if(!questionariopresono) {
            flash.message = "Questionariopresono não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionariopresono : questionariopresono ] }
    }

    def delete = {
        def questionariopresono = Questionariopresono.get( params.id )
        if(questionariopresono) {
            questionariopresono.delete()
            flash.message = "Questionariopresono ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Questionariopresono não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionariopresono = Questionariopresono.get( params.id )

        if(!questionariopresono) {
            flash.message = "Questionariopresono não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionariopresono : questionariopresono ]
        }
    }

    def update = {
        def questionariopresono = Questionariopresono.get( params.id )
        if(questionariopresono) {
            questionariopresono.properties = params
            if(!questionariopresono.hasErrors() && questionariopresono.save()) {
                flash.message = "Questionariopresono ${params.id} updated"
                redirect(action:show,id:questionariopresono.id)
            }
            else {
                render(view:'edit',model:[questionariopresono:questionariopresono])
            }
        }
        else {
            flash.message = "Questionariopresono não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionariopresono = new Questionariopresono()
        questionariopresono.properties = params
        return ['questionariopresono':questionariopresono]
    }

    def save = {
        def questionariopresono = new Questionariopresono(params)
        if(!questionariopresono.hasErrors() && questionariopresono.save()) {
            flash.message = "Questionariopresono ${questionariopresono.id} cadastrado"
            redirect(action:show,id:questionariopresono.id)
        }
        else {
            render(view:'create',model:[questionariopresono:questionariopresono])
        }
    }
}
