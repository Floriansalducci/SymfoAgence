<?php
namespace App\Controller;

use App\Entity\Contacte;
use App\Entity\Property;
use App\Entity\PropertySearch;
use App\Form\ContacteType;
use App\Notification\ContacteNotification;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use App\Form\PropertySearchType;
use App\Repository\PropertyRepository;

use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Form\FormTypeInterface;


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
public function index(PaginatorInterface $paginator, Request $request): response
{
    $search = new PropertySearch();
    $form= $this->createForm(PropertySearchType::class, $search);
    $form->handleRequest($request);

    $properties= $paginator->paginate(
        $this->repository->findAllVisibleQuery($search),
        $request->query->getInt('page', 1),12
    );
    return $this->render('property/index.html.twig', [
    'current_menu'=>'properties',
    'properties'=> $properties,
    'form'=>$form->createView()

]);
}

    /**
     * @route ("/biens/{slug}-{id}", name="property.show", requirements={"slug": "[a-z0-9\-]*"})
     * @param Property $property
     * @return Response
     */
    public function show(Property $property, string $slug, Request $request, ContacteNotification $notification): Response
    {

        if($property->getSlug() !== $slug){
            return $this->redirectToRoute('property.show', [
                'id'=> $property->getId(),
                'slug'=> $property->getSlug()
            ], 301);
        }

        $contacte = new Contacte();
        $contacte->setProperty($property);
        $form = $this->createForm(ContacteType::class, $contacte);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $notification->notify($contacte);
            $this->addFlash('success','Votre email à bien été envoyé');
            /*
            return $this->redirectToRoute('property.show', [
                'id'=> $property->getId(),
                'slug'=> $property->getSlug()
            ]);
            */
        }

        return $this->render('property/show.html.twig',[
            'property'=> $property,
            'current_menu'=>'properties',
            'form'=> $form->createView()
        ]);
    }


}