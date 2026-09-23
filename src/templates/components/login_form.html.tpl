<{*
    Login form, shared by the login block and the login page.

    Params:
        formId           id attribute of the form (default: login_form)
        idPrefix         prefix for the field ids, to keep them unique when the form is on the page twice
        action           form action URL
        unameValue       initial value of the username field
        showRemember     truthy to show the "remember me" checkbox
        rememberChecked  whether "remember me" starts checked (default: 1, pass 0 to disable)
        redirect         URL to return to after logging in
        submitLabel      submit button text
        langUsername     username label
        langPassword     password label
        langRemember     "remember me" label
        extra            raw HTML appended below the button, e.g. an SSL login link
*}>
<form id="<{$formId|default:'login_form'}>" action="<{$action}>" method="post">
    <{includeq file="$theme_name/templates/components/form_field.html.tpl"
        id="`$idPrefix`uname"
        name="uname"
        label=$langUsername
        value=$unameValue
        maxlength=25
        type="text"
        wrapperClass="mb-3"
    }>
    <{includeq file="$theme_name/templates/components/form_field.html.tpl"
        id="`$idPrefix`pass"
        name="pass"
        label=$langPassword
        value=""
        maxlength=32
        type="password"
        wrapperClass="mb-3"
    }>
    <{if $showRemember}>
    <{includeq file="$theme_name/templates/components/form_check.html.tpl"
        id="`$idPrefix`rememberme"
        name="rememberme"
        label=$langRemember
        value=""
        checked=$rememberChecked|default:1
        wrapperClass="form-check mb-3"
    }>
    <{/if}>
    <{includeq file="$theme_name/templates/components/form_hidden.html.tpl" name="xoops_redirect" value=$redirect}>
    <{includeq file="$theme_name/templates/components/form_hidden.html.tpl" name="op" value="login"}>
    <{includeq file="$theme_name/templates/components/button.html.tpl" label=$submitLabel type="submit" variant="primary" class="mb-3" id="" name="" attrs=""}>
    <{$extra}>
</form>
