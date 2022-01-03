using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ViagensDry.Models;

namespace ViagensDry.Models
{
    public class BancoDados : DbContext

    {       
        public DbSet<Destino> Destinos { get; set; }
        public DbSet<Passageiro> Passageiros { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder OptionsBuilder)
        {
            OptionsBuilder.UseSqlServer(connectionString: @"Server=(localdb)\mssqllocaldb;Database=ViagensDry;Integrated Security=True");
        }
        
    }
}
