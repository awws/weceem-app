<%@ page import="org.weceem.auth.*" %>

<html>
  <head>
        <meta name="layout" content="weceemadmin"/>
        <link rel="stylesheet" href="${g.resource(dir:'_weceem/css', file:'admin.css').encodeAsHTML()}"/>
        <title><g:message code="user.title.edit"/></title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-xs-12">
          <bean:errorClass>ui-state-error</bean:errorClass>
        </div>
      </div>

      <g:form controller="CMSUser" action="update" method="POST">
        <g:if test="${CMSUserInstance?.id}">
          <input type="hidden" name="id" value="${CMSUserInstance?.id}"/>
        </g:if>

        <div class="row">
          <div class="col-md-12 col-xs-12">
            <h1><g:message code="user.title.edit" encodeAs="HTML"/></h1>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12 col-xs-12">
            <g:render template="fields"/>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12 col-xs-12">
            <g:actionSubmit class="button" action="update"
                        value="${message(code: 'command.save', encodeAs:'HTML')}"/>
            <g:actionSubmit class="button" action="list"
                        value="${message(code: 'command.cancel', encodeAs:'HTML')}"/>
          </div>
        </div>
      </g:form>
    </div>
  </body>
</html>
