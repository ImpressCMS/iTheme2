<{*
    Bootstrap button.

    Params:
        label    button text
        type     button type (default: submit)
        variant  Bootstrap variant, e.g. primary, outline-success (default: primary)
        class    extra classes
        id       id attribute
        name     name attribute
        attrs    raw extra attributes
*}>
<button type="<{$type|default:'submit'}>" class="btn btn-<{$variant|default:'primary'}><{if $class}> <{$class}><{/if}>"<{if $id}> id="<{$id}>"<{/if}><{if $name}> name="<{$name}>"<{/if}><{if $attrs}> <{$attrs}><{/if}>><{$label}></button>
