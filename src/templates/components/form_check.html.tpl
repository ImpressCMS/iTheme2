<{*
    Checkbox with label.

    Params:
        id            id attribute (also the default name)
        name          name attribute (default: id)
        label         label text
        value         value attribute
        checked       truthy to render the checkbox checked
        wrapperClass  classes for the wrapping div (default: form-check)
*}>
<div class="<{$wrapperClass|default:'form-check'}>">
    <input type="checkbox" class="form-check-input" name="<{$name|default:$id}>" id="<{$id}>" value="<{$value}>"<{if $checked}> checked<{/if}> />
    <label class="form-check-label" for="<{$id}>"><{$label}></label>
</div>
