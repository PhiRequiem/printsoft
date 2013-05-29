<?php if (!defined('BASEPATH')) exit('No permitir el acceso directo al script'); 
class Products_librerie
{
    public function list_dropdown ($n_product){
        $CI =& get_instance();
        // $CI->load->database();
        $CI->load->model('General_model');
        $table = 'products_'.$n_product;
        $param = array(
            'table' => $table,
            'where' => array('active' => 1)
            );
            if($p = $CI->General_model->view_product($param)) {
                $data_t = '';
                foreach ($p as $key) {
                    $data_t[$key['id'].'-'.$key['costo']] = $key['name'];
                }
            } else { $data_t = array(); }
            $atrib = 'class="span4" required';
            $name = 'products_'.$n_product.'[\'+p'.$n_product.'+\']';
            $data_t = form_dropdown($name, $data_t, '', $atrib); 
            // $data_t = preg_replace("/\x0d|\x0a/", "", $data_t);
            $array_dropdown = $data_t;
        return $array_dropdown;
    }

    public function product_form($n_product) {

        switch ($n_product) {
            case 1:
                $p_form = '<div class="controls controls-row">'.$this->list_dropdown($n_product).'
                <input type="text" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][alto]" class="span1" placeholder="alto" required />
                <input type="text" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][ancho]" class="span1" placeholder="ancho" required />
                <div class="span3">
                <label class="checkbox"> <input type="checkbox" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][ojillos]" value="1" checked="checked"> Ojillos</label>
                <label class="checkbox"> <input type="checkbox" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][acabados]" value="1" checked="checked"> Acabados</label>
                </div>
                <textarea rows="1" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][coments]" class="span3" placeholder="Notas extra"></textarea></div>';
                break;
            case 2:
                $p_form = '<div class="controls controls-row">'.$this->list_dropdown($n_product).'
                <input type="text" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][millares]" class="span2" placeholder="# de millares" required />
                <textarea rows="1" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][coments]" class="span3" placeholder="Notas extra"></textarea></div>';
                break;
            case 3:
                $p_form = '<div class="controls controls-row">'.$this->list_dropdown($n_product).'
                <textarea rows="1" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][coments]" class="span3" placeholder="Notas extra"></textarea></div>';
                break;
            case 4:
                $p_form = '<div class="controls controls-row">'.$this->list_dropdown($n_product).'
                <textarea rows="1" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][coments]" class="span3" placeholder="Notas extra"></textarea></div>';
                break;
            case 5:
                $p_form = '<div class="controls controls-row">'.$this->list_dropdown($n_product).'
                <textarea rows="1" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][coments]" class="span3" placeholder="Notas extra"></textarea></div>';
                break;
            case 6:
                $p_form = '<div class="controls controls-row">'.$this->list_dropdown($n_product).'
                <textarea rows="1" name="products_'.$n_product.'[\'+ p'.$n_product.' +\'][coments]" class="span3" placeholder="Notas extra"></textarea></div>';
                break;
            default:
                $p_form = 'proximamente';
                break;
        }

        $p_form = preg_replace("/\x0d|\x0a/", "", $p_form);
        return $p_form;
    }
}