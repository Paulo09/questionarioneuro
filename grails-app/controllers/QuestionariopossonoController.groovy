import javax.servlet.http.HttpServletResponse
import grails.converters.*
class QuestionariopossonoController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Questionariopossono.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Questionariopossono.findById(params.id)){
			arrObjJson.add(Questionariopossono.findById(params.id))
			render arrObjJson as JSON}
			if(!Questionariopossono.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Questionariopossono nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Questionariopossono.findById(request.JSON.id)){
		Questionariopossono.get(request.JSON.id)?.delete()
		render "Questionariopossono Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Questionariopossono c = Questionariopossono.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Questionariopossono Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def questionariopossono = new Questionariopossono(request.JSON)
		if(questionariopossono.save()){
			render "Questionariopossono Id:${questionariopossono.id} - Salvo com sucesso!" 
		}else{render "Erro: Questionariopossono nao foi salvo!"}	    
    }

     def buscar ={

        def nome=params.nome
        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}
		
		if(params.nome)
		{
           
            if (params.nome.isInteger()){
                    buscaSingular = Questionariopossono.findAllById(params.nome)

                    println "Ferreira...:"+buscaSingular

                if(buscaSingular){
                return [ questionariopossonoList: buscaSingular ]
                }
                else{
                    flash.message = "Questionario:${nome}, não cadastrado!"
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
                buscaGeral = Questionariopossono.findAll()
                return [ questionariopossonoList: buscaGeral ]
            }
		}
     
      }
   
    def list = {
        if(!params.max) params.max = 10
        [ questionariopossonoList: Questionariopossono.list( params ) ]
    }

    def show = {
        def questionariopossono = Questionariopossono.get( params.id )

        if(!questionariopossono) {
            flash.message = "Questionariopossono n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionariopossono : questionariopossono ] }
    }

    def delete = {
        def questionariopossono = Questionariopossono.get( params.id )
        if(questionariopossono) {
            questionariopossono.delete()
            flash.message = "Questionariopossono ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Questionariopossono n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionariopossono = Questionariopossono.get( params.id )

        if(!questionariopossono) {
            flash.message = "Questionariopossono n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionariopossono : questionariopossono ]
        }
    }

    def update = {
        def questionariopossono = Questionariopossono.get( params.id )
        if(questionariopossono) {
            questionariopossono.properties = params
            if(!questionariopossono.hasErrors() && questionariopossono.save()) {
                flash.message = "Questionariopossono ${params.id} updated"
                redirect(action:show,id:questionariopossono.id)
            }
            else {
                render(view:'edit',model:[questionariopossono:questionariopossono])
            }
        }
        else {
            flash.message = "Questionariopossono n�o encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionariopossono = new Questionariopossono()
        questionariopossono.properties = params
        return ['questionariopossono':questionariopossono]
    }

    def save = {
        def questionariopossono = new Questionariopossono(params)
        if(!questionariopossono.hasErrors() && questionariopossono.save()) {
            flash.message = "Questionariopossono ${questionariopossono.id} cadastrado"
            redirect(action:show,id:questionariopossono.id)
        }
        else {
            render(view:'create',model:[questionariopossono:questionariopossono])
        }
    }
}
