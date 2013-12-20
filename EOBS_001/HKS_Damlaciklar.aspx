﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HKS_Damlaciklar.aspx.cs" Inherits="EOBS_001.HKS_Damlaciklar" %>
<asp:Content ID="ContentDamlacik" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main_container container_16 clearfix full_size">
		<div class="box grid_16">
            <telerik:RadCodeBlock ID="Block1" runat="server">
                <%if (Session["OkulTur"].ToString() != "111")
                {
                %>  
			        <h2 class="box_head">REHBERLiK<span></span></h2>
                <%} %>
                <%if (Session["OkulTur"].ToString() == "111")
                {
                %>  
			        <h2 class="box_head">HAYDi TEKRAR EDELiM<span></span></h2>
                <%} %>
            </telerik:RadCodeBlock>
			<div class="controls">
				<a href="#" class="grabber"></a>
				<a href="#" class="toggle"></a>
			</div>
			<div class="toggle_container">
             <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
             <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
                <AjaxSettings>
                    <telerik:AjaxSetting AjaxControlID="GridDamla">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="GridDamla" LoadingPanelID="RadAjaxLoadingPanel1">
                            </telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                </AjaxSettings>
            </telerik:RadAjaxManager>
            <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Default"></telerik:RadAjaxLoadingPanel>
               <telerik:RadGrid ID="GridDamla" runat="server" CellSpacing="0"  GridLines="None" AllowPaging="True" Skin="WebBlue" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" DataSourceID="EDS_Damlaciklar" >
                
            <PagerStyle Mode="NextPrev" FirstPageToolTip="İlk Sayfa" LastPageToolTip="Son Sayfa" NextPagesToolTip="Sonraki Sayfalar" NextPageToolTip="Sonraki Sayfa" PagerTextFormat="{4}Gösterilen: <strong>{2}</strong>-<strong>{3}</strong> Toplam: <strong>{5}</strong>" PageSizeLabelText="Satır Sayısı:" PrevPagesToolTip="Önceki Sayfalar" PrevPageToolTip="Önceki Sayfa"  />
                <MasterTableView DataSourceID="EDS_Damlaciklar" AutoGenerateColumns="False" CommandItemSettings-AddNewRecordText="Yeni Damlacık Ekle" CommandItemSettings-RefreshText="Yenile" CommandItemSettings-ExportToExcelText="Excell" CommandItemDisplay="Top" DataKeyNames="DML_ID" NoMasterRecordsText="Kayıt Yok">
    
<CommandItemSettings AddNewRecordText="Yeni Ekle" RefreshText="Yenile" ExportToExcelText="Excell" ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column"></RowIndicatorColumn>

<ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column"></ExpandCollapseColumn>
    
                    <Columns>
                        <telerik:GridBoundColumn DataField="DML_ID" DataType="System.Int32" HeaderText="DML_ID" ReadOnly="True" UniqueName="DML_ID" Visible="false">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="DML_AD" HeaderText="ADI" UniqueName="DML_AD">
                        </telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="DML_METIN"  HeaderText="METİN" UniqueName="DML_METIN">     
                        </telerik:GridBoundColumn>--%>
                        <telerik:GridTemplateColumn DataField="SUB_ADS" HeaderText="SINIF" UniqueName="SUB_ADS">
                            <ItemTemplate>
                                <asp:Label ID="Temp4"  runat="server" Text='<% #Bind("SUB_ADS") %>' />
                            </ItemTemplate>
                            <InsertItemTemplate>
                                <telerik:RadComboBox ID="Temp5" CheckedItemsTexts="DisplayAllInInput" Text='<% #Bind("SUB_ADS") %>' EmptyMessage="Seçiniz.." Runat="server" Skin="WebBlue" DataSourceID="EDS_Subeler" DataTextField="SUB_AD" DataValueField="SUB_ID" CheckBoxes="true" EnableCheckAllItemsCheckBox="true" Localization-AllItemsCheckedString="Tüm Sınıflar" Localization-CheckAllString="Tüm Sınıflar" Localization-ItemsCheckedString="" Localization-NoMatches="Kayıt Yok" Width="600px" ></telerik:RadComboBox>
                            </InsertItemTemplate>
                            <EditItemTemplate>
                                <telerik:RadComboBox ID="Temp6" CheckedItemsTexts="DisplayAllInInput" Text='<% #Bind("SUB_ADS") %>' EmptyMessage="Seçiniz.."  Runat="server" Skin="WebBlue" DataSourceID="EDS_Subeler" DataTextField="SUB_AD" DataValueField="SUB_ID" CheckBoxes="true" EnableCheckAllItemsCheckBox="true" Localization-AllItemsCheckedString="Tüm Sınıflar" Localization-CheckAllString="Tüm Sınıflar" Localization-ItemsCheckedString="" Localization-NoMatches="Kayıt Yok" Width="600px" ></telerik:RadComboBox>
                            </EditItemTemplate>
                            <HeaderStyle Width="100px"></HeaderStyle>
                        </telerik:GridTemplateColumn>
                        <%--<telerik:GridDropDownColumn DropDownControlType="DropDownList" FilterControlWidth="60" DataField="SUB_ID" DataSourceID="EDS_Subeler" HeaderText="SINIF" ListTextField="SUB_AD" ListValueField="SUB_ID" UniqueName="SUB_ID" EnableEmptyListItem="true" EmptyListItemText="Seçiniz" >
                        </telerik:GridDropDownColumn>--%>
                        <telerik:GridTemplateColumn DataField="DML_METIN"  HeaderText="METİN" UniqueName="DML_METIN" Visible="false" >
                            <InsertItemTemplate>
                                <telerik:RadTextBox ID="Temp2"  runat="server" Text='<% #Bind("DML_METIN") %>' TextMode="MultiLine" Width="600" Height="400" />
                                
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Temp1" runat="server" Text='<% #Bind("DML_METIN") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <telerik:RadTextBox ID="Temp3"  runat="server" Text='<% #Bind("DML_METIN") %>' TextMode="MultiLine" Width="600" Height="300" />
                            </EditItemTemplate>
                        </telerik:GridTemplateColumn>
                        <%--<telerik:GridHTMLEditorColumn DataField="DML_METIN" HeaderText="METİN" UniqueName="DML_METIN">
                        </telerik:GridHTMLEditorColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="HFT_ID" DataType="System.Int32"  HeaderText="HFT_ID" UniqueName="HFT_ID" Visible="false">
                        </telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="OKL_ID" DataType="System.Int32"  HeaderText="OKL_ID" UniqueName="OKL_ID" Visible="false">
                        </telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="SNF_ID" DataType="System.Int32"  HeaderText="SNF_ID" UniqueName="SNF_ID" Visible="false">
                        </telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="SNF_IDS" HeaderText="SINIFLAR" UniqueName="SNF_IDS">
                        </telerik:GridBoundColumn>--%>
                         <telerik:GridEditCommandColumn ButtonType="PushButton" EditText="Düzenle" UniqueName="EditCommandColumn">
                            <HeaderStyle Width="60px"></HeaderStyle>
                        </telerik:GridEditCommandColumn>
                        <telerik:GridButtonColumn  ConfirmText="Siliniyor..Onaylıyor musunuz?" ConfirmDialogType="RadWindow"
                            ConfirmTitle="Siliniyor.." ButtonType="PushButton" CommandName="Delete" Text="Sil" UniqueName="DeleteColumn">
                            <HeaderStyle Width="40px"></HeaderStyle>
                        </telerik:GridButtonColumn> 
                        
                    </Columns>
                    
                    <EditFormSettings >

                        <EditColumn ButtonType="PushButton" CancelText="İptal" InsertText="Kaydet" UpdateText="Güncelle" />
                     </EditFormSettings>
                    <EditItemStyle BackColor="Yellow" />
                    
                </MasterTableView>
            <StatusBarSettings LoadingText="Yükleniyor..." ReadyText="Hazır" />
        </telerik:RadGrid>
                <asp:EntityDataSource ID="EDS_Damlaciklar" runat="server" ConnectionString="name=EOBSEntities" DefaultContainerName="EOBSEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="DAMLACIKLAR" EntityTypeFilter="DAMLACIKLAR" OnDeleted="EDS_Damlaciklar_Deleted" OnInserted="EDS_Damlaciklar_Inserted" OnUpdated="EDS_Damlaciklar_Updated" AutoGenerateWhereClause="True" Where="" OnInserting="EDS_Damlaciklar_Inserting" OnUpdating="EDS_Damlaciklar_Inserting">
                    <WhereParameters>
                        <asp:SessionParameter Name="OKL_ID" SessionField="AktifOkulId" DbType="Int32" />
                        <asp:SessionParameter Name="HFT_ID" SessionField="AktifHaftaId" DbType="Int32" />
                    </WhereParameters>
                </asp:EntityDataSource>
                <asp:EntityDataSource ID="EDS_Subeler" runat="server" ConnectionString="name=EOBSEntities" DefaultContainerName="EOBSEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="SUBELER" EntityTypeFilter="SUBELER" Where="" AutoGenerateWhereClause="True" Select="">
                     <WhereParameters>
                         <asp:SessionParameter DbType="Int32" Name="OKL_ID" SessionField="AktifOkulId" />
                     </WhereParameters>
                 </asp:EntityDataSource>
		
		
                <asp:SqlDataSource ID="SDS_Ara" runat="server" ConnectionString="<%$ ConnectionStrings:EOBS_001ConnectionString %>" DeleteCommand="DELETE FROM [ARA_TBL1] WHERE [ARA_ID] = @ARA_ID" InsertCommand="INSERT INTO [ARA_TBL1] ([SUB_ID], [DML_ID], [DYR_ID], [ODV_ID], [HFT_ID]) VALUES (@SUB_ID, @DML_ID, @DYR_ID, @ODV_ID, @HFT_ID)" SelectCommand="SELECT * FROM [ARA_TBL1]" UpdateCommand="UPDATE [ARA_TBL1] SET [SUB_ID] = @SUB_ID, [DML_ID] = @DML_ID, [DYR_ID] = @DYR_ID, [ODV_ID] = @ODV_ID, [HFT_ID] = @HFT_ID WHERE [ARA_ID] = @ARA_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ARA_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SUB_ID" Type="Int32" />
                        <asp:Parameter Name="DML_ID" Type="Int32" />
                        <asp:Parameter Name="DYR_ID" Type="Int32" />
                        <asp:Parameter Name="ODV_ID" Type="Int32" />
                        <asp:Parameter Name="HFT_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SUB_ID" Type="Int32" />
                        <asp:Parameter Name="DML_ID" Type="Int32" />
                        <asp:Parameter Name="DYR_ID" Type="Int32" />
                        <asp:Parameter Name="ODV_ID" Type="Int32" />
                        <asp:Parameter Name="HFT_ID" Type="Int32" />
                        <asp:Parameter Name="ARA_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
		
		
            </div>
		</div>
	</div>
</asp:Content>
