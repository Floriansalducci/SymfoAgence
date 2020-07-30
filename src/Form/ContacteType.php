<?php

namespace App\Form;

use App\Entity\Contacte;
use App\Entity\Option;
use App\Entity\PropertySearch;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\FormTypeInterface;

class ContacteType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstname',TextType::class, ['label' => 'Prénom'])
            ->add('lastname',TextType::class,  ['label' => 'Nom'])
            ->add('phone',TextType::class, ['label' => 'Téléphone'])
            ->add('email',TextType::class, ['label' => 'Adresse mail'])
            ->add('message',TextareaType::class, ['label' => 'Vôtre message'])

        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Contacte::class,

        ]);
    }


}
