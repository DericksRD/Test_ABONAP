using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class Sucursale
    {
        public Sucursale()
        {
            Clientes = new HashSet<Cliente>();
            Departamentos = new HashSet<Departamento>();
            Empleados = new HashSet<Empleado>();
            Prestamos = new HashSet<Prestamo>();
        }

        public int IdSucursal { get; set; }
        public string Descripcion { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public DateTime? FechaActualizacion { get; set; }
        public string Codigo { get; set; }
        public bool? Estado { get; set; }
        public int IdEmpresa { get; set; }

        public virtual Empresa IdEmpresaNavigation { get; set; }
        public virtual ICollection<Cliente> Clientes { get; set; }
        public virtual ICollection<Departamento> Departamentos { get; set; }
        public virtual ICollection<Empleado> Empleados { get; set; }
        public virtual ICollection<Prestamo> Prestamos { get; set; }
    }
}
