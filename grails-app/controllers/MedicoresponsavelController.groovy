import javax.servlet.http.HttpServletResponse
import grails.converters.*
class MedicoresponsavelController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Medicoresponsavel.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Medicoresponsavel.findById(params.id)){
			arrObjJson.add(Medicoresponsavel.findById(params.id))
			render arrObjJson as JSON}
			if(!Medicoresponsavel.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Medicoresponsavel nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Medicoresponsavel.findById(request.JSON.id)){
		Medicoresponsavel.get(request.JSON.id)?.delete()
		render "Medicoresponsavel Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Medicoresponsavel c = Medicoresponsavel.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Medicoresponsavel Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def medicoresponsavel = new Medicoresponsavel(request.JSON)
		if(medicoresponsavel.save()){
			render "Medicoresponsavel Id:${medicoresponsavel.id} - Salvo com sucesso!" 
		}else{render "Erro: Medicoresponsavel nao foi salvo!"}	    
    }

     def buscar ={
	     
        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}
		
		if(params.nome)
		{
			buscaSingular = Medicoresponsavel.findAllByNomeLike("%"+params.nome+"%")
	        if(buscaSingular){
			 return [ medicoresponsavelList: buscaSingular ]
			}
            else{
                flash.message = "Médico Responsável: ${params.nome}, não cadastrado!"
		        redirect(action:buscar)  
            }
		}
		else { 
            if(params.nome!=null){
                if(!params.max) params.max = 10
                buscaGeral = Medicoresponsavel.findAll()
                return [ medicoresponsavelList: buscaGeral ]
            }
		}
      }
   
   
    def list = {
        if(!params.max) params.max = 10
        [ medicoresponsavelList: Medicoresponsavel.list( params ) ]
    }

    def show = {
        def medicoresponsavel = Medicoresponsavel.get( params.id )

        if(!medicoresponsavel) {
            flash.message = "Medicoresponsavel n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ medicoresponsavel : medicoresponsavel ] }
    }

    def delete = {
        def medicoresponsavel = Medicoresponsavel.get( params.id )
        if(medicoresponsavel) {
            medicoresponsavel.delete()
            flash.message = "Medicoresponsavel ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Medicoresponsavel n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def medicoresponsavel = Medicoresponsavel.get( params.id )

        if(!medicoresponsavel) {
            flash.message = "Medicoresponsavel não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ medicoresponsavel : medicoresponsavel ]
        }
    }

    def update = {
        def medicoresponsavel = Medicoresponsavel.get( params.id )
        if(medicoresponsavel) {
            medicoresponsavel.properties = params
            if(!medicoresponsavel.hasErrors() && medicoresponsavel.save()) {
                flash.message = "Medicoresponsavel ${params.nome} Editado com Sucesso!"
                redirect(action:show,id:medicoresponsavel.id)
            }
            else {
               
                render(view:'edit',model:[medicoresponsavel:medicoresponsavel])
            }
        }
        else {
            flash.message = "Medicoresponsavel não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def medicoresponsavel = new Medicoresponsavel()
        medicoresponsavel.properties = params
        return ['medicoresponsavel':medicoresponsavel]
    }

    def save = {
        def medicoresponsavel = new Medicoresponsavel(params)
        if(!medicoresponsavel.hasErrors() && medicoresponsavel.save()) {
            flash.message = "Medicoresponsavel ${medicoresponsavel.id} cadastrado"
            redirect(action:show,id:medicoresponsavel.id)
        }
        else {
             
            def validaNome='Campo Nome Obrigatório, favor preencha.'
            def validaCrm='Campo Crm Obrigatório, favor preencha.'
            def validacao=''
            if(params.nome==""){
                validacao+=validaNome
            }
            if(params.crm==""){
                validacao+=validaCrm
            }
         
            render(view:'create',model:[medicoresponsavel:medicoresponsavel,validacao:validacao])
        }
    }
}
