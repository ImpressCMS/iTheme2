<{*
    Anchor with optional "active" state.

    Params:
        href         link target (default: #)
        label        link text
        title        title attribute (default: label)
        class        extra classes
        active       truthy to mark the link as active
        activeClass  class added when active (default: actlink)
        current      current value, e.g. $xoops_dirname; the link is active when current == match
        match        value this link represents
        attrs        raw extra attributes, e.g. rel="nofollow"
*}>
<{assign var=linkActive value=0}>
<{if $active}>
    <{assign var=linkActive value=1}>
<{elseif $current && $current == $match}>
    <{assign var=linkActive value=1}>
<{/if}>
<a href="<{$href|default:'#'}>" title="<{$title|default:$label}>"<{if $class || $linkActive}> class="<{$class}><{if $linkActive}><{if $class}> <{/if}><{$activeClass|default:'actlink'}><{/if}>"<{/if}><{if $attrs}> <{$attrs}><{/if}>><{$label}></a>
