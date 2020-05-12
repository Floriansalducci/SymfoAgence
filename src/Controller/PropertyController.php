<?php
namespace App\Controller;

use App\Entity\Property;
use App\Repository\PropertyRepository;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;



class PropertyController extends AbstractController {

    /**
     * @var PropertyRepository
     */
    private $repository;




    private $em;

    public function __construct(PropertyRepository $repository, EntityManagerInterface $em)
    {
        $this->repository = $repository;
        $this->em = $em;
    }

    /**
     * @route ("/biens", name="property.index")
     * @return Response
     */
public function index(): response
{

    return $this->render('property/index.html.twig', [
    'current_menu'=>'properties'
]);
}

    /**
     * @route ("/biens/{slug}-{id}", name="property.show", requirements={"slug": "[a-z0-9\-]*"})
     * @param Property $property
     * @return Response
     */
public function show(Property $property, string $slug): Response
{
    if($property->getSlug() !== $slug){
        return $this->redirectToRoute('property.show', [
            'id'=> $property->getId(),
            'slug'=> $property->getSlug()
        ], 301);
    }
    return $this->render('property/show.html.twig',[
        'property'=> $property,
    'current_menu'=>'properties'
]);
}


}