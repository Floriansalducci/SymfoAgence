<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController{

    /**
     *@Route("/login", name="login")
     */
    public function login(AuthenticationUtils $authenticationUtils)
    {
        $error = $authenticationUtils->getLastAuthenticationError();
        //Methode qui permet de recupéré le derniere utilisateur
        $lastUsername= $authenticationUtils->getLastUsername();
      return $this->render('security/login.html.twig', [
          'last_username'=> $lastUsername,
          'error'=>$error
      ]);
    }


}