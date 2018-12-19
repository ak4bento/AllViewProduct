{extends file='parent:widgets/checkout/info.tpl'}

{block name="frontend_index_checkout_actions_notepad" append}
    <li class="navigation--entry entry--notepad" role="menuitem">
        <a href="{url controller='ViewProduct'}" class="btn">
            <i class="icon--star"></i>

            <span class="badge is--primary cart--quantity">{$results}</span>
        </a>
    </li>
{/block}
