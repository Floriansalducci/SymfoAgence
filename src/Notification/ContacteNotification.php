<?php

namespace App\Notification;
use Twig\Environment;


class ContacteNotification{


    /**
     * @var \Swift_Mailer
     */
    private $mailer;


    /**
     * @var Environment
     */
    private $renderer;

    public function __construct(\Swift_Mailer $mailer,Environment $renderer){

        $this->mailer = $mailer;
        $this->renderer = $renderer;
    }

    public function notify($contacte){
        $message = (new \Swift_Message( 'Agence : ' . $contacte->getProperty()->getTitle()))
            ->setFrom('noreply@agence.fr')
            ->setTo('contact@agence.fr')
            ->setReplyTo($contacte->getEmail())
            ->setBody($this->renderer->render('emails/contacte.html.twig', [
                'contacte' => $contacte
            ]),'text/html');
        $this->mailer->send($message);

    }

}