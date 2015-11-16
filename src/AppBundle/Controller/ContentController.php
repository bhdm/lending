<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Content;
use AppBundle\Form\ContentType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Class ContentController
 * @package AppBundle\Controller
 * @Route("/content")
 */
class ContentController extends Controller
{

    /**
     * @Route("/list", name="content_list")
     * @Template("")
     */
    public function listAction(){
        $items = $this->getDoctrine()->getRepository('AppBundle:Content')->findAll();
        return ['items' => $items];
    }

    /**
     * @Route("/edit/{id}", name="content_edit")
     * @Template("")
     */
    public function editAction(Request $request, $id){
        $em = $this->getDoctrine()->getManager();
        $item = $this->getDoctrine()->getRepository('AppBundle:Content')->findOneById($id);
        $form = $this->createForm(new ContentType($em), $item);
        $formData = $form->handleRequest($request);
        if ($request->getMethod() == 'POST'){
            if ($formData->isValid()){
                $item = $formData->getData();
                $em->flush($item);
                $em->refresh($item);
                return $this->redirect($this->generateUrl('content_list'));
            }
        }
        return array('form' => $form->createView());
    }


    /**
     * @Route("/add", name="content_add")
     * @Template("")
     */
    public function addAction(Request $request){
        $em = $this->getDoctrine()->getManager();
        $item = new Content();
        $form = $this->createForm(new ContentType($em), $item);
        $formData = $form->handleRequest($request);
        if ($request->getMethod() == 'POST'){
            if ($formData->isValid()){
                $item = $formData->getData();
                $em->persist($item);
                $em->flush($item);
                $em->refresh($item);
                return $this->redirect($this->generateUrl('content_listn'));
            }
        }
        return array('form' => $form->createView());
    }

}