class Questionarioenfermagem2Controller {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ questionarioenfermagem2List: Questionarioenfermagem2.list( params ) ]
    }

    def show = {
        def questionarioenfermagem2 = Questionarioenfermagem2.get( params.id )

        if(!questionarioenfermagem2) {
            flash.message = "Questionarioenfermagem2 not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ questionarioenfermagem2 : questionarioenfermagem2 ] }
    }

    def delete = {
        def questionarioenfermagem2 = Questionarioenfermagem2.get( params.id )
        if(questionarioenfermagem2) {
            questionarioenfermagem2.delete()
            flash.message = "Questionarioenfermagem2 ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Questionarioenfermagem2 not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def questionarioenfermagem2 = Questionarioenfermagem2.get( params.id )

        if(!questionarioenfermagem2) {
            flash.message = "Questionarioenfermagem2 not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ questionarioenfermagem2 : questionarioenfermagem2 ]
        }
    }

    def update = {
        def questionarioenfermagem2 = Questionarioenfermagem2.get( params.id )
        if(questionarioenfermagem2) {
            questionarioenfermagem2.properties = params
            if(!questionarioenfermagem2.hasErrors() && questionarioenfermagem2.save()) {
                flash.message = "Questionarioenfermagem2 ${params.id} updated"
                redirect(action:show,id:questionarioenfermagem2.id)
            }
            else {
                render(view:'edit',model:[questionarioenfermagem2:questionarioenfermagem2])
            }
        }
        else {
            flash.message = "Questionarioenfermagem2 not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def questionarioenfermagem2 = new Questionarioenfermagem2()
        questionarioenfermagem2.properties = params
        return ['questionarioenfermagem2':questionarioenfermagem2]
    }

    def save = {
        def questionarioenfermagem2 = new Questionarioenfermagem2(params)
        if(!questionarioenfermagem2.hasErrors() && questionarioenfermagem2.save()) {
            flash.message = "Questionarioenfermagem2 ${questionarioenfermagem2.id} created"
            redirect(action:show,id:questionarioenfermagem2.id)
        }
        else {
            render(view:'create',model:[questionarioenfermagem2:questionarioenfermagem2])
        }
    }
}
