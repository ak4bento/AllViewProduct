{extends file="parent:frontend/index/index.tpl"}


{block name="frontend_index_sidebar"}
{/block}

{block name='frontend_index_content'}
    <h1>All Product</h1>

    {action module='widgets' controller='listing' action='topSeller'}

    {block name='frontend_home_index_promotions'}
        <div class="content--emotions">
            {foreach $result as $results}
                <div class="product-slider--item" style="width: 20%;">
                    <div class="product--box box--slider" data-page-index="" data-ordernumber="{$results.id}" data-category-id="">
                        <div class="box--content is--rounded">
                            <div class="product--info">
                                <a href="http://localhost/task/electronic/phone/1/iphone" title="{$results.name}" class="product--image">
                                    <span class="image--element">
                                        <span class="image--media">
                                            <img srcset="http://localhost/task/media/image/9d/d5/e9/12256976_4a3e335b-2ec8-43de-9a39-c4a5cdd6aa26_700_700_200x200.png, http://localhost/task/media/image/9f/95/77/12256976_4a3e335b-2ec8-43de-9a39-c4a5cdd6aa26_700_700_200x200@2x.png 2x" alt="iphone" title="iphone">
                                        </span>
                                    </span>
                                </a>
                                <a href="http://localhost/task/electronic/phone/1/iphone" class="product--title" title="{$results.name}">
                                    {$results.name}
                                </a>
                                <div class="product--price-info">
                                    <div class="price--unit">
                                        <span class="price--label label--purchase-unit is--bold is--nowrap">
                                            Content
                                        </span>
                                        <span class="is--nowrap">
                                            1 Unit
                                        </span>
                                    </div>
                                    <div class="product--price">
                                        <span class="price--default is--nowrap">
                                            $12.00
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
    {/block}

{/block}