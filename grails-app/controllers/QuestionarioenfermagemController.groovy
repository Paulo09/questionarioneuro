import javax.servlet.http.HttpServletResponse
import grails.converters.*
class QuestionarioenfermagemController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////
	///////////////////////////////////////////////////////////////

    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Questionarioenfermagem.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Questionarioenfermagem.findById(params.id)){
			arrObjJson.add(Questionarioenfermagem.findById(params.id))
			render arrObjJson as JSON}
			if(!Questionarioenfermagem.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Questionarioenfermagem nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }

	  def deletar = {
		if(Questionarioenfermagem.findById(request.JSON.id)){
		Questionarioenfermagem.get(request.JSON.id)?.delete()
		render "Questionarioenfermagem Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Questionarioenfermagem c = Questionarioenfermagem.get(request.JSON.id)
		c.properties = request.JSON
		if(c.save()){render "Questionarioenfermagem Id:${c.id} - Editado com sucesso!!"
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def questionarioenfermagem = new Questionarioenfermagem(request.JSON)
		if(questionarioenfermagem.save()){
			render "Questionarioenfermagem Id:${questionarioenfermagem.id} - Salvo com sucesso!"
		}else{render "Erro: Questionarioenfermagem nao foi salvo!"}
    }

     def buscar ={

        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}

		if(params.nome)
		{

            if (params.nome.isInteger()){
                buscaSingular = Questionarioenfermagem.findAllById(params.nome)

                if(buscaSingular){
                return [ questionarioenfermagemList: buscaSingular ]
                }
                else{
                    flash.message = "Questionario Enfermagem:${params.nome}, não cadastrado!"
                    redirect(action:buscar)
                }
		    }
            else{
                    flash.message = "Questionario Enfermagem:${params.nome} Digite id!"
                    redirect(action:buscar)
                }
        }
		else {
            if(params.nome!=null){
                //if(!params.max) params.max = 10
                buscaGeral = Questionarioenfermagem.findAll()
                return [ questionarioenfermagemList: buscaGeral ]
            }
		}
    }


    def list = {
        if(!params.max) params.max = 10
        [ questionarioenfermagemList: Questionarioenfermagem.list( params ) ]
    }

    def show = {
        def questionarioenfermagem = Questionarioenfermagem.get( params.id )

        if(!questionarioenfermagem) {
            flash.message = "Questionarioenfermagem não encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionarioenfermagem : questionarioenfermagem ] }
    }

    def delete = {
        def questionarioenfermagem = Questionarioenfermagem.get( params.id )
        if(questionarioenfermagem) {
            questionarioenfermagem.delete()
            flash.message = "Questionarioenfermagem ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Questionarioenfermagem não encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionarioenfermagem = Questionarioenfermagem.get( params.id )

        if(!questionarioenfermagem) {
            flash.message = "Questionarioenfermagem não encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionarioenfermagem : questionarioenfermagem ]
        }
    }

    def update = {
        def questionarioenfermagem = Questionarioenfermagem.get( params.id )
        if(questionarioenfermagem) {
            questionarioenfermagem.properties = params
            if(!questionarioenfermagem.hasErrors() && questionarioenfermagem.save()) {
                flash.message = "Questionarioenfermagem ${params.id} Editado com sucesso!"
                redirect(action:show,id:questionarioenfermagem.id)
            }
            else {
                render(view:'edit',model:[questionarioenfermagem:questionarioenfermagem])
            }
        }
        else {
            flash.message = "Questionarioenfermagem não encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionarioenfermagem = new Questionarioenfermagem([paciente:Paciente.get(params.id)])
        questionarioenfermagem.properties = params
        return ['questionarioenfermagem':questionarioenfermagem]
    }

    def save = {
        def questionarioenfermagem = new Questionarioenfermagem(params)
        if(!questionarioenfermagem.hasErrors() && questionarioenfermagem.save()) {
            flash.message = "Questionarioenfermagem ${questionarioenfermagem.id} cadastrado"
            redirect(action:show,id:questionarioenfermagem.id)
        }
        else {
            render(view:'create',model:[questionarioenfermagem:questionarioenfermagem])
        }
    }
}
