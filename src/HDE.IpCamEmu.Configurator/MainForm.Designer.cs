namespace HDE.IpCamEmu.Configurator
{
    partial class MainForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this._registerButton = new System.Windows.Forms.Button();
            this._registerGroupBox = new System.Windows.Forms.GroupBox();
            this._configurationInformation = new System.Windows.Forms.TextBox();
            this._enterLoginLabel = new System.Windows.Forms.Label();
            this._loginTextBox = new System.Windows.Forms.TextBox();
            this._registerGroupBox.SuspendLayout();
            this.SuspendLayout();
            // 
            // _registerButton
            // 
            this._registerButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this._registerButton.Location = new System.Drawing.Point(825, 58);
            this._registerButton.Name = "_registerButton";
            this._registerButton.Size = new System.Drawing.Size(155, 23);
            this._registerButton.TabIndex = 0;
            this._registerButton.Text = "Configure";
            this._registerButton.UseVisualStyleBackColor = true;
            this._registerButton.Click += new System.EventHandler(this.LaunchScript);
            // 
            // _registerGroupBox
            // 
            this._registerGroupBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this._registerGroupBox.Controls.Add(this._loginTextBox);
            this._registerGroupBox.Controls.Add(this._registerButton);
            this._registerGroupBox.Controls.Add(this._enterLoginLabel);
            this._registerGroupBox.Controls.Add(this._configurationInformation);
            this._registerGroupBox.Location = new System.Drawing.Point(12, 12);
            this._registerGroupBox.Name = "_registerGroupBox";
            this._registerGroupBox.Size = new System.Drawing.Size(995, 431);
            this._registerGroupBox.TabIndex = 1;
            this._registerGroupBox.TabStop = false;
            this._registerGroupBox.Text = "Configure Windows";
            // 
            // _configurationInformation
            // 
            this._configurationInformation.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this._configurationInformation.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this._configurationInformation.Font = new System.Drawing.Font("Courier New", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this._configurationInformation.Location = new System.Drawing.Point(16, 98);
            this._configurationInformation.Multiline = true;
            this._configurationInformation.Name = "_configurationInformation";
            this._configurationInformation.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this._configurationInformation.Size = new System.Drawing.Size(964, 315);
            this._configurationInformation.TabIndex = 0;
            // 
            // _enterLoginLabel
            // 
            this._enterLoginLabel.AutoSize = true;
            this._enterLoginLabel.Location = new System.Drawing.Point(13, 26);
            this._enterLoginLabel.Name = "_enterLoginLabel";
            this._enterLoginLabel.Size = new System.Drawing.Size(479, 13);
            this._enterLoginLabel.TabIndex = 1;
            this._enterLoginLabel.Text = "Enter login (Domain\\UserName or Computer\\Username) under which you\'d like to laun" +
    "ch IpCamEmu";
            // 
            // _loginTextBox
            // 
            this._loginTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this._loginTextBox.BackColor = System.Drawing.Color.White;
            this._loginTextBox.Location = new System.Drawing.Point(510, 23);
            this._loginTextBox.Name = "_loginTextBox";
            this._loginTextBox.Size = new System.Drawing.Size(470, 20);
            this._loginTextBox.TabIndex = 2;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1019, 455);
            this.Controls.Add(this._registerGroupBox);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Configurator";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this._registerGroupBox.ResumeLayout(false);
            this._registerGroupBox.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button _registerButton;
        private System.Windows.Forms.GroupBox _registerGroupBox;
        private System.Windows.Forms.TextBox _configurationInformation;
        private System.Windows.Forms.TextBox _loginTextBox;
        private System.Windows.Forms.Label _enterLoginLabel;
    }
}

