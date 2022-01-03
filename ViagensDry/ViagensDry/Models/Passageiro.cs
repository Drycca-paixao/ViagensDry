using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ViagensDry.Models
{
    public class Passageiro
    {
        [Key]
        [Required]
        public int IdPassageiro { get; set; }

        [Required]
        public string Nome { get; set; }

        [Required]
        public string Email { get; set; }

        [Required]
        public DateTime DataNascimento { get; set; }

        [Required]
        public long Cpf { get; set; }

        [Required]
        public int DestinoIdDestino { get; set; }
        public Destino Destino { get; set; }
    }
}
