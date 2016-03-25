<?php

class MySQL {

	protected $pdo;

	//PDO
	public function connect(){
		$log = SGBD.":host=".HOSTNAME."; dbname=".DATABASE;
		$this->pdo = new PDO($log, USERNAME, PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''));
	}

	public function disconnect(){
		$this->pdo = null;
	}


	//SQL

	//execute une requète et retourne le nombre de lignes traitées
	public function execute($query){
		//echo $query;
		$this->connect();
		$results = $this->pdo->prepare($query);
		$results->execute();
		$this->disconnect();
		return $results->rowCount();
	}

	//execute une requete 'select'
	public function select($query){
		//echo $query;
		$this->connect();
		$results = $this->pdo->prepare($query);
		$results->execute();
		$this->disconnect();
		return $results->FetchAll(PDO::FETCH_ASSOC);
	}

	//execute une requete 'select' avec plus d'option et retourne les resultats
	public function selectMore($select, $from, $where = '1', $groupby=null, $having=null, $orderby=null, $limit=null){
		//
		$query = "Select ";
		if($select==null){
			$query .= "* ";
		}else{
			$query .= $select;
		}
		//
		$query .= ' from ';
		if($from==null){
			$query .= $this->table;
		}else{
			$query .= $from;
		}
		//
		$query .= ' where ';
		if($where==null){
			$query .= ' 1 ';
		}else{
			$query .= $where;
		}
		//
		if($groupby!=null && $having!=null){
			$query .= ' groupby '.$groupby.' having '.$having;
		}
		//
		$query .= ' order by ';
		if($orderby==null){
			$query .= ' 1 ASC ';
		}else{
			$query .= $orderby;
		}
		//
		if($limit!=null){
			$query .= ' limit '.$limit;
		}
		return $this->select($query);
	}//requète à tester
}








?>