import javax.servlet.http.HttpServletResponse
import grails.converters.*
class ExameController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Exame.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Exame.findById(params.id)){
			arrObjJson.add(Exame.findById(params.id))
			render arrObjJson as JSON}
			if(!Exame.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Exame nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Exame.findById(request.JSON.id)){
		Exame.get(request.JSON.id)?.delete()
		render "Exame Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Exame c = Exame.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Exame Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def exame = new Exame(request.JSON)
		if(exame.save()){
			render "Exame Id:${exame.id} - Salvo com sucesso!" 
		}else{render "Erro: Exame nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ exameList: Exame.list( params ) ]
    }

    def show = {
        def exame = Exame.get( params.id )

        if(!exame) {
            flash.message = "Exame não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ exame : exame ] }
    }

    def delete = {
        def exame = Exame.get( params.id )
        if(exame) {
            exame.delete()
            flash.message = "Exame ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Exame não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def exame = Exame.get( params.id )

        if(!exame) {
            flash.message = "Exame não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ exame : exame ]
        }
    }

    def update = {
        def exame = Exame.get( params.id )
        if(exame) {
            exame.properties = params
            if(!exame.hasErrors() && exame.save()) {
                flash.message = "Exame ${params.id} updated"
                redirect(action:show,id:exame.id)
            }
            else {
                render(view:'edit',model:[exame:exame])
            }
        }
        else {
            flash.message = "Exame não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def exame = new Exame()
        exame.properties = params
        return ['exame':exame]
    }

    def save = {
        def exame = new Exame(params)
        if(!exame.hasErrors() && exame.save()) {
            flash.message = "Exame ${exame.id} cadastrado"
            redirect(action:show,id:exame.id)
        }
        else {
            render(view:'create',model:[exame:exame])
        }
    }
}
