{extends file="parent:frontend/index/index.tpl"}


{block name="frontend_index_sidebar"}
{/block}

{block name='frontend_index_content'}
    <h1>All Product {$count[0].res}</h1>

    {action module='widgets' controller='listing' action='topSeller'}

    {block name='frontend_home_index_promotions'}
        <!-- Include of the product box -->
        {$s = 1}
        {foreach $result as $results}
            <div class="product--box box--basic" style="padding-left: 5px; padding-right: 5px">
                <div class="box--content is--rounded">
                    <div class="product--info">
                        <a href="#" class="product--image">
                            <img srcset="http://localhost/task/media/image/9d/d5/e9/12256976_4a3e335b-2ec8-43de-9a39-c4a5cdd6aa26_700_700_200x200.png, http://localhost/task/media/image/9f/95/77/12256976_4a3e335b-2ec8-43de-9a39-c4a5cdd6aa26_700_700_200x200@2x.png 2x" alt="iphone" title="iphone">
                        </a>

                        <div class="product--rating-container">
                            <!-- Product rating stars -->
                        </div>

                        <a href="#" class="product--title" title="">
                            {$results.name} {$s++}
                        </a>

                        <div class="product--description">
                            {$results.description_long}
                        </div>

                        <div class="product--price-info">
                            <div class="price--unit">
                                <!-- Optional unit price -->
                            </div>
                            <div class="product--price">
                                <span class="price--default is--nowrap">
                                    35,00 €
                                </span>
                            </div>
                        </div>

                        <div class="product--actions">
                            <!-- Product action links e.g. product compare -->
                        </div>
                    </div>
                </div>
            </div>
        {/foreach}
    {/block}

{/block}