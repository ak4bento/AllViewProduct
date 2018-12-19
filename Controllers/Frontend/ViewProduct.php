<?php

class Shopware_Controllers_Frontend_ViewProduct extends Enlight_Controller_Action
{
    public function preDispatch()
    {
        $query = $this->container->get('dbal_connection')->createQueryBuilder();

        $query->select('*')
            ->from('s_articles');

        $result = $query->execute()->fetchAll();

        $this->view->assign('result',$result);
    }

    public function indexAction()
    {
        $this->view->assign('nextPage', 'foo');
    }
}