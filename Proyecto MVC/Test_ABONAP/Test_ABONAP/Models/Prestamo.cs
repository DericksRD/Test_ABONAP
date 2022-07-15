using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class Prestamo
    {
        public int IdPrestamo { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public DateTime? FechaActualizacion { get; set; }
        public decimal? Monto { get; set; }
        public string Codigo { get; set; }
        public string Estado { get; set; }
        public int IdCliente { get; set; }
        public int IdSucursal { get; set; }

        public virtual Cliente IdClienteNavigation { get; set; }
        public virtual Sucursale IdSucursalNavigation { get; set; }
    }
}
