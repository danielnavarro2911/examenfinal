using examenfinal.logica;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examenfinal.vistas
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                manejodatos.LlenarDropDown("select Nombre_Pais from Paisess", drop_pais_origen, "Nombre_Pais");
                manejodatos.LlenarDropDown("select Nombre_Pais from Paisess", drop_pais_destino, "Nombre_Pais");
                manejodatos.LlenarDropDown("select Cedula_Viajero from Viajeros", drop_cedula_viajero, "Cedula_Viajero");

            }

        }

        protected void guardar_click(object sender, EventArgs e)
        {
            string cedula_empleado = Application["cedula_empleado"] as string;
            Dictionary<string,string> dic = new Dictionary<string,string>();
            dic.Add("Cedula_Viajero",drop_cedula_viajero.SelectedItem.Text);
            dic.Add("Cedula_Empleado", cedula_empleado);
            dic.Add("Fecha_Ingreso",fecha_ingreso.SelectedDate.ToString());
            dic.Add("Fecha_Salida", fecha_salida.SelectedDate.ToString());
            dic.Add("Pais_Origen", drop_pais_origen.SelectedItem.Text);
            dic.Add("Pais_Destino", drop_pais_destino.SelectedItem.Text);

            manejodatos.InsertarDato("Viajess", dic);
            guardar_mensaje.Text = "Datos Guardados";
        }
    }
}