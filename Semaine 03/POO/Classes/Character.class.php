<?php
class Character
{
  private $_strenght;
  private $_localisation;
  private $_experience;
  private $_damage;
        
  public function move()   //Le perso bouge.
  {

  }
        
  public function hit()   //Le perso frappe.
  {

  }
        
  public function gainExp()   //Le perso gagne de l'expérience.
  {

  }

  public function talk()     //Le perso parle.
  {
      echo "Je m'appelle tructruc.";
  }
}

$char = new Character;
$char->parler();