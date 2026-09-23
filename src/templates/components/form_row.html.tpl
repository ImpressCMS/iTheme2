<{*
    Row for an element of an ImpressCMS generated form: label, pre-rendered
    element HTML and optional help text.

    Params:
        id            element name; used for the row id (<id>_row) and the label
        caption       label text
        body          pre-rendered element HTML
        description   help text shown below the element
        required      truthy to show a required marker
        wrapperClass  classes for the row (default: form-outline)
*}>
<div class="<{$wrapperClass|default:'form-outline'}>" id="<{$id}>_row">
    <label for="<{$id}>" class="form-label"><{$caption}><{if $required}> <span class="text-danger">*</span><{/if}></label>
    <{$body}>
    <{if $description}>
    <div id="<{$id}>Help" class="form-text"><{$description}></div>
    <{/if}>
</div>
