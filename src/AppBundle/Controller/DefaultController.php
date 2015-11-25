<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="main_page")
     * @Template("")
     */
    public function indexAction(Request $request)
    {
        $isPost = false;

        if ($request->request->get('phone') && $request->request->get('name')){
            $isPost = true;
            $message = \Swift_Message::newInstance()
                ->setSubject('Новый запрос')
                ->setFrom('info@visahelper.ru')
                ->setTo('visahelper@mail.ru')
                ->setBody(
                    'Новый запрос от '.$request->request->get('name').' ( '.$request->request->get('phone').' ) ',
                    'text/html'
                )
                /*
                 * If you also want to include a plaintext version of the message
                ->addPart(
                    $this->renderView(
                        'Emails/registration.txt.twig',
                        array('name' => $name)
                    ),
                    'text/plain'
                )
                */
            ;
            $this->get('mailer')->send($message);
        }
        return ['isPost' => $isPost];
    }

}
