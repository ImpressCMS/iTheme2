<nav class="navbar flex-md-nowrap p-0 shadow border-bottom mb-3">

        <a class="navbar-brand" href="<{$icms_url}>" aria-label="<{$icms_sitename}> Home"><img src="<{$icms_imageurl}>img/impresscms-logo.svg" class="img-fluid" alt="<{$icms_sitename}> logo"></a>
        <button class="navbar-toggler d-md-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <{if $xoBlocks.page_menu}>
        <div class="d-flex justify-content-center collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav flex-row">
                <{includeq file="$theme_name/templates/blockszone_menu.html.tpl" blocks=$xoBlocks.page_menu zoneId="menu"}>
            </ul>
        </div>
        <{/if}>

</nav>

