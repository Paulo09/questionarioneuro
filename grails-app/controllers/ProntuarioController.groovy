import javax.servlet.http.HttpServletResponse
import grails.converters.*
class ProntuarioController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Prontuario.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Prontuario.findById(params.id)){
			arrObjJson.add(Prontuario.findById(params.id))
			render arrObjJson as JSON}
			if(!Prontuario.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Prontuario nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Prontuario.findById(request.JSON.id)){
		Prontuario.get(request.JSON.id)?.delete()
		render "Prontuario Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Prontuario c = Prontuario.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Prontuario Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def prontuario = new Prontuario(request.JSON)
		if(prontuario.save()){
			render "Prontuario Id:${prontuario.id} - Salvo com sucesso!" 
		}else{render "Erro: Prontuario nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ prontuarioList: Prontuario.list( params ) ]
    }

    def show = {
        def prontuario = Prontuario.get( params.id )

        if(!prontuario) {
            flash.message = "Prontuario não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ prontuario : prontuario ] }
    }

    def delete = {
        def prontuario = Prontuario.get( params.id )
        if(prontuario) {
            prontuario.delete()
            flash.message = "Prontuario ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Prontuario não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def prontuario = Prontuario.get( params.id )

        if(!prontuario) {
            flash.message = "Prontuario não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ prontuario : prontuario ]
        }
    }

    def update = {
        def prontuario = Prontuario.get( params.id )
        if(prontuario) {
            prontuario.properties = params
            if(!prontuario.hasErrors() && prontuario.save()) {
                flash.message = "Prontuario ${params.id} updated"
                redirect(action:show,id:prontuario.id)
            }
            else {
                render(view:'edit',model:[prontuario:prontuario])
            }
        }
        else {
            flash.message = "Prontuario não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def prontuario = new Prontuario()
        prontuario.properties = params
        return ['prontuario':prontuario]
    }

    def save = {
        def prontuario = new Prontuario(params)
        if(!prontuario.hasErrors() && prontuario.save()) {
            flash.message = "Prontuario ${prontuario.id} cadastrado"
            redirect(action:show,id:prontuario.id)
        }
        else {
            render(view:'create',model:[prontuario:prontuario])
        }
    }
}
