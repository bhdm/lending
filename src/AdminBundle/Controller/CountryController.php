<?php

namespace AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/country")
 */
class CountryController extends Controller
{
    /**
     * @Route("/list", name="country_list")
     * @Template()
     */
    public function listAction()
    {
        $countries = $this->getDoctrine()->getRepository('AppBundle:Country')->findAll();
        return array(
                'countries' => $countries,
            );
    }

    /**
     * @Route("/edit/{id}", name="country_edit")
     * @Template()
     */
    public function editAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();
        $country = $this->getDoctrine()->getRepository('AppBundle:Country')->findOneById($id);
        $form = $this->createFormBuilder($country)
            ->add('title', 'text', ['label' => 'Название'])
            ->add('body', 'textarea')
            ->add('submit', 'submit', array('label' => 'Сохранить'))
            ->getForm();
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $page = $form->getData();
            $em->flush($page);
            return $this->redirectToRoute('country_list');
        }


        return array(
                'form' => $form->createView(),
                'country' => $country
            );
    }

}
