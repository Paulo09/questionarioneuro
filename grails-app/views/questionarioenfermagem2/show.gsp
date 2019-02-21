

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Questionarioenfermagem2</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Questionarioenfermagem2 List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Questionarioenfermagem2</g:link></span>
        </div>
        <div class="body">
            <h1>Show Questionarioenfermagem2</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tipo Assistencia Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'tipoAssistenciaEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Posicao Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'posicaoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ronco Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'roncoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Anotacoes Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'anotacoesEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ao Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'aoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Epap Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'epapColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Eventos Exame:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'eventosExame')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Fuga Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'fugaColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Hipo Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'hipoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Hora Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'horaColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Interfaceutilizada:</td>
                            
                            <td valign="top" class="value"><g:link controller="interfaceutilizada" action="show" id="${questionarioenfermagem2?.interfaceutilizada?.id}">${questionarioenfermagem2?.interfaceutilizada?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ipap Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'ipapColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Paciente:</td>
                            
                            <td valign="top" class="value"><g:link controller="paciente" action="show" id="${questionarioenfermagem2?.paciente?.id}">${questionarioenfermagem2?.paciente?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Sao2 Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem2, field:'sao2Coleta')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${questionarioenfermagem2?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
