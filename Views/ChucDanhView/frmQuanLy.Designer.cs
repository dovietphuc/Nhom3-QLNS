namespace VB2QLNS.Views.ChucDanhView
{
    partial class frmQuanLy
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
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.btnThem = new System.Windows.Forms.ToolStripButton();
            this.btnRefresh = new System.Windows.Forms.ToolStripButton();
            this.btnDong = new System.Windows.Forms.ToolStripButton();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtNoiDungTimKiem = new System.Windows.Forms.TextBox();
            this.radTimKiemTheoTen = new System.Windows.Forms.RadioButton();
            this.radTimKiemTheoMa = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dgwv = new System.Windows.Forms.DataGridView();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.labelStatus = new System.Windows.Forms.ToolStripStatusLabel();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.toolStrip1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgwv)).BeginInit();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // toolStrip1
            // 
            this.toolStrip1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnThem,
            this.btnRefresh,
            this.btnDong});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(693, 25);
            this.toolStrip1.TabIndex = 18;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // btnThem
            // 
            this.btnThem.Font = new System.Drawing.Font("Segoe UI", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThem.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnThem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(47, 22);
            this.btnThem.Text = "Thêm";
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // btnRefresh
            // 
            this.btnRefresh.Font = new System.Drawing.Font("Segoe UI", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRefresh.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnRefresh.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(67, 22);
            this.btnRefresh.Text = "Làm mới";
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // btnDong
            // 
            this.btnDong.Font = new System.Drawing.Font("Segoe UI", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDong.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnDong.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnDong.Name = "btnDong";
            this.btnDong.Size = new System.Drawing.Size(45, 22);
            this.btnDong.Text = "Đóng";
            this.btnDong.Click += new System.EventHandler(this.btnDong_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtNoiDungTimKiem);
            this.groupBox2.Controls.Add(this.radTimKiemTheoTen);
            this.groupBox2.Controls.Add(this.radTimKiemTheoMa);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox2.Location = new System.Drawing.Point(0, 25);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(693, 70);
            this.groupBox2.TabIndex = 20;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Tìm kiếm";
            // 
            // txtNoiDungTimKiem
            // 
            this.txtNoiDungTimKiem.Location = new System.Drawing.Point(12, 42);
            this.txtNoiDungTimKiem.Name = "txtNoiDungTimKiem";
            this.txtNoiDungTimKiem.Size = new System.Drawing.Size(675, 20);
            this.txtNoiDungTimKiem.TabIndex = 5;
            // 
            // radTimKiemTheoTen
            // 
            this.radTimKiemTheoTen.AutoSize = true;
            this.radTimKiemTheoTen.Location = new System.Drawing.Point(139, 19);
            this.radTimKiemTheoTen.Name = "radTimKiemTheoTen";
            this.radTimKiemTheoTen.Size = new System.Drawing.Size(122, 17);
            this.radTimKiemTheoTen.TabIndex = 4;
            this.radTimKiemTheoTen.TabStop = true;
            this.radTimKiemTheoTen.Text = "Theo tên chức danh";
            this.radTimKiemTheoTen.UseVisualStyleBackColor = true;
            // 
            // radTimKiemTheoMa
            // 
            this.radTimKiemTheoMa.AutoSize = true;
            this.radTimKiemTheoMa.Location = new System.Drawing.Point(12, 19);
            this.radTimKiemTheoMa.Name = "radTimKiemTheoMa";
            this.radTimKiemTheoMa.Size = new System.Drawing.Size(121, 17);
            this.radTimKiemTheoMa.TabIndex = 3;
            this.radTimKiemTheoMa.TabStop = true;
            this.radTimKiemTheoMa.Text = "Theo mã chức danh";
            this.radTimKiemTheoMa.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgwv);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 95);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(693, 425);
            this.groupBox1.TabIndex = 21;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin dữ liệu";
            // 
            // dgwv
            // 
            this.dgwv.AllowUserToAddRows = false;
            this.dgwv.AllowUserToDeleteRows = false;
            this.dgwv.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgwv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgwv.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column3,
            this.Column2,
            this.Column4,
            this.Column5});
            this.dgwv.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgwv.Location = new System.Drawing.Point(3, 16);
            this.dgwv.MultiSelect = false;
            this.dgwv.Name = "dgwv";
            this.dgwv.ReadOnly = true;
            this.dgwv.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgwv.Size = new System.Drawing.Size(687, 406);
            this.dgwv.TabIndex = 5;
            this.dgwv.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgwv_CellDoubleClick);
            this.dgwv.MouseClick += new System.Windows.Forms.MouseEventHandler(this.dgwv_MouseClick);
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.labelStatus});
            this.statusStrip1.Location = new System.Drawing.Point(0, 270);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(693, 22);
            this.statusStrip1.TabIndex = 22;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // labelStatus
            // 
            this.labelStatus.Name = "labelStatus";
            this.labelStatus.Size = new System.Drawing.Size(118, 17);
            this.labelStatus.Text = "toolStripStatusLabel1";
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "Id";
            this.Column1.FillWeight = 50.76142F;
            this.Column1.HeaderText = "Mã";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "TenChucDanh";
            this.Column3.HeaderText = "Tên chức danh";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "TenVietTat";
            this.Column2.FillWeight = 149.2386F;
            this.Column2.HeaderText = "Tên viết tắt";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "ThongTinMoTa";
            this.Column4.HeaderText = "Thông tin mô tả";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "TrangThaiSuDung";
            this.Column5.HeaderText = "Trạng thái sử dụng";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            this.Column5.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column5.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            // 
            // frmQuanLy
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(693, 292);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.toolStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmQuanLy";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DANH MỤC CHỨC DANH - QUẢN LÝ";
            this.Load += new System.EventHandler(this.frmQuanLy_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgwv)).EndInit();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton btnThem;
        private System.Windows.Forms.ToolStripButton btnRefresh;
        private System.Windows.Forms.ToolStripButton btnDong;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtNoiDungTimKiem;
        private System.Windows.Forms.RadioButton radTimKiemTheoTen;
        private System.Windows.Forms.RadioButton radTimKiemTheoMa;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgwv;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel labelStatus;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Column5;
    }
}