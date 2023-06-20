<?php

/**
 * Summary of rates
 */
class rates{
	/**
	 * Summary of tempory_active_end_date
	 * @var 
	 */
	public $ID,$category,$start_weight,$end_weight,$price,$active_date,$current_status,$tempory_active_end_date;
	/**
	 * Summary of __construct
	 * @param mixed $ID
	 * @param mixed $category
	 * @param mixed $start_weight
	 * @param mixed $end_weight
	 * @param mixed $price
	 * @param mixed $active_date
	 * @param mixed $current_status
	 * @param mixed $tempory_active_end_date
	 */
	public function __construct($ID,$category,$start_weight,$end_weight,$price,$active_date,$current_status,$tempory_active_end_date)
	{

		$this->ID=$ID;
		$this->category=$category;
		$this->start_weight=$start_weight;
		$this->end_weight=$end_weight;
		$this->price=$price;
		$this->active_date=$active_date;
		$this->current_status=$current_status;
		$this->tempory_active_end_date=$tempory_active_end_date;


	}
	/**
	 * Summary of getID
	 * @return mixed
	 */
	public function getID()
	{
		return $this->ID;	
	}
		
	/**
	 * Summary of setID
	 * @param mixed $value
	 * @return void
	 */
	public function setID($value)
	{
		$this->ID=$value;
	}
		
	/**
	 * Summary of getcategory
	 * @return mixed
	 */
	public function getcategory()
	{
		return $this->category;	
	}
		
	/**
	 * Summary of setcategory
	 * @param mixed $value
	 * @return void
	 */
	public function setcategory($value)
	{
		$this->category=$value;
	}
	
	/**
	 * Summary of getstart_weight
	 * @return mixed
	 */
	public function getstart_weight()
	{
		return $this->start_weight;	
	}
	
	
	/**
	 * Summary of setstart_weight
	 * @param mixed $value
	 * @return void
	 */
	public function setstart_weight($value)
	{
		$this->start_weight=$value;
	}
	
	/**
	 * Summary of getend_weight
	 * @return mixed
	 */
	public function getend_weight()
	{
		return $this->end_weight;	
	}
	
	
	/**
	 * Summary of setend_weight
	 * @param mixed $value
	 * @return void
	 */
	public function setend_weight($value)
	{
		$this->end_weight=$value;
	}
	
	
	/**
	 * Summary of getprice
	 * @return mixed
	 */
	public function getprice()
	{
		return $this->price;	
	}
	
	
	/**
	 * Summary of setprice
	 * @param mixed $value
	 * @return void
	 */
	public function setprice($value)
	{
		$this->price=$value;
	}
	
	/**
	 * Summary of getactive_date
	 * @return mixed
	 */
	public function getactive_date()
	{
		return $this->active_date;	
	}
	
	
	/**
	 * Summary of setactive_date
	 * @param mixed $value
	 * @return void
	 */
	public function setactive_date($value)
	{
		$this->active_date=$value;
	}
	
	/**
	 * Summary of getcurrent_status
	 * @return mixed
	 */
	public function getcurrent_status()
	{
		return $this->current_status;	
	}
	
	
	/**
	 * Summary of setcurrent_status
	 * @param mixed $value
	 * @return void
	 */
	public function setcurrent_status($value)
	{
		$this->current_status=$value;
	}
	
	/**
	 * Summary of gettempory_active_end_date
	 * @return mixed
	 */
	public function gettempory_active_end_date()
	{
		return $this->tempory_active_end_date;
	}
	/**
	 * Summary of settempory_active_end_date
	 * @param mixed $value
	 * @return void
	 */
	public function settempory_active_end_date($value)
	{
		$this->tempory_active_end_date=$value;
	}
}

?>