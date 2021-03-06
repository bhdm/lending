<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Country;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

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
                ->setTo('savkina@mail.ru')
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

        $contents = $this->getDoctrine()->getRepository('AppBundle:Content')->findBy([],['id' => 'ASC']);
        return ['isPost' => $isPost, 'contents' => $contents];
    }


    /**
     * @Route("/country/info/set", name="country_info_set")
     */
    public function setCountryAction(){
        $em = $this->getDoctrine()->getManager();
        $title = 'Бельгия';
        $body = ' <div class="col-xs-5"><img src="/bundles/app/images/img-country-11.png"></div>
                    <div class="col-xs-7">
                        <table class="tbl">
                            <tr>
                                <td class="th1" style="width: 120px">Тип визы</td>
                                <td class="th2" style="width: 150px">Срок оформления</td>
                                <td class="th3">Подача документов через аккредитованное агентство</td>
                                <td class="th4">Личная подача документов в визовый центр</td>
                            </tr>
                            <tr>
                                <td>до 15 дней</td>
                                <td>5-6 рабочих дней</td>
                                <td class="euro">160€</td>
                                <td class="euro">80€</td>
                            </tr>
                            <tr>
                                <td>до 30/90 дней</td>
                                <td>5-6 рабочих дней</td>
                                <td class="euro">240€</td>
                                <td class="euro">140€</td>
                            </tr>
                            <tr>
                                <td>до 90/180 дней</td>
                                <td>5-6 рабочих дней</td>
                                <td class="euro">350€</td>
                                <td class="euro">200€</td>
                            </tr>

                            <tr>
                                <td>180/365 бизн.млт.</td>
                                <td>5-6 рабочих дней</td>
                                <td class="euro">400€</td>
                                <td class="euro">300€</td>
                            </tr>
                            <tr>
                                <td>2 года бизн.млт.</td>
                                <td>5-6 рабочих дней</td>
                                <td class="euro">550€</td>
                                <td class="euro">350€</td>
                            </tr>
                        </table>
                    </div>';

        $country = new Country();
        $country->setTitle($title);
        $country->setBody($body);
//        $em->persist($country);
//        $em->flush($country);

        return new Response($body);
    }

    /**
     * @Route("/country/info", name="country_info")
     */
    public function countryAction(Request $request){
        $country = $this->getDoctrine()->getRepository('AppBundle:Country')->find($request->request->get('id'));
        return new Response($country->getBody());
    }


}
