<{*
    Menu blocks rendered as navbar items. Must be placed inside a <ul>.

    Params:
        blocks     array of menu blocks (the block content is the item markup)
        itemClass  classes for each <li> (default: nav-item)
*}>
<{foreach from=$blocks item=block}>
<li class="<{$itemClass|default:'nav-item'}>"><{$block.content}></li>
<{/foreach}>
