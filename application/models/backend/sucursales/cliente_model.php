<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class cliente_model extends CI_Model
{
    const cliente = 'sys_cliente';
    

    
    public function __construct()
    {
        parent::__construct();
    }

    public function buscarCliente($dui)
    {
        $this->db->select('*');
        $this->db->from(self::cliente);
        $this->db->where(self::cliente.'.dui',$dui);
        $query = $this->db->get();
        //echo $this->db->queries[0];
        
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }        
    } 

    public function crearCliente($cliente){
        $date = date("Y-m-d");
        $data = array(
            'dui'    => $cliente['dui'],
            'nombre_completo'    => $cliente['nombre'],
            'direccion'        => $cliente['direccion'],
            'telefono'     => $cliente['telefono'],
            'email'     => $cliente['email'],
            'fecha_creado'  => $date,
            'ultima_actualizacion'  => "0000-00-00 00:00:00"
        );
        $this->db->insert(self::cliente,$data);  
    }

    public function actualizarCliente($cliente){
        
        $data = array(
            'dui'               => $cliente['dui'],
            'nombre_completo'   => $cliente['nombre'],
            'direccion'         => $cliente['direccion'],
            'telefono'          => $cliente['telefono'],
            'email'             => $cliente['email'],            
        );        

        $this->db->where('id_cliente', $cliente['id_cliente']);
        $this->db->update(self::cliente, $data);   
    }
}