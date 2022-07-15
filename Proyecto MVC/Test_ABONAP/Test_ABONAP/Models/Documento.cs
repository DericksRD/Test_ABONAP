using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class Documento
    {
        public int IdDocumento { get; set; }
        public DateTime? FechaCreacion { get; set; }
        public DateTime? FechaActualizacion { get; set; }
        public string Descripcion { get; set; }
        public bool? Estado { get; set; }
        public int IdTipoDocumento { get; set; }

        public virtual TipoDocumento IdTipoDocumentoNavigation { get; set; }
    }
}
