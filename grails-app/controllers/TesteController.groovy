import javax.servlet.http.HttpServletResponse
import grails.converters.*
class TesteController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Teste.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Teste.findById(params.id)){
			arrObjJson.add(Teste.findById(params.id))
			render arrObjJson as JSON}
			if(!Teste.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Teste nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Teste.findById(request.JSON.id)){
		Teste.get(request.JSON.id)?.delete()
		render "Teste Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Teste c = Teste.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Teste Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def teste = new Teste(request.JSON)
		if(teste.save()){
			render "Teste Id:${teste.id} - Salvo com sucesso!" 
		}else{render "Erro: Teste nao foi salvo!"}	    
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ testeList: Teste.list( params ) ]
    }

    def show = {
        def teste = Teste.get( params.id )

        if(!teste) {
            flash.message = "Teste não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ teste : teste ] }
    }

    def delete = {
        def teste = Teste.get( params.id )
        if(teste) {
            teste.delete()
            flash.message = "Teste ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Teste não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def teste = Teste.get( params.id )

        if(!teste) {
            flash.message = "Teste não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ teste : teste ]
        }
    }

    def update = {
        def teste = Teste.get( params.id )
        if(teste) {
            teste.properties = params
            if(!teste.hasErrors() && teste.save()) {
                flash.message = "Teste ${params.id} updated"
                redirect(action:show,id:teste.id)
            }
            else {
                render(view:'edit',model:[teste:teste])
            }
        }
        else {
            flash.message = "Teste não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def teste = new Teste()
        teste.properties = params
        return ['teste':teste]
    }

    def save = {
        def teste = new Teste(params)
        if(!teste.hasErrors() && teste.save()) {
            flash.message = "Teste ${teste.id} cadastrado"
            redirect(action:show,id:teste.id)
        }
        else {
            render(view:'create',model:[teste:teste])
        }
    }
}
