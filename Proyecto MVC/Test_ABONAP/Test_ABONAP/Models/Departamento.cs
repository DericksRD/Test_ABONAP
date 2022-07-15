using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class Departamento
    {
        public int IdDepartamentos { get; set; }
        public string Descripcion { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public DateTime? FechaActualizacion { get; set; }
        public string Codigo { get; set; }
        public bool? Estado { get; set; }
        public int IdSucursal { get; set; }

        public virtual Sucursale IdSucursalNavigation { get; set; }
    }
}
