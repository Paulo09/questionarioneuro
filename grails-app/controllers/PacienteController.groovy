import javax.servlet.http.HttpServletResponse
import grails.converters.*
class PacienteController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////
	///////////////////////////////////////////////////////////////

    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Paciente.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Paciente.findById(params.id)){
			arrObjJson.add(Paciente.findById(params.id))
			render arrObjJson as JSON}
			if(!Paciente.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Paciente nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }

	  def deletar = {
		if(Paciente.findById(request.JSON.id)){
		Paciente.get(request.JSON.id)?.delete()
		render "Paciente Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Paciente c = Paciente.get(request.JSON.id)
		c.properties = request.JSON
		if(c.save()){render "Paciente Id:${c.id} - Editado com sucesso!!"
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def paciente = new Paciente(request.JSON)
		if(paciente.save()){
			render "Paciente Id:${paciente.id} - Salvo com sucesso!"
		}else{render "Erro: Paciente nao foi salvo!"}
    }

    def buscar ={

        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}

		if(params.nome)
		{
			buscaSingular = Paciente.findAllByNomeLike("%"+params.nome+"%")
	        if(buscaSingular){
			 return [ pacienteList: buscaSingular ]
			}
            else{
                flash.message = "Paciente: ${params.nome}, não cadastrado!"
		        redirect(action:buscar)
            }
		}
		else {
            if(params.nome!=null){
                if(!params.max) params.max = 10
                buscaGeral = Paciente.findAll()
                return [ pacienteList: buscaGeral ]
            }
		}
    }


    def list = {
        if(!params.max) params.max = 10
        [ pacienteList: Paciente.list( params ) ]
    }

    def show = {
        def paciente = Paciente.get( params.id )

        if(!paciente) {
            flash.message = "Paciente não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ paciente : paciente ] }
    }

    def delete = {
        def paciente = Paciente.get( params.id )
        if(paciente) {
            paciente.delete()
            flash.message = "Paciente ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Paciente n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def paciente = Paciente.get( params.id )

        if(!paciente) {
            flash.message = "Paciente n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ paciente : paciente ]
        }
    }

    def update = {
        def paciente = Paciente.get( params.id )
        if(paciente) {
            paciente.properties = params
            if(!paciente.hasErrors() && paciente.save()) {
                flash.message = "Paciente ${params.id} Editado com Sucesso!"
                redirect(action:show,id:paciente.id)
            }
            else {
                render(view:'edit',model:[paciente:paciente])
            }
        }
        else {
            flash.message = "Paciente não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def paciente = new Paciente()
        paciente.properties = params
        return ['paciente':paciente]
    }

    def save = {
        def paciente = new Paciente(params)
        if(!paciente.hasErrors() && paciente.save()) {
            flash.message = "Paciente ${paciente.id} cadastrado"
            redirect(action:show,id:paciente.id)
        }
        else {
            render(view:'create',model:[paciente:paciente])
        }
    }
}
