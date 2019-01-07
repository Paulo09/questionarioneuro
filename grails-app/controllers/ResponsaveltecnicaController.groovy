import javax.servlet.http.HttpServletResponse
import grails.converters.*
class ResponsaveltecnicaController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Responsaveltecnica.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Responsaveltecnica.findById(params.id)){
			arrObjJson.add(Responsaveltecnica.findById(params.id))
			render arrObjJson as JSON}
			if(!Responsaveltecnica.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Responsaveltecnica nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Responsaveltecnica.findById(request.JSON.id)){
		Responsaveltecnica.get(request.JSON.id)?.delete()
		render "Responsaveltecnica Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Responsaveltecnica c = Responsaveltecnica.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Responsaveltecnica Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def responsaveltecnica = new Responsaveltecnica(request.JSON)
		if(responsaveltecnica.save()){
			render "Responsaveltecnica Id:${responsaveltecnica.id} - Salvo com sucesso!" 
		}else{render "Erro: Responsaveltecnica nao foi salvo!"}	    
    }

      def buscar ={

        def nome=params.nome
        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}
		
		if(params.nome)
		{
			buscaSingular = Responsaveltecnica.findAllByNomeLike("%"+params.nome+"%")
    
	        if(buscaSingular){
			 return [ responsaveltecnicaList: buscaSingular ]
			}
            else{
                flash.message = "Téncnica(o): ${nome}, não cadastrado!"
		        redirect(action:buscar)  
            }
		}
		else { 
            if(params.nome!=null){
                //if(!params.max) params.max = 10
                buscaGeral = Questionariovideoeeg.findAll()
                return [ responsaveltecnicaList: buscaGeral ]
            }
		}
     
      }
   
    def list = {
        if(!params.max) params.max = 10
        [ responsaveltecnicaList: Responsaveltecnica.list( params ) ]
    }

    def show = {
        def responsaveltecnica = Responsaveltecnica.get( params.id )

        if(!responsaveltecnica) {
            flash.message = "Responsaveltecnica n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ responsaveltecnica : responsaveltecnica ] }
    }

    def delete = {
        def responsaveltecnica = Responsaveltecnica.get( params.id )
        if(responsaveltecnica) {
            responsaveltecnica.delete()
            flash.message = "Responsaveltecnica ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Responsaveltecnica n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def responsaveltecnica = Responsaveltecnica.get( params.id )

        if(!responsaveltecnica) {
            flash.message = "Responsaveltecnica n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ responsaveltecnica : responsaveltecnica ]
        }
    }

    def update = {
        def responsaveltecnica = Responsaveltecnica.get( params.id )
        if(responsaveltecnica) {
            responsaveltecnica.properties = params
            if(!responsaveltecnica.hasErrors() && responsaveltecnica.save()) {
                flash.message = "Responsaveltecnica ${params.id} updated"
                redirect(action:show,id:responsaveltecnica.id)
            }
            else {
                render(view:'edit',model:[responsaveltecnica:responsaveltecnica])
            }
        }
        else {
            flash.message = "Responsaveltecnica n�o encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def responsaveltecnica = new Responsaveltecnica()
        responsaveltecnica.properties = params
        return ['responsaveltecnica':responsaveltecnica]
    }

    def save = {
        def responsaveltecnica = new Responsaveltecnica(params)
        if(!responsaveltecnica.hasErrors() && responsaveltecnica.save()) {
            flash.message = "Responsaveltecnica ${responsaveltecnica.id} cadastrado"
            redirect(action:show,id:responsaveltecnica.id)
        }
        else {
            render(view:'create',model:[responsaveltecnica:responsaveltecnica])
        }
    }
}
