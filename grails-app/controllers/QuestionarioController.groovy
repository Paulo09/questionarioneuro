import javax.servlet.http.HttpServletResponse
import grails.converters.*
class QuestionarioController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Questionario.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Questionario.findById(params.id)){
			arrObjJson.add(Questionario.findById(params.id))
			render arrObjJson as JSON}
			if(!Questionario.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Questionario nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Questionario.findById(request.JSON.id)){
		Questionario.get(request.JSON.id)?.delete()
		render "Questionario Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Questionario c = Questionario.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Questionario Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def questionario = new Questionario(request.JSON)
		if(questionario.save()){
			render "Questionario Id:${questionario.id} - Salvo com sucesso!" 
		}else{render "Erro: Questionario nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ questionarioList: Questionario.list( params ) ]
    }

    def show = {
        def questionario = Questionario.get( params.id )

        if(!questionario) {
            flash.message = "Questionario não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionario : questionario ] }
    }

    def delete = {
        def questionario = Questionario.get( params.id )
        if(questionario) {
            questionario.delete()
            flash.message = "Questionario ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Questionario não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionario = Questionario.get( params.id )

        if(!questionario) {
            flash.message = "Questionario não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionario : questionario ]
        }
    }

    def update = {
        def questionario = Questionario.get( params.id )
        if(questionario) {
            questionario.properties = params
            if(!questionario.hasErrors() && questionario.save()) {
                flash.message = "Questionario ${params.id} Editado com sucesso!"
                redirect(action:show,id:questionario.id)
            }
            else {
                render(view:'edit',model:[questionario:questionario])
            }
        }
        else {
            flash.message = "Questionario não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionario = new Questionario()
        questionario.properties = params
        return ['questionario':questionario]
    }

    def save = {
        def questionario = new Questionario(params)
        if(!questionario.hasErrors() && questionario.save()) {
            flash.message = "Questionario ${questionario.id} cadastrado"
            redirect(action:show,id:questionario.id)
        }
        else {
            render(view:'create',model:[questionario:questionario])
        }
    }
}
