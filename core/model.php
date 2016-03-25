<?php
require_once("SQL.php");

class Model extends MySQL {

	//Attributs
	protected $table; //nom de la table
	protected $fkey; //description des clés étrangère
	protected $links = array(); //models des liaisons étrangères
	protected $default; //conditions du 'order by'
	protected $arraysis = ['pdo', 'table', 'fkey', 'links', 'default', 'arraysis']; //attributs techniques


	//Methodes

	// __get
	public function __get($property){
		$ret = false;
		if(isset($this->$property)) {
			$ret = $this->$property;
		}
		return($ret);
	}

	// __set
	public function __set($property, $value){
		$ret = false;
		if(isset($this->$property)) {
			$ret = true;
			$this->$property = $value;
		}
		return($ret);
	}


	//CRUD

	//Create
	public function create(){
		$table = $this->table;
		//date du jour dans 'created'
		$this->setcreated($this->getdate());
		$query = "INSERT Into $table Values (";
		foreach ($this as $key => $value) {
			//si ce n'est pas un attribut technique
			if(!in_array($key, $this->arraysis)){
				$query .= '"'.$value.'",';
			}
		}
		//supprime la dernière virgule et la remplace par une parenthèse
		$query = substr($query, -strlen($query), strlen($query)-1).');';
		return $this->execute($query);
	}

	//Read
	public function read($id){
		$table = $this->table;
		$datas = $this->select("SELECT * From $table Where id = $id");
		foreach($datas[0] as $key => $value){
			//on utilise le setter correspondant
			$setattribs = "set".$key;
			$this->$setattribs($value);
		}
	}

	//Update
	public function update(){
		$table = $this->table;
		$id = $this->id;
		//date du jour dans 'updated'
		$this->setupdated($this->getdate());
		$query = "UPDATE $table Set ";
		foreach($this as $key => $value){
			//si ce n'est pas un attribut technique
			if(!in_array($key, $this->arraysis)){
				//si l'attribut est un object on enregistre uniquement son identifiant
				$query .= $key.'="'.$value.'",';
			}
		}
		//supprime la dernière virgule et la remplace par une parenthèse
		$query = substr($query, -strlen($query), strlen($query)-1);
		$query .= "where id='$id';";
		return $this->execute($query);
	}

	//Delete
	public function delete(){
		$table = $this->table;
		$id = $this->id;
		$query = "DELETE From $table Where id = $id";
		return $this->execute($query);
	}


	//recupère la date du jour et l'heure au format yyyy-mm-dd hh:mm:ss
	public function getdate(){
		//ex : 2015-12-31 16:30:59
		return date('y-m-d H:i:s');
	}

	//Requêtes spécifiques:
	public function selectAll(){
		return $this->selectMore('*', $this->table, '1', null, null, $this->default, null);
	}


	//
	public function getall(){
		$datas = array();
		foreach ($this as $key => $value) {
			if(!in_array($key, $this->arraysis)){
				$datas[$key] = $value;
			}
		}
		return $datas;
	}



}

?>