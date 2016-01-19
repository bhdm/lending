<?php

namespace AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/page")
 */
class PageController extends Controller
{
    /**
     * @Route("/list", name="page_list")
     * @Template()
     */
    public function listAction()
    {
        $pages = $this->getDoctrine()->getRepository('AppBundle:Content')->findAll();
        return array(
                'pages' => $pages,
            );
    }

    /**
     * @Route("/edit/{id}", name="page_edit")
     * @Template()
     */
    public function editAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();
        $page = $this->getDoctrine()->getRepository('AppBundle:Content')->findOneById($id);
        $form = $this->createFormBuilder($page)
            ->add('title', 'text', ['label' => 'Название'])
            ->add('body', 'textarea')
            ->add('submit', 'submit', array('label' => 'Сохранить'))
            ->getForm();
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $page = $form->getData();
            $em->flush($page);
            return $this->redirectToRoute('page_list');
        }


        return array(
                'form' => $form->createView(),
                'page' => $page
            );
    }

}
