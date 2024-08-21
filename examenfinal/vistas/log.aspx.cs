using examenfinal.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examenfinal.vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresar_click(object sender, EventArgs e)
        {
            //checkeamos que exista el usuario ingreado con la contrasena indicada
            if (manejodatos.checkear_credenciales(log_cedula.Text, log_passw.Text))
            {
                //guardamos la cedula del empleado como variable global
                Application["cedula_empleado"] = log_cedula.Text;
                //si existe que redirija a otra pagina
                Response.Redirect("inicio.aspx");
                
            }
            else
            {
                //en caso de no existir
                log_label.Text = "Error, empleado no existe o contraseña incorrecta";
            }
        }
    }
}