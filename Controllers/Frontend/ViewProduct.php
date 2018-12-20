<?php

class Shopware_Controllers_Frontend_ViewProduct extends Enlight_Controller_Action
{
    public function preDispatch()
    {
//        $query = $this->container->get('dbal_connection')->createQueryBuilder();
//
//        $query->select('articles.*')
//            ->from('s_articles','articles')
//            ->where('active = :active')
//            ->setParameter('active', true);

//        $result = $query->execute()->fetchAll();

        $connection = $this->container->get('dbal_connection');
        $sql = 'SELECT a.*,b.* FROM s_articles a INNER JOIN s_articles_details b ON a.id = b.articleID WHERE a.active = :active GROUP BY a.id';
        $result = $connection->fetchAll($sql, [':active' => true]);

        $this->view->assign('result',$result);
    }

    public function indexAction()
    {
        $query = $this->container->get('dbal_connection')->createQueryBuilder();

        $query->select('COUNT(*) as res')
            ->from('s_articles');

        $results = $query->execute()->fetchAll();

        $this->view->assign('count', $results);
    }

    public function infoAction()
    {
        $query = $this->container->get('dbal_connection')->createQueryBuilder();

        $query->select('COUNT(*) as res')
            ->from('s_articles')
            ->where('active = :active')
            ->setParameter('active', true);

        $results = $query->execute()->fetchAll();

        $this->view->assign('results', $results);
    }
}