using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ViagensDry.Models
{
    public class Destino
    {
        [Key]
        [Required]
        public int IdDestino { get; set; }

        [Required]
        public string LugarDestino { get; set; }

        [Required]
        public DateTime DiaPartida { get; set; }
    }
}
