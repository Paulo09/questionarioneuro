import javax.servlet.http.HttpServletResponse
import grails.converters.*
import java.net.InetAddress;
import java.net.UnknownHostException;
class UsuarioController {

	///////////////////////////////////////////////////////////////
    ////           API - RESTFULL - jRestFull-API 1.4          ////
	////           @Paulo Castro v4                            ////            
	///////////////////////////////////////////////////////////////
    
    def index = { redirect(action:list,params:params) }

    def listar = {
        def objJson = Usuario.list() ?: []
		def arrObjJson=[]
     	if(params.id)
        {
			if(Usuario.findById(params.id)){
			arrObjJson.add(Usuario.findById(params.id))
			render arrObjJson as JSON}
			if(!Usuario.findById(params.id)){
			def json='{"id":'+"${params.id}"+',"msg":"Usuario nao encontrado!"}'
			render json}
        }
	    else{render objJson as JSON}
    }
	
	  def deletar = {	
		if(Usuario.findById(request.JSON.id)){
		Usuario.get(request.JSON.id)?.delete()
		render "Usuario Id:${request.JSON.id} Deletado com sucesso!"}
		else{render "${className} Id:${request.JSON.id} nao encontrado!"}
	}

    def editar = {
        Usuario c = Usuario.get(request.JSON.id)
		c.properties = request.JSON	
		if(c.save()){render "Usuario Id:${c.id} - Editado com sucesso!!" 
		}else{render "Erro: Id: ${c.id} nao encontrado!"}
    }

    def salvar = {
         def usuario = new Usuario(request.JSON)
		if(usuario.save()){
			render "Usuario Id:${usuario.id} - Salvo com sucesso!" 
		}else{render "Erro: Usuario nao foi salvo!"}	    
    }
    def varGlobal=''
	
	 def buscar ={
	     
        def buscaSingular=""
        def buscaGeral=""

        if(params.nome==""){redirect(action:list)}
		
		if(params.nome)
		{
			buscaSingular = Usuario.findAllByNomeLike("%"+params.nome+"%")
	        if(buscaSingular){
			 return [ usuarioList: buscaSingular ]
			}
            else{
                flash.message = "Usuário: ${params.nome}, não cadastrado!"
		        redirect(action:buscar)  
            }
		}
		else { 
            if(params.nome!=null){
                if(!params.max) params.max = 10
                buscaGeral = Usuario.findAll()
                return [ usuarioList: buscaGeral ]
            }
		}
      }
	  
    def login = {
	    
	    def loginUsuario = params["login"]
        def senhaUsuario = params.senha

         def usuario=Usuario.findByLoginAndSenha(loginUsuario,senhaUsuario)

        if(senhaUsuario)
        {
                
                if(usuario && usuario.permissao=="ADMIN")
                {
                    session["senha"] = senhaUsuario
                    session["usuario"] = loginUsuario
                    session["varGlobal"]=usuario.id   
                    redirect(action:menu)
                }
                if(usuario && usuario.permissao=="USUARIO")
                {
                    println "Entrou 2 Undo"
                    session["senha"] = senhaUsuario
                    session["usuario"] = loginUsuario
                    session["varGlobal"]=usuario.id   
                    redirect(action:menu,id:params.id)
                }
        } 
        if(!usuario)
		{
		   flash.message = "Usuario ${loginUsuario} não cadastrado!"
		   redirect(url:"/teste")  
		}
		
        
	}
	
	def sair={
	  session["senha"]= null
      session["usuario"] = null
	  session.invalidate()
	  redirect(url:"/teste")
	}

    def menu = {
        def usuario = Usuario.get( session["varGlobal"] )
       

        if(!usuario) {
            flash.message = "Usuario n�o encontrado id ${params.id}"
             redirect(url:"/teste")
            //redirect(action:list)
        }
        else { return [ usuario : usuario ] }
    }
   
    def list = {
        if(!params.max) params.max = 10
        [ usuarioList: Usuario.list( params ) ]
    }

    def show = {
        def usuario = Usuario.get( params.id )
        if(!usuario) {
            flash.message = "Usuario n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else { return [ usuario : usuario ] }
    }

    def delete = {
        def usuario = Usuario.get( params.id )
        if(usuario) {
            usuario.delete()
            flash.message = "Usuario ${params.id} Deletado com Sucesso!"
            redirect(action:list)
        }
        else {
            flash.message = "Usuario n�o encontrado id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def usuario = Usuario.get( params.id )

        if(!usuario) {
            flash.message = "Usuario n�o encontrado id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ usuario : usuario ]
        }
    }

    def update = {
        def usuario = Usuario.get( params.id )
        if(usuario) {
            usuario.properties = params
            if(!usuario.hasErrors() && usuario.save()) {
                flash.message = "Usuario ${params.id} Editado com sucesso!"
                redirect(action:show,id:usuario.id)
            }
            else {
                render(view:'edit',model:[usuario:usuario])
            }
        }
        else {
            flash.message = "Usuario n�o encontrado id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def usuario = new Usuario()
        usuario.properties = params
        return ['usuario':usuario]
    }

    def save = {
        def usuario = new Usuario(params)
        if(!usuario.hasErrors() && usuario.save()) {
            flash.message = "Usuario ${usuario.id} cadastrado"
            redirect(action:show,id:usuario.id)
        }
        else {
            render(view:'create',model:[usuario:usuario])
        }
    }
}
