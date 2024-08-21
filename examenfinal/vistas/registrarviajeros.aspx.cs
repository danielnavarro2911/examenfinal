using examenfinal.logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examenfinal.vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registrar_click(object sender, EventArgs e)
        {
            try
            {
                string cedula_empleado = Application["cedula_empleado"] as string;
                Dictionary<string, string> dic = new Dictionary<string, string>();
                dic.Add("Cedula_Viajero", reg_cedula.Text);
                dic.Add("Nombre_Viajero", reg_nombre.Text);
                dic.Add("Apellido_Viajero", reg_apellido.Text);
                dic.Add("Pais", reg_pais.Text);
                dic.Add("Fecha_Nacimiento", reg_fecha.Text);
                dic.Add("Cedula_Empleado", cedula_empleado);

                manejodatos.InsertarDato("Viajeros", dic);
            }catch (Exception ex)
            {
                mensaje_reg.Text = "Error, Viajero ya existe";
            }

        }
        protected void ver_viajeros_click(object sender, EventArgs e)
        {
            manejodatos.LlenarGrid("select * from Viajeros",viajeros_actuales);
        }
    }
}