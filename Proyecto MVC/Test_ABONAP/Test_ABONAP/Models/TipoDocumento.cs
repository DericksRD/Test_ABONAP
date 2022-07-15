using System;
using System.Collections.Generic;

#nullable disable

namespace Test_ABONAP
{
    public partial class TipoDocumento
    {
        public TipoDocumento()
        {
            Documentos = new HashSet<Documento>();
        }

        public int IdTipoDocumento { get; set; }
        public string Descripcion { get; set; }
        public string Codigo { get; set; }

        public virtual ICollection<Documento> Documentos { get; set; }
    }
}
