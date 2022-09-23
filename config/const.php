<?php
#111
#111
#111
App::uses('AppController', 'Controller');
class UserStatsController extends AppController { 
  public $uses = array('UsersStats');
  
  public function __construct() {
    parent::beforeFilter();
  }
  
  public function index() {
  	$data = array(
  		'date' => date('Y-m-d',strtotime('Yesterday')),
  		'entry_count' => UsersStatTable::entryCount(),
  		'deactivation_count' => UsersStatTable::deactivationCount(),
  		'member_count' => UsersStatTable::memberCount(),
  		'entry_free_member_count' => UsersStatTable::countUserUnpaid(),
  		'entry_paid_member_count' => UsersStatTable::countUserPaid()	
  	);

    $this->UsersStats->read(null);
		$this->UsersStats->set($data);
		$this->UsersStats->save();
  }

}
