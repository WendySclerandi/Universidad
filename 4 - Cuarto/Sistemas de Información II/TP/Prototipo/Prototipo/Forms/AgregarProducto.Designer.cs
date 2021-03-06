﻿namespace Prototipo.Forms
{
    partial class AgregarProducto
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AgregarProducto));
            this.txtMarca = new System.Windows.Forms.TextBox();
            this.txtPrecio = new System.Windows.Forms.TextBox();
            this.CodProducto = new System.Windows.Forms.Label();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.TipoProducto = new System.Windows.Forms.Label();
            this.Marca = new System.Windows.Forms.Label();
            this.Precio = new System.Windows.Forms.Label();
            this.Stock = new System.Windows.Forms.Label();
            this.txtStock = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.txtTipo = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.ventasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.agregarVentaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.productosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.agregarProductoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.verProductosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.verStockToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.proveedoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.agregarProveedorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mostrarProveedoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.realizarPedidoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.verPedidosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mostrarReportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.Cancelar = new System.Windows.Forms.Button();
            this.Agregar = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtMarca
            // 
            this.txtMarca.Location = new System.Drawing.Point(170, 143);
            this.txtMarca.Name = "txtMarca";
            this.txtMarca.Size = new System.Drawing.Size(248, 24);
            this.txtMarca.TabIndex = 3;
            // 
            // txtPrecio
            // 
            this.txtPrecio.Location = new System.Drawing.Point(170, 186);
            this.txtPrecio.Name = "txtPrecio";
            this.txtPrecio.Size = new System.Drawing.Size(248, 24);
            this.txtPrecio.TabIndex = 4;
            // 
            // CodProducto
            // 
            this.CodProducto.AutoSize = true;
            this.CodProducto.Location = new System.Drawing.Point(14, 17);
            this.CodProducto.Name = "CodProducto";
            this.CodProducto.Size = new System.Drawing.Size(150, 19);
            this.CodProducto.TabIndex = 4;
            this.CodProducto.Text = "Código de Producto";
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(170, 57);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(248, 24);
            this.txtNombre.TabIndex = 1;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(170, 14);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(248, 24);
            this.txtCodigo.TabIndex = 0;
            // 
            // TipoProducto
            // 
            this.TipoProducto.AutoSize = true;
            this.TipoProducto.Location = new System.Drawing.Point(14, 103);
            this.TipoProducto.Name = "TipoProducto";
            this.TipoProducto.Size = new System.Drawing.Size(126, 19);
            this.TipoProducto.TabIndex = 5;
            this.TipoProducto.Text = "Tipo de Producto";
            // 
            // Marca
            // 
            this.Marca.AutoSize = true;
            this.Marca.Location = new System.Drawing.Point(14, 146);
            this.Marca.Name = "Marca";
            this.Marca.Size = new System.Drawing.Size(55, 19);
            this.Marca.TabIndex = 6;
            this.Marca.Text = "Marca";
            // 
            // Precio
            // 
            this.Precio.AutoSize = true;
            this.Precio.Location = new System.Drawing.Point(14, 189);
            this.Precio.Name = "Precio";
            this.Precio.Size = new System.Drawing.Size(51, 19);
            this.Precio.TabIndex = 7;
            this.Precio.Text = "Precio";
            // 
            // Stock
            // 
            this.Stock.AutoSize = true;
            this.Stock.Location = new System.Drawing.Point(14, 234);
            this.Stock.Name = "Stock";
            this.Stock.Size = new System.Drawing.Size(121, 19);
            this.Stock.TabIndex = 8;
            this.Stock.Text = "Stock disponible";
            // 
            // txtStock
            // 
            this.txtStock.Location = new System.Drawing.Point(170, 231);
            this.txtStock.Name = "txtStock";
            this.txtStock.Size = new System.Drawing.Size(248, 24);
            this.txtStock.TabIndex = 5;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.GhostWhite;
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.txtTipo);
            this.panel1.Controls.Add(this.CodProducto);
            this.panel1.Controls.Add(this.txtCodigo);
            this.panel1.Controls.Add(this.txtNombre);
            this.panel1.Controls.Add(this.txtStock);
            this.panel1.Controls.Add(this.txtMarca);
            this.panel1.Controls.Add(this.Stock);
            this.panel1.Controls.Add(this.txtPrecio);
            this.panel1.Controls.Add(this.Precio);
            this.panel1.Controls.Add(this.TipoProducto);
            this.panel1.Controls.Add(this.Marca);
            this.panel1.Font = new System.Drawing.Font("Century Gothic", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panel1.Location = new System.Drawing.Point(365, 145);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(434, 272);
            this.panel1.TabIndex = 12;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 60);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 19);
            this.label2.TabIndex = 11;
            this.label2.Text = "Nombre";
            // 
            // txtTipo
            // 
            this.txtTipo.Location = new System.Drawing.Point(170, 100);
            this.txtTipo.Name = "txtTipo";
            this.txtTipo.Size = new System.Drawing.Size(248, 24);
            this.txtTipo.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 14F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(487, 96);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(197, 22);
            this.label1.TabIndex = 13;
            this.label1.Text = "Carga de Productos";
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.GhostWhite;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ventasToolStripMenuItem,
            this.productosToolStripMenuItem,
            this.proveedoresToolStripMenuItem,
            this.reportesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1180, 24);
            this.menuStrip1.TabIndex = 14;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // ventasToolStripMenuItem
            // 
            this.ventasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.agregarVentaToolStripMenuItem});
            this.ventasToolStripMenuItem.Name = "ventasToolStripMenuItem";
            this.ventasToolStripMenuItem.Size = new System.Drawing.Size(53, 20);
            this.ventasToolStripMenuItem.Text = "Ventas";
            // 
            // agregarVentaToolStripMenuItem
            // 
            this.agregarVentaToolStripMenuItem.Name = "agregarVentaToolStripMenuItem";
            this.agregarVentaToolStripMenuItem.Size = new System.Drawing.Size(148, 22);
            this.agregarVentaToolStripMenuItem.Text = "Agregar venta";
            this.agregarVentaToolStripMenuItem.Click += new System.EventHandler(this.agregarVentaToolStripMenuItem_Click);
            // 
            // productosToolStripMenuItem
            // 
            this.productosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.agregarProductoToolStripMenuItem,
            this.verProductosToolStripMenuItem,
            this.verStockToolStripMenuItem});
            this.productosToolStripMenuItem.Name = "productosToolStripMenuItem";
            this.productosToolStripMenuItem.Size = new System.Drawing.Size(73, 20);
            this.productosToolStripMenuItem.Text = "Productos";
            // 
            // agregarProductoToolStripMenuItem
            // 
            this.agregarProductoToolStripMenuItem.Name = "agregarProductoToolStripMenuItem";
            this.agregarProductoToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.agregarProductoToolStripMenuItem.Text = "Agregar producto";
            // 
            // verProductosToolStripMenuItem
            // 
            this.verProductosToolStripMenuItem.Name = "verProductosToolStripMenuItem";
            this.verProductosToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.verProductosToolStripMenuItem.Text = "Ver productos";
            this.verProductosToolStripMenuItem.Click += new System.EventHandler(this.verProductosToolStripMenuItem_Click);
            // 
            // verStockToolStripMenuItem
            // 
            this.verStockToolStripMenuItem.Name = "verStockToolStripMenuItem";
            this.verStockToolStripMenuItem.Size = new System.Drawing.Size(168, 22);
            this.verStockToolStripMenuItem.Text = "Ver stock";
            // 
            // proveedoresToolStripMenuItem
            // 
            this.proveedoresToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.agregarProveedorToolStripMenuItem,
            this.mostrarProveedoresToolStripMenuItem,
            this.realizarPedidoToolStripMenuItem,
            this.verPedidosToolStripMenuItem});
            this.proveedoresToolStripMenuItem.Name = "proveedoresToolStripMenuItem";
            this.proveedoresToolStripMenuItem.Size = new System.Drawing.Size(84, 20);
            this.proveedoresToolStripMenuItem.Text = "Proveedores";
            // 
            // agregarProveedorToolStripMenuItem
            // 
            this.agregarProveedorToolStripMenuItem.Name = "agregarProveedorToolStripMenuItem";
            this.agregarProveedorToolStripMenuItem.Size = new System.Drawing.Size(173, 22);
            this.agregarProveedorToolStripMenuItem.Text = "Agregar proveedor";
            this.agregarProveedorToolStripMenuItem.Click += new System.EventHandler(this.agregarProveedorToolStripMenuItem_Click);
            // 
            // mostrarProveedoresToolStripMenuItem
            // 
            this.mostrarProveedoresToolStripMenuItem.Name = "mostrarProveedoresToolStripMenuItem";
            this.mostrarProveedoresToolStripMenuItem.Size = new System.Drawing.Size(173, 22);
            this.mostrarProveedoresToolStripMenuItem.Text = "Ver proveedores";
            this.mostrarProveedoresToolStripMenuItem.Click += new System.EventHandler(this.mostrarProveedoresToolStripMenuItem_Click);
            // 
            // realizarPedidoToolStripMenuItem
            // 
            this.realizarPedidoToolStripMenuItem.Name = "realizarPedidoToolStripMenuItem";
            this.realizarPedidoToolStripMenuItem.Size = new System.Drawing.Size(173, 22);
            this.realizarPedidoToolStripMenuItem.Text = "Realizar pedido";
            this.realizarPedidoToolStripMenuItem.Click += new System.EventHandler(this.realizarPedidoToolStripMenuItem_Click);
            // 
            // verPedidosToolStripMenuItem
            // 
            this.verPedidosToolStripMenuItem.Name = "verPedidosToolStripMenuItem";
            this.verPedidosToolStripMenuItem.Size = new System.Drawing.Size(173, 22);
            this.verPedidosToolStripMenuItem.Text = "Ver pedidos";
            this.verPedidosToolStripMenuItem.Click += new System.EventHandler(this.verPedidosToolStripMenuItem_Click);
            // 
            // reportesToolStripMenuItem
            // 
            this.reportesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mostrarReportesToolStripMenuItem});
            this.reportesToolStripMenuItem.Name = "reportesToolStripMenuItem";
            this.reportesToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.reportesToolStripMenuItem.Text = "Reportes";
            // 
            // mostrarReportesToolStripMenuItem
            // 
            this.mostrarReportesToolStripMenuItem.Name = "mostrarReportesToolStripMenuItem";
            this.mostrarReportesToolStripMenuItem.Size = new System.Drawing.Size(161, 22);
            this.mostrarReportesToolStripMenuItem.Text = "Mostrar reportes";
            // 
            // Cancelar
            // 
            this.Cancelar.BackColor = System.Drawing.Color.GhostWhite;
            this.Cancelar.FlatAppearance.BorderSize = 2;
            this.Cancelar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Cancelar.Font = new System.Drawing.Font("Century Gothic", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Cancelar.Image = ((System.Drawing.Image)(resources.GetObject("Cancelar.Image")));
            this.Cancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Cancelar.Location = new System.Drawing.Point(476, 443);
            this.Cancelar.Name = "Cancelar";
            this.Cancelar.Size = new System.Drawing.Size(109, 46);
            this.Cancelar.TabIndex = 7;
            this.Cancelar.Text = "Cancelar";
            this.Cancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.Cancelar.UseVisualStyleBackColor = false;
            this.Cancelar.Click += new System.EventHandler(this.Cancelar_Click);
            // 
            // Agregar
            // 
            this.Agregar.BackColor = System.Drawing.Color.GhostWhite;
            this.Agregar.FlatAppearance.BorderSize = 2;
            this.Agregar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Agregar.Font = new System.Drawing.Font("Century Gothic", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Agregar.Image = ((System.Drawing.Image)(resources.GetObject("Agregar.Image")));
            this.Agregar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Agregar.Location = new System.Drawing.Point(591, 443);
            this.Agregar.Name = "Agregar";
            this.Agregar.Size = new System.Drawing.Size(108, 46);
            this.Agregar.TabIndex = 6;
            this.Agregar.Text = "Guardar";
            this.Agregar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.Agregar.UseVisualStyleBackColor = false;
            this.Agregar.Click += new System.EventHandler(this.Agregar_Click);
            // 
            // AgregarProducto
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.PowderBlue;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(1180, 557);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Cancelar);
            this.Controls.Add(this.Agregar);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "AgregarProducto";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Carga de Productos";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtMarca;
        private System.Windows.Forms.TextBox txtPrecio;
        private System.Windows.Forms.Label CodProducto;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.Label TipoProducto;
        private System.Windows.Forms.Label Marca;
        private System.Windows.Forms.Label Precio;
        private System.Windows.Forms.Label Stock;
        private System.Windows.Forms.TextBox txtStock;
        private System.Windows.Forms.Button Agregar;
        private System.Windows.Forms.Button Cancelar;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem ventasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem agregarVentaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem productosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem agregarProductoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem verProductosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem verStockToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem proveedoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem agregarProveedorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mostrarProveedoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem realizarPedidoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mostrarReportesToolStripMenuItem;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTipo;
        private System.Windows.Forms.ToolStripMenuItem verPedidosToolStripMenuItem;
    }
}