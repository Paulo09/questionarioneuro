

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Questionarioenfermagem2</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Questionarioenfermagem2 List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Questionarioenfermagem2</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Questionarioenfermagem2</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${questionarioenfermagem2}">
            <div class="errors">
                <g:renderErrors bean="${questionarioenfermagem2}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionarioenfermagem2?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoAssistenciaEnfermagem">Tipo Assistencia Enfermagem:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'tipoAssistenciaEnfermagem','errors')}">
                                    <g:select id="tipoAssistenciaEnfermagem" name="tipoAssistenciaEnfermagem" from="${questionarioenfermagem2.constraints.tipoAssistenciaEnfermagem.inList}" value="${questionarioenfermagem2.tipoAssistenciaEnfermagem}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="posicaoColeta">Posicao Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'posicaoColeta','errors')}">
                                    <g:select id="posicaoColeta" name="posicaoColeta" from="${questionarioenfermagem2.constraints.posicaoColeta.inList}" value="${questionarioenfermagem2.posicaoColeta}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="roncoColeta">Ronco Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'roncoColeta','errors')}">
                                    <g:select id="roncoColeta" name="roncoColeta" from="${questionarioenfermagem2.constraints.roncoColeta.inList}" value="${questionarioenfermagem2.roncoColeta}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anotacoesEnfermagem">Anotacoes Enfermagem:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'anotacoesEnfermagem','errors')}">
                                    <input type="text" id="anotacoesEnfermagem" name="anotacoesEnfermagem" value="${fieldValue(bean:questionarioenfermagem2,field:'anotacoesEnfermagem')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="aoColeta">Ao Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'aoColeta','errors')}">
                                    <input type="text" id="aoColeta" name="aoColeta" value="${fieldValue(bean:questionarioenfermagem2,field:'aoColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="epapColeta">Epap Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'epapColeta','errors')}">
                                    <input type="text" id="epapColeta" name="epapColeta" value="${fieldValue(bean:questionarioenfermagem2,field:'epapColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="eventosExame">Eventos Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'eventosExame','errors')}">
                                    <input type="text" id="eventosExame" name="eventosExame" value="${fieldValue(bean:questionarioenfermagem2,field:'eventosExame')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fugaColeta">Fuga Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'fugaColeta','errors')}">
                                    <input type="text" id="fugaColeta" name="fugaColeta" value="${fieldValue(bean:questionarioenfermagem2,field:'fugaColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hipoColeta">Hipo Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'hipoColeta','errors')}">
                                    <input type="text" id="hipoColeta" name="hipoColeta" value="${fieldValue(bean:questionarioenfermagem2,field:'hipoColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="horaColeta">Hora Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'horaColeta','errors')}">
                                    <input type="text" id="horaColeta" name="horaColeta" value="${fieldValue(bean:questionarioenfermagem2,field:'horaColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="interfaceutilizada">Interfaceutilizada:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'interfaceutilizada','errors')}">
                                    <g:select optionKey="id" from="${Interfaceutilizada.list()}" name="interfaceutilizada.id" value="${questionarioenfermagem2?.interfaceutilizada?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ipapColeta">Ipap Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'ipapColeta','errors')}">
                                    <input type="text" id="ipapColeta" name="ipapColeta" value="${fieldValue(bean:questionarioenfermagem2,field:'ipapColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paciente">Paciente:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'paciente','errors')}">
                                    <g:select optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionarioenfermagem2?.paciente?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sao2Coleta">Sao2 Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem2,field:'sao2Coleta','errors')}">
                                    <input type="text" id="sao2Coleta" name="sao2Coleta" value="${fieldValue(bean:questionarioenfermagem2,field:'sao2Coleta')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
