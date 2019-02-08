import javax.servlet.http.HttpServletResponse
import grails.converters.*
class Questionariovideoeeg2Controller {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Questionariovideoeeg2.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Questionariovideoeeg2.findById(params.id)){
			arrObjJson.add(Questionariovideoeeg2.findById(params.id))
			render arrObjJson as JSON}
			if(!Questionariovideoeeg2.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Questionariovideoeeg2 nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Questionariovideoeeg2.findById(request.JSON.id)){
		Questionariovideoeeg2.get(request.JSON.id)?.delete()
		render "Questionariovideoeeg2 Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Questionariovideoeeg2 c = Questionariovideoeeg2.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Questionariovideoeeg2 Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def questionariovideoeeg2 = new Questionariovideoeeg2(request.JSON)
		if(questionariovideoeeg2.save()){
			render "Questionariovideoeeg2 Id:${questionariovideoeeg2.id} - Salvo com sucesso!" 
		}else{render "Erro: Questionariovideoeeg2 nao foi salvo!"}	    
    }

    def buscar ={

        def nome=params.nome
        def buscaSingular=""
        def buscaGeral=""

        println "Questionario video EEG"

        if(params.nome==""){redirect(action:list)}
		
		if(params.nome)
		{
           
            if (params.nome.isInteger()){
                    buscaSingular = Questionariovideoeeg2.findAllById(params.nome)
                if(buscaSingular){
                return [ questionariovideoeeg2List: buscaSingular ]
                }
                else{
                    flash.message = "Paciente:${nome}, não cadastrado!"
                    redirect(action:buscar)  
                }
		    }
            else{
                    flash.message = "Questionario:${params.nome} Digite id!"
                    redirect(action:buscar)  
                }
        }    
		else { 
            if(params.nome!=null){
                //if(!params.max) params.max = 10
                buscaGeral = Questionariovideoeeg2.findAll()
                return [ questionariovideoeeg2List: buscaGeral ]
            }
		}
     
      }
   
    def list = {
        if(!params.max) params.max = 10
        [ questionariovideoeeg2List: Questionariovideoeeg2.list( params ) ]
    }

    def show = {
        def questionariovideoeeg2 = Questionariovideoeeg2.get( params.id )

        if(!questionariovideoeeg2) {
            flash.message = "Questionariovideoeeg2 n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionariovideoeeg2 : questionariovideoeeg2 ] }
    }

    def delete = {
        def questionariovideoeeg2 = Questionariovideoeeg2.get( params.id )
        if(questionariovideoeeg2) {
            questionariovideoeeg2.delete()
            flash.message = "Questionariovideoeeg2 ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Questionariovideoeeg2 n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionariovideoeeg2 = Questionariovideoeeg2.get( params.id )

        if(!questionariovideoeeg2) {
            flash.message = "Questionariovideoeeg2 n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionariovideoeeg2 : questionariovideoeeg2 ]
        }
    }

    def update = {
        def questionariovideoeeg2 = Questionariovideoeeg2.get( params.id )
        if(questionariovideoeeg2) {
            questionariovideoeeg2.properties = params
            if(!questionariovideoeeg2.hasErrors() && questionariovideoeeg2.save()) {
                flash.message = "Questionariovideoeeg2 ${params.id} updated"
                redirect(action:show,id:questionariovideoeeg2.id)
            }
            else {
                render(view:'edit',model:[questionariovideoeeg2:questionariovideoeeg2])
            }
        }
        else {
            flash.message = "Questionariovideoeeg2 n�o encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionariovideoeeg2 = new Questionariovideoeeg2()
        questionariovideoeeg2.properties = params
        return ['questionariovideoeeg2':questionariovideoeeg2]
    }

    def save = {
        def questionariovideoeeg2 = new Questionariovideoeeg2(params)
        if(!questionariovideoeeg2.hasErrors() && questionariovideoeeg2.save()) {
            flash.message = "Questionariovideoeeg2 ${questionariovideoeeg2.id} cadastrado"
            redirect(action:show,id:questionariovideoeeg2.id)
        }
        else {
            render(view:'create',model:[questionariovideoeeg2:questionariovideoeeg2])
        }
    }
}
