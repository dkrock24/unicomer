<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class sucursales_model extends CI_Model
{
    const cargos = 'sr_cargos';
    const roles = 'sr_roles';
    const avatar = 'sr_avatar';
    const usuarios = 'sr_usuarios';
    const sys_sucursal = 'sys_sucursal';
    const sys_pais_departamento  = 'sys_pais_departamento';
    const sys_pais          = 'sys_pais';
    const sys_sucursal_int_usuarios = 'sys_sucursal_int_usuarios';
    const sys_nodo = 'sys_nodo';
    const sys_sucursal_nodo = 'sys_sucursal_nodo';
    

    
    public function __construct()
    {
        parent::__construct();
        
    }


    public function clientesNuevos()
    {    
        $query = $this->db->query('select * from sys_cliente WHERE
                HOUR(TIMEDIFF(NOW(), fecha_creado)) <=24');
                return $query->result();
    }

    public function clientesModificados()
    {    
        $query = $this->db->query('select * from sys_cliente WHERE ultima_actualizacion != "0000-00-00 00:00:00"');
                return $query->result();
    }

    public function clientesTodos()
    {    
        $query = $this->db->query('select * from sys_cliente');
                return $query->result();
    }
    
    public function getSucursalesByUser($id_user)
    {
        $this->db->select('*');
        $this->db->from(self::sys_sucursal);
        $this->db->join(self::sys_sucursal_int_usuarios,' on '. 
                        self::sys_sucursal_int_usuarios.'.id_sucursal = '.
                        self::sys_sucursal.'.id_sucursal');

        $this->db->join(self::usuarios,' on '. 
                        self::usuarios.'.id_usuario = '.
                        self::sys_sucursal_int_usuarios.'.id_usuario');
        $this->db->where(self::usuarios.'.id_usuario',$id_user);
        $query = $this->db->get();
        //echo $this->db->queries[0];
        
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }        
    } 
    public function getSucursalesById($id_sucursal)
    {
        $this->db->select('*');
        $this->db->from(self::sys_sucursal);
        $this->db->join(self::sys_sucursal_nodo,' on '. 
                        self::sys_sucursal_nodo.'.id_sucursal = '.
                        self::sys_sucursal.'.id_sucursal');

        $this->db->join(self::sys_nodo,' on '. 
                        self::sys_nodo.'.id_nodo = '.
                        self::sys_sucursal_nodo.'.id_nodo');
        $this->db->where(self::sys_sucursal.'.id_sucursal',$id_sucursal);
        $query = $this->db->get();
        //echo $this->db->queries[0];
        
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }        
    }  
    public function getSucursalesByNodo($id_sucursal)
    {
        $this->db->select('*');
        $this->db->from(self::sys_sucursal);
        $this->db->join(self::sys_sucursal_nodo,' on '. 
                        self::sys_sucursal_nodo.'.id_sucursal = '.
                        self::sys_sucursal.'.id_sucursal');

        $this->db->join(self::sys_nodo,' on '. 
                        self::sys_nodo.'.id_nodo = '.
                        self::sys_sucursal_nodo.'.id_nodo');
        $this->db->where(self::sys_sucursal.'.id_sucursal',$id_sucursal);
        $this->db->where(self::sys_sucursal_nodo.'.sucursal_estado_nodo',1);
        $query = $this->db->get();
        //echo $this->db->queries[0];
        
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }        
    }  
    public function getSucursalByNodoId($id_nodo,$id_sucursal)
    {
        $this->db->select('*');
        $this->db->from(self::sys_sucursal);
        $this->db->join(self::sys_sucursal_nodo,' on '. 
                        self::sys_sucursal_nodo.'.id_sucursal = '.
                        self::sys_sucursal.'.id_sucursal');

        $this->db->join(self::sys_nodo,' on '. 
                        self::sys_nodo.'.id_nodo = '.
                        self::sys_sucursal_nodo.'.id_nodo');
        $this->db->where(self::sys_sucursal.'.id_sucursal',$id_sucursal);
        //$this->db->where(self::sys_sucursal_nodo.'.sucursal_estado_nodo',1);
        $this->db->where(self::sys_sucursal_nodo.'.id_nodo',$id_nodo);
        $query = $this->db->get();
        //echo $this->db->queries[0];
        
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }        
    }
}
/*
 * end of application/models/consultas_model.php
 */
