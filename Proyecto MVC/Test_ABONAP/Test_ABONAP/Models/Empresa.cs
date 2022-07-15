using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class Empresa
    {
        public Empresa()
        {
            Sucursales = new HashSet<Sucursale>();
        }

        public int IdEmpresa { get; set; }
        public string Descripcion { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public DateTime? FechaActualizacion { get; set; }
        public string Codigo { get; set; }
        public bool? Estado { get; set; }

        public virtual ICollection<Sucursale> Sucursales { get; set; }
    }
}
