<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cindex extends CI_Controller {

	function __construct()
	{
		parent::__construct();		
		$this->load->helper('url');		
		$this->load->database('default');	
		$this->load->model('backend/sucursales/cliente_model');			
		$this->load->model('backend/sucursales/sucursales_model');	
	}

	public function index()
	{	
			
		$this->load->view('backend/sucursales/Vindex.php');
	}

	public function reporte_nuevos(){
		$data = $this->sucursales_model->clientesNuevos();   

       
        $html="";
        $html="<table>
                <tr>   
                    <th>Nombre Completo</th>
                    <th>DUI</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Creado</th>
                    <th>Actualizado</th>
                </tr>";
        foreach ($data as $value) {
            $html .= "<tr>";
                $html .= "<td>";
                    $html .= $value->nombre_completo;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->dui;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->direccion;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->telefono;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->email;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->fecha_creado;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->ultima_actualizacion;
                $html .= "</td>";

            $html .= "<tr>";
        }
        $html .="</table>";
        echo $html;
	}

	public function reporte_modificados(){
		$data = $this->sucursales_model->clientesModificados();   

       
        $html="";
        $html="<table>
                <tr>   
                    <th>Nombre Completo</th>
                    <th>DUI</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Creado</th>
                    <th>Actualizado</th>
                </tr>";
        foreach ($data as $value) {
            $html .= "<tr>";
                $html .= "<td>";
                    $html .= $value->nombre_completo;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->dui;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->direccion;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->telefono;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->email;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->fecha_creado;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->ultima_actualizacion;
                $html .= "</td>";

            $html .= "<tr>";
        }
        $html .="</table>";
        echo $html;
	}

	public function reporte_todos(){
		$data = $this->sucursales_model->clientesTodos();   

       
        $html="";
        $html="<table>
                <tr>   
                    <th>Nombre Completo</th>
                    <th>DUI</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Creado</th>
                    <th>Actualizado</th>
                </tr>";
        foreach ($data as $value) {
            $html .= "<tr>";
                $html .= "<td>";
                    $html .= $value->nombre_completo;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->dui;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->direccion;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->telefono;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->email;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->fecha_creado;
                $html .= "</td>";

                $html .= "<td>";
                    $html .= $value->ultima_actualizacion;
                $html .= "</td>";

            $html .= "<tr>";
        }
        $html .="</table>";
        echo $html;
	}

	public function formulario($dui)
	{	
		$cliente = $this->cliente_model->buscarCliente($dui);
		$data =1;
		if($cliente!="")
		{

			echo json_encode($cliente);
		}
		else
		{
			echo json_encode($data);
		}

		//$this->load->view('portal/formulario/Vformulario.php');
	}

	public function crearCliente(){
		
		$this->cliente_model->crearCliente($_POST);
	}

	public function actualizarCliente(){
		
		$this->cliente_model->actualizarCliente($_POST);
	}


}
