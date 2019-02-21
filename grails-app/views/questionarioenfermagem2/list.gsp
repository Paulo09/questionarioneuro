

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Questionarioenfermagem2 List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Questionarioenfermagem2</g:link></span>
        </div>
        <div class="body">
            <h1>Questionarioenfermagem2 List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="tipoAssistenciaEnfermagem" title="Tipo Assistencia Enfermagem" />
                        
                   	        <g:sortableColumn property="posicaoColeta" title="Posicao Coleta" />
                        
                   	        <g:sortableColumn property="roncoColeta" title="Ronco Coleta" />
                        
                   	        <g:sortableColumn property="anotacoesEnfermagem" title="Anotacoes Enfermagem" />
                        
                   	        <g:sortableColumn property="aoColeta" title="Ao Coleta" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${questionarioenfermagem2List}" status="i" var="questionarioenfermagem2">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${questionarioenfermagem2.id}">${fieldValue(bean:questionarioenfermagem2, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:questionarioenfermagem2, field:'tipoAssistenciaEnfermagem')}</td>
                        
                            <td>${fieldValue(bean:questionarioenfermagem2, field:'posicaoColeta')}</td>
                        
                            <td>${fieldValue(bean:questionarioenfermagem2, field:'roncoColeta')}</td>
                        
                            <td>${fieldValue(bean:questionarioenfermagem2, field:'anotacoesEnfermagem')}</td>
                        
                            <td>${fieldValue(bean:questionarioenfermagem2, field:'aoColeta')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Questionarioenfermagem2.count()}" />
            </div>
        </div>
    </body>
</html>
