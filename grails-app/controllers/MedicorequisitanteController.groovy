import javax.servlet.http.HttpServletResponse
import grails.converters.*
class MedicorequisitanteController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Medicorequisitante.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Medicorequisitante.findById(params.id)){
			arrObjJson.add(Medicorequisitante.findById(params.id))
			render arrObjJson as JSON}
			if(!Medicorequisitante.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Medicorequisitante nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Medicorequisitante.findById(request.JSON.id)){
		Medicorequisitante.get(request.JSON.id)?.delete()
		render "Medicorequisitante Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Medicorequisitante c = Medicorequisitante.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Medicorequisitante Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def medicorequisitante = new Medicorequisitante(request.JSON)
		if(medicorequisitante.save()){
			render "Medicorequisitante Id:${medicorequisitante.id} - Salvo com sucesso!" 
		}else{render "Erro: Medicorequisitante nao foi salvo!"}	    
    }

     def buscar ={
	     
        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}
		
		if(params.nome)
		{
			buscaSingular = Medicorequisitante.findAllByNomeLike("%"+params.nome+"%")
	        if(buscaSingular){
			 return [ medicorequisitanteList: buscaSingular ]
			}
            else{
                flash.message = "Médico Requisitante: ${params.nome}, não cadastrado!"
		        redirect(action:buscar)  
            }
		}
		else { 
            if(params.nome!=null){
                if(!params.max) params.max = 10
                buscaGeral = Usuario.findAll()
                return [ medicorequisitanteList: buscaGeral ]
            }
		}
      }
   
    def list = {
        if(!params.max) params.max = 10
        [ medicorequisitanteList: Medicorequisitante.list( params ) ]
    }

    def show = {
        def medicorequisitante = Medicorequisitante.get( params.id )

        if(!medicorequisitante) {
            flash.message = "Medicorequisitante n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ medicorequisitante : medicorequisitante ] }
    }

    def delete = {
        def medicorequisitante = Medicorequisitante.get( params.id )
        if(medicorequisitante) {
            medicorequisitante.delete()
            flash.message = "Medicorequisitante ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Medicorequisitante n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def medicorequisitante = Medicorequisitante.get( params.id )

        if(!medicorequisitante) {
            flash.message = "Medicorequisitante n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ medicorequisitante : medicorequisitante ]
        }
    }

    def update = {
        def medicorequisitante = Medicorequisitante.get( params.id )
        if(medicorequisitante) {
            medicorequisitante.properties = params
            if(!medicorequisitante.hasErrors() && medicorequisitante.save()) {
                flash.message = "Medicorequisitante ${params.id} updated"
                redirect(action:show,id:medicorequisitante.id)
            }
            else {
                render(view:'edit',model:[medicorequisitante:medicorequisitante])
            }
        }
        else {
            flash.message = "Medicorequisitante n�o encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def medicorequisitante = new Medicorequisitante()
        medicorequisitante.properties = params
        return ['medicorequisitante':medicorequisitante]
    }

    def save = {
        def medicorequisitante = new Medicorequisitante(params)
        if(!medicorequisitante.hasErrors() && medicorequisitante.save()) {
            flash.message = "Medicorequisitante ${medicorequisitante.id} cadastrado"
            redirect(action:show,id:medicorequisitante.id)
        }
        else {
            render(view:'create',model:[medicorequisitante:medicorequisitante])
        }
    }
}
