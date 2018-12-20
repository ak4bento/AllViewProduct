{extends file='parent:widgets/checkout/info.tpl'}

{block name="frontend_index_checkout_actions_notepad" prepend}
    <li class="navigation--entry entry--notepad" role="menuitem">
        <a href="{url controller='ViewProduct'}" class="btn" title="All Product">
            <i class="icon--list"></i>

            {*<span class="badge is--primary cart--quantity">{s controller='ViewProduct' name='info'}{/s}</span>*}
        </a>
    </li>
{/block}
