import javax.servlet.http.HttpServletResponse
import grails.converters.*
class InterfaceutilizadaController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Interfaceutilizada.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Interfaceutilizada.findById(params.id)){
			arrObjJson.add(Interfaceutilizada.findById(params.id))
			render arrObjJson as JSON}
			if(!Interfaceutilizada.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Interfaceutilizada nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Interfaceutilizada.findById(request.JSON.id)){
		Interfaceutilizada.get(request.JSON.id)?.delete()
		render "Interfaceutilizada Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Interfaceutilizada c = Interfaceutilizada.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Interfaceutilizada Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def interfaceutilizada = new Interfaceutilizada(request.JSON)
		if(interfaceutilizada.save()){
			render "Interfaceutilizada Id:${interfaceutilizada.id} - Salvo com sucesso!" 
		}else{render "Erro: Interfaceutilizada nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ interfaceutilizadaList: Interfaceutilizada.list( params ) ]
    }

    def show = {
        def interfaceutilizada = Interfaceutilizada.get( params.id )

        if(!interfaceutilizada) {
            flash.message = "Interfaceutilizada não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ interfaceutilizada : interfaceutilizada ] }
    }

    def delete = {
        def interfaceutilizada = Interfaceutilizada.get( params.id )
        if(interfaceutilizada) {
            interfaceutilizada.delete()
            flash.message = "Interfaceutilizada ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Interfaceutilizada não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def interfaceutilizada = Interfaceutilizada.get( params.id )

        if(!interfaceutilizada) {
            flash.message = "Interfaceutilizada não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ interfaceutilizada : interfaceutilizada ]
        }
    }

    def update = {
        def interfaceutilizada = Interfaceutilizada.get( params.id )
        if(interfaceutilizada) {
            interfaceutilizada.properties = params
            if(!interfaceutilizada.hasErrors() && interfaceutilizada.save()) {
                flash.message = "Interfaceutilizada ${params.id} Editado com sucesso!"
                redirect(action:show,id:interfaceutilizada.id)
            }
            else {
                render(view:'edit',model:[interfaceutilizada:interfaceutilizada])
            }
        }
        else {
            flash.message = "Interfaceutilizada não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def interfaceutilizada = new Interfaceutilizada()
        interfaceutilizada.properties = params
        return ['interfaceutilizada':interfaceutilizada]
    }

    def save = {
        def interfaceutilizada = new Interfaceutilizada(params)
        if(!interfaceutilizada.hasErrors() && interfaceutilizada.save()) {
            flash.message = "Interfaceutilizada ${interfaceutilizada.id} cadastrado"
            redirect(action:show,id:interfaceutilizada.id)
        }
        else {
            render(view:'create',model:[interfaceutilizada:interfaceutilizada])
        }
    }
}
