using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class Empleado
    {
        public int IdEmpleado { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public DateTime? FechaActualizacion { get; set; }
        public string Codigo { get; set; }
        public bool? Estado { get; set; }
        public int IdPersona { get; set; }
        public int IdSucursal { get; set; }

        public virtual Persona IdPersonaNavigation { get; set; }
        public virtual Sucursale IdSucursalNavigation { get; set; }
    }
}
