<{*
    Label + form-control input + optional help text.

    Params:
        id            id attribute (also the default name)
        name          name attribute (default: id)
        label         label text (label is omitted when empty)
        type          input type (default: text)
        value         initial value
        maxlength     maxlength attribute
        size          size attribute
        placeholder   placeholder attribute
        autocomplete  autocomplete attribute
        required      truthy to mark the field as required
        help          help text shown below the input
        class         extra classes for the input
        wrapperClass  classes for the wrapping div (default: mb-3)
        wrapperId     id attribute of the wrapping div
*}>
<div class="<{$wrapperClass|default:'mb-3'}>"<{if $wrapperId}> id="<{$wrapperId}>"<{/if}>>
    <{if $label}>
    <label class="form-label" for="<{$id}>"><{$label}><{if $required}> <span class="text-danger">*</span><{/if}></label>
    <{/if}>
    <input type="<{$type|default:'text'}>" name="<{$name|default:$id}>" id="<{$id}>" class="form-control<{if $class}> <{$class}><{/if}>"<{if $value}> value="<{$value}>"<{/if}><{if $maxlength}> maxlength="<{$maxlength}>"<{/if}><{if $size}> size="<{$size}>"<{/if}><{if $placeholder}> placeholder="<{$placeholder}>"<{/if}><{if $autocomplete}> autocomplete="<{$autocomplete}>"<{/if}><{if $required}> required<{/if}><{if $help}> aria-describedby="<{$id}>Help"<{/if}> />
    <{if $help}>
    <div id="<{$id}>Help" class="form-text"><{$help}></div>
    <{/if}>
</div>
