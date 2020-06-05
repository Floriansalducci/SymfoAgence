<?php

namespace App\Controller\Admin;

use App\Entity\Option;
use App\Entity\Property;
use App\Form\PropertyType;
use App\Repository\PropertyRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AdminPropertyController extends abstractController
{
    /**.
     * @pvar PropertyRepository
     */
    private $repository;
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
         * @route("/admin", name="admin.property.index")
         *  @return Response
         */
        public function index()
        {
            $properties = $this->repository->findAll();
            return $this->render('admin/property/index.html.twig', compact('properties'));
        }



    /**
     * @Route("/admin/property/create", name="admin.property.new")
     */
        public function new(Request $request)
        {
            $property = new Property();
            $form = $this->createForm(PropertyType::class, $property);
            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                $this->em->persist($property);
                $this->em->flush();
                $this->addFlash('success','Vôtre bien à bien été crée ');

                return $this->redirectToRoute('admin.property.index');
            }
            return $this->render('admin/property/new.html.twig',[
                'property'=> $property,
                'form'=> $form->createView()
            ]);
        }




        /**
         * @route("/admin/property/{id}", name="admin.property.edit", methods="GET|POST")
         */
        public function edit(Property $property, Request $request)
        {


            $form = $this->createForm(PropertyType::class, $property);
            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                $this->em->flush();
                $this->addFlash('success','Vôtre bien à bien été modifié ');
                return $this->redirectToRoute('admin.property.index');
            }

            return $this->render('admin/property/edit.html.twig',[
                'property'=> $property,
                'form'=> $form->createView()
            ]);
        }


    /**
     * @route("/admin/property/{id}/delete", name="admin.property.delete", methods={"GET"})
     *
     * @return \Symfony\Component\HttpFoundation\RedirectResponse
     */
        public function delete($id, Request $request)
        {
            // je recupère mon entité
            $property= $this->getDoctrine()->getRepository(Property::class)->find($id);

            if($this->isCsrfTokenValid('delete' . $property->getId(), $request->get('_token') )){
                $em = $this->getDoctrine()->getManager();
                // je dit au manager que cette entité devra faire l'objet d'une suppression
                $em->remove($property);
                // je demande au manager d'executer dans la BDD toute les modifications qui ont été faites sur les entités
                $em->flush();
                $propertyTitle = $property->getTitle();
                $this->addFlash('info', "Vôtre bien à été supprimé");

            }

            return $this->redirectToRoute('admin.property.index');



        }
}