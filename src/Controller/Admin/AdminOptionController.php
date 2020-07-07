<?php

namespace App\Controller\Admin;

use App\Entity\Option;
use App\Entity\Property;
use App\Form\OptionType;
use App\Form\PropertyType;
use App\Repository\OptionRepository;
use App\Repository\PropertyRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/option")
 */
class AdminOptionController extends AbstractController
{

    /**
     * @var EntityManagerInterface
     */
    private $em;


    public function __construct(PropertyRepository $repository, EntityManagerInterface $em)
    {
        $this->repository = $repository;
        $this->em = $em;


    }

    /**
     * @Route("/", name="admin.option.index", methods={"GET"})
     */


    public function index(OptionRepository $optionRepository): Response
    {
        return $this->render('admin/option/index.html.twig', [
            'options' => $optionRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="admin.option.new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $option = new Option();
        $form = $this->createForm(OptionType::class, $option);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($option);
            $entityManager->flush();

            return $this->redirectToRoute('admin.option.index');
        }

        return $this->render('admin/option/new.html.twig', [
            'option' => $option,
            'form' => $form->createView(),
        ]);
    }


    /**
     * @Route("/{id}/edit", name="admin.option.edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Option $option): Response
    {
        $form = $this->createForm(OptionType::class, $option);
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {
            $this->em->flush();
            $this->addFlash('success','Vôtre option à bien été modifié ');
            return $this->redirectToRoute('admin.option.index');
        }

        return $this->render('admin/option/edit.html.twig', [
            'option' => $option,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin.option.delete", methods={"GET"})
     */
    public function delete(Request $request, Option $option): Response
    {
        // je recupère mon entité
        $option= $this->getDoctrine()->getRepository(Option::class)->find($option);

        if($this->isCsrfTokenValid('delete' . $option->getId(), $request->get('_token') )){
            $em = $this->getDoctrine()->getManager();
            // je dit au manager que cette entité devra faire l'objet d'une suppression
            $em->remove($option);
            // je demande au manager d'executer dans la BDD toute les modifications qui ont été faites sur les entités
            $em->flush();
            $optionName = $option->getName();
            $this->addFlash('info', "Vôtre bien à été supprimé");

        }

        return $this->redirectToRoute('admin.option.index');
    }
}
