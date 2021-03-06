<?php namespace App\Controllers;
use App\Models\CoaModel;

class ChartOfAccountController extends BaseController
{
    public function __construct(){
        $this->coa = new CoaModel();
        $this->session = session();
    }
	public function index()
	{
        $data['charts'] = $this->coa->findAll();
        
        $data['assets_account_general'] = $this->coa->where(['account_type' => 1, 'type'=> 0])->findAll();
        $data['liability_account_general'] = $this->coa->where(['account_type' => 2, 'type'=> 0])->findAll();
        $data['equity_account_general'] = $this->coa->where(['account_type' => 3, 'type'=> 0])->findAll();
        $data['revenue_account_general'] = $this->coa->where(['account_type' => 4, 'type'=> 0])->findAll();
        $data['expense_account_general'] = $this->coa->where(['account_type' => 5, 'type'=> 0])->findAll();
        $username = $this->session->user_username;
        $this->authenticate_user($username, 'pages/coa/index',$data);
    }
    
	public function create(){
        $username = $this->session->user_username;
        $data = [];
        $this->authenticate_user($username, 'pages/coa/add-new-account',$data);
    }
    
    public function getParentAccount(){
        $data['accounts'] = $this->coa->where(['type'=> 0])->findAll(); //0=general; 1=detail
        
        return view('pages/coa/partials/_accounts', $data);
    }

	public function saveAccount(){
        
        helper(['form']);
        $data = [];
        if($_POST){
         $rules = [
            'account_name'=>[
                'rules'=>'required',
                'label'=>'Account name',
                'errors'=>[
                    'required'=>'Enter a unique account name'
                ]
            ],
            'glcode'=>[
                'rules'=>'required',
                'label'=>'GL Code',
                'errors'=>[
                    'required'=>'Enter a GL code'
                ]
            ],
        ]; 
    }
    
    $checkAccount = $this->coa->where(['glcode' => $this->request->getVar('gl_code') ])->findAll();
    
    if(!empty($checkAccount)){
        $alert = array(
                    'msg' => 'Account Already Exists',
                    'type' => 'error',
                    'location' => site_url('/add-new-chart-of-account')
                );
            return view('pages/sweet-alert', $alert);
        
    }else{
       $data = array(
            'account_name'=>$this->request->getVar('account_name'),
            'account_type'=>$this->request->getVar('account_type'),
            'bank'=>$this->request->getVar('bank'),
            'glcode'=>$this->request->getVar('gl_code'),
            'parent_account'=>$this->request->getVar('parent_account'),
            'type'=>$this->request->getVar('type'),
            'note'=>$this->request->getVar('note')
        );
        try{

            $this->coa->save($data);
            $alert = array(
                    'msg' => 'Success! New account added.',
                    'type' => 'success',
                    'location' => site_url('/add-new-chart-of-account')
                );
            return view('pages/sweet-alert', $alert);
        }catch(Exception $ex){
            print_r($ex);
        } 
        
    }
        
    }

}
