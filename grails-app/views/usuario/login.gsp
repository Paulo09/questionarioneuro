

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Login</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Usuario</g:link></span>
        </div>
        <div class="body">
            <h1>Login</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="permissao" title="Permissao" />
                        
                   	        <g:sortableColumn property="email" title="Email" />
                        
                   	        <g:sortableColumn property="foneCelular" title="Fone Celular" />
                        
                   	        <g:sortableColumn property="login" title="Login" />
                        
                   	        <g:sortableColumn property="nome" title="Nome" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${usuarioList}" status="i" var="usuario">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${usuario.id}">${fieldValue(bean:usuario, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:usuario, field:'permissao')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'email')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'foneCelular')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'login')}</td>
                        
                            <td>${fieldValue(bean:usuario, field:'nome')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Usuario.count()}" />
            </div>
        </div>
    </body>
</html>
