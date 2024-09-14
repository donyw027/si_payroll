<?php
require_once(APPPATH . 'third_party/dompdf/autoload.inc.php');

use Dompdf\Dompdf;

class Pdf
{
    protected $dompdf;

    public function __construct()
    {
        $this->dompdf = new Dompdf();
    }

    public function loadHtml($html)
    {
        $this->dompdf->loadHtml($html);
    }

    public function setPaper($size, $orientation)
    {
        $this->dompdf->setPaper($size, $orientation);
    }

    public function render()
    {
        $this->dompdf->render();
    }

    public function output()
    {
        return $this->dompdf->output();
    }

    public function stream($filename = "document.pdf", $options = array())
    {
        $this->dompdf->stream($filename, $options);
    }
}
