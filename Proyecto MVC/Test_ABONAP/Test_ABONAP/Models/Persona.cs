using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class Persona
    {
        public Persona()
        {
            Clientes = new HashSet<Cliente>();
            Empleados = new HashSet<Empleado>();
        }

        public int IdPersona { get; set; }
        public string Nombres { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public string Codigo { get; set; }
        public byte[] Estado { get; set; }

        public virtual ICollection<Cliente> Clientes { get; set; }
        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
