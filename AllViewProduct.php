<?php
namespace AllViewProduct;

use Shopware\Components\Plugin;

class AllViewProduct extends Plugin
{
    public static function getSubscribedEvents()
    {
        return [
            'Enlight_Controller_Action_PreDispatch_Frontend' => 'onPreDispatchTemplateRegistration'
        ];
    }

    public static function onPreDispatchTemplateRegistration(\Enlight_Event_EventArgs $args)
    {
        /** @var \Shopware_Controllers_Frontend $subject */
        $controller = $args->getSubject();

        //Register Template Directory
        $controller->View()->addTemplateDir(__DIR__.'/Resource/views');
    }
}