import javax.servlet.http.HttpServletResponse
import grails.converters.*
class ConvenioController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Convenio.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Convenio.findById(params.id)){
			arrObjJson.add(Convenio.findById(params.id))
			render arrObjJson as JSON}
			if(!Convenio.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Convenio nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Convenio.findById(request.JSON.id)){
		Convenio.get(request.JSON.id)?.delete()
		render "Convenio Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Convenio c = Convenio.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Convenio Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def convenio = new Convenio(request.JSON)
		if(convenio.save()){
			render "Convenio Id:${convenio.id} - Salvo com sucesso!" 
		}else{render "Erro: Convenio nao foi salvo!"}	    
    }

     def buscar ={

        def nome=params.nome
        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}
		
		if(params.nome)
		{
			buscaSingular = Convenio.findAllByNomeLike("%"+params.nome+"%")
	        if(buscaSingular){
			 return [ convenioList: buscaSingular ]
			}
            else{
                flash.message = "Convênio:${nome}, não cadastrado!"
		        redirect(action:buscar)  
            }
		}
		else { 
            if(params.nome!=null){
                //if(!params.max) params.max = 10
                buscaGeral = Convenio.findAll()
                return [ convenioList: buscaGeral ]
            }
		}
     
      }
   
    def list = {
        if(!params.max) params.max = 10
        [ convenioList: Convenio.list( params ) ]
    }

    def show = {
        def convenio = Convenio.get( params.id )

        if(!convenio) {
            flash.message = "Convenio n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ convenio : convenio ] }
    }

    def delete = {
        def convenio = Convenio.get( params.id )
        if(convenio) {
            convenio.delete()
            flash.message = "Convenio ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Convenio n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def convenio = Convenio.get( params.id )

        if(!convenio) {
            flash.message = "Convenio n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ convenio : convenio ]
        }
    }

    def update = {
        def convenio = Convenio.get( params.id )
        if(convenio) {
            convenio.properties = params
            if(!convenio.hasErrors() && convenio.save()) {
                flash.message = "Convenio ${params.id} updated"
                redirect(action:show,id:convenio.id)
            }
            else {
                render(view:'edit',model:[convenio:convenio])
            }
        }
        else {
            flash.message = "Convenio n�o encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def convenio = new Convenio()
        convenio.properties = params
        return ['convenio':convenio]
    }

    def save = {
        def convenio = new Convenio(params)
        if(!convenio.hasErrors() && convenio.save()) {
            flash.message = "Convenio ${convenio.id} cadastrado"
            redirect(action:show,id:convenio.id)
        }
        else {
            render(view:'create',model:[convenio:convenio])
        }
    }
}
