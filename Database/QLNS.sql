create database QLNS

GO

USE [QLNS]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ BacLuong : Delete ----------------
create proc [dbo].[BacLuong_ProcDelete]
@Id int
as
begin
	delete BacLuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ BacLuong : Insert ----------------
create proc [dbo].[BacLuong_ProcInsert]
@MaBacLuong nvarchar(500),
@TenBacLuong nvarchar(500),
@ThongTinMoTa nvarchar(500),
@HeSoLuong float
as
begin
	insert into BacLuong values
	(
		@MaBacLuong,
		@TenBacLuong,
		@ThongTinMoTa,
		@HeSoLuong
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ BacLuong : Select All ----------------
create proc [dbo].[BacLuong_ProcSelectAll]
as
begin
	select * from BacLuong	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ BacLuong : Select By Key ----------------
create proc [dbo].[BacLuong_ProcSelectByID]
@Id int
as
begin
	select * from BacLuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ BacLuong : Update ----------------
create proc [dbo].[BacLuong_ProcUpdate]
@Id int,
@MaBacLuong nvarchar(500),
@TenBacLuong nvarchar(500),
@ThongTinMoTa nvarchar(500),
@HeSoLuong float
as
begin
	update BacLuong set
		MaBacLuong=@MaBacLuong,
		TenBacLuong=@TenBacLuong,
		ThongTinMoTa=@ThongTinMoTa,
		HeSoLuong=@HeSoLuong
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucDanh : Delete ----------------
create proc [dbo].[ChucDanh_ProcDelete]
@Id int
as
begin
	delete ChucDanh where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucDanh : Insert ----------------
create proc [dbo].[ChucDanh_ProcInsert]
@TenChucDanh nvarchar(500),
@TenVietTat nvarchar(50),
@ThongTinMoTa nvarchar(500),
@TrangThaiSuDung bit
as
begin
	insert into ChucDanh values
	(
		@TenChucDanh,
		@TenVietTat,
		@ThongTinMoTa,
		@TrangThaiSuDung
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucDanh : Select All ----------------
create proc [dbo].[ChucDanh_ProcSelectAll]
as
begin
	select * from ChucDanh	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucDanh : Select By Key ----------------
create proc [dbo].[ChucDanh_ProcSelectByID]
@Id int
as
begin
	select * from ChucDanh where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucDanh : Update ----------------
create proc [dbo].[ChucDanh_ProcUpdate]
@Id int,
@TenChucDanh nvarchar(500),
@TenVietTat nvarchar(50),
@ThongTinMoTa nvarchar(500),
@TrangThaiSuDung bit
as
begin
	update ChucDanh set
		TenChucDanh=@TenChucDanh,
		TenVietTat=@TenVietTat,
		ThongTinMoTa=@ThongTinMoTa,
		TrangThaiSuDung=@TrangThaiSuDung
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucVu : Delete ----------------
create proc [dbo].[ChucVu_ProcDelete]
@Id int
as
begin
	delete ChucVu where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucVu : Insert ----------------
create proc [dbo].[ChucVu_ProcInsert]
@TenChucVu nvarchar(500),
@GhiChu nvarchar(500),
@TrangThaiSuDung bit
as
begin
	insert into ChucVu values
	(
		@TenChucVu,
		@GhiChu,
		@TrangThaiSuDung
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucVu : Select All ----------------
create proc [dbo].[ChucVu_ProcSelectAll]
as
begin
	select * from ChucVu	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucVu : Select By Key ----------------
create proc [dbo].[ChucVu_ProcSelectByID]
@Id int
as
begin
	select * from ChucVu where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChucVu : Update ----------------
create proc [dbo].[ChucVu_ProcUpdate]
@Id int,
@TenChucVu nvarchar(500),
@GhiChu nvarchar(500),
@TrangThaiSuDung bit
as
begin
	update ChucVu set
		TenChucVu=@TenChucVu,
		GhiChu=@GhiChu,
		TrangThaiSuDung=@TrangThaiSuDung
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChuyenNganhDaoTao : Delete ----------------
create proc [dbo].[ChuyenNganhDaoTao_ProcDelete]
@Id int
as
begin
	delete ChuyenNganhDaoTao where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChuyenNganhDaoTao : Insert ----------------
create proc [dbo].[ChuyenNganhDaoTao_ProcInsert]
@MaChuyenNganhDaoTao nvarchar(50),
@TenChuyenNganhDaoTao nvarchar(100),
@ThongTinMoTa nvarchar(500),
@TrangThaiSuDung bit
as
begin
	insert into ChuyenNganhDaoTao values
	(
		@MaChuyenNganhDaoTao,
		@TenChuyenNganhDaoTao,
		@ThongTinMoTa,
		@TrangThaiSuDung
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChuyenNganhDaoTao : Select All ----------------
create proc [dbo].[ChuyenNganhDaoTao_ProcSelectAll]
as
begin
	select * from ChuyenNganhDaoTao	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChuyenNganhDaoTao : Select By Key ----------------
create proc [dbo].[ChuyenNganhDaoTao_ProcSelectByID]
@Id int
as
begin
	select * from ChuyenNganhDaoTao where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ChuyenNganhDaoTao : Update ----------------
create proc [dbo].[ChuyenNganhDaoTao_ProcUpdate]
@Id int,
@MaChuyenNganhDaoTao nvarchar(50),
@TenChuyenNganhDaoTao nvarchar(100),
@ThongTinMoTa nvarchar(500),
@TrangThaiSuDung bit
as
begin
	update ChuyenNganhDaoTao set
		MaChuyenNganhDaoTao=@MaChuyenNganhDaoTao,
		TenChuyenNganhDaoTao=@TenChuyenNganhDaoTao,
		ThongTinMoTa=@ThongTinMoTa,
		TrangThaiSuDung=@TrangThaiSuDung
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ DanToc : Delete ----------------
create proc [dbo].[DanToc_ProcDelete]
@Id int
as
begin
	delete DanToc where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ DanToc : Insert ----------------
create proc [dbo].[DanToc_ProcInsert]
@TenDanToc nvarchar(500)
as
begin
	insert into DanToc values
	(
		@TenDanToc
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ DanToc : Select All ----------------
create proc [dbo].[DanToc_ProcSelectAll]
as
begin
	select * from DanToc	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ DanToc : Select By Key ----------------
create proc [dbo].[DanToc_ProcSelectByID]
@Id int
as
begin
	select * from DanToc where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ DanToc : Update ----------------
create proc [dbo].[DanToc_ProcUpdate]
@Id int,
@TenDanToc nvarchar(500)
as
begin
	update DanToc set
		TenDanToc=@TenDanToc
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucDaoTao : Delete ----------------
create proc [dbo].[HinhThucDaoTao_ProcDelete]
@Id int
as
begin
	delete HinhThucDaoTao where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucDaoTao : Insert ----------------
create proc [dbo].[HinhThucDaoTao_ProcInsert]
@TenHinhThucDaoTao nvarchar(500)
as
begin
	insert into HinhThucDaoTao values
	(
		@TenHinhThucDaoTao
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucDaoTao : Select All ----------------
create proc [dbo].[HinhThucDaoTao_ProcSelectAll]
as
begin
	select * from HinhThucDaoTao	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucDaoTao : Select By Key ----------------
create proc [dbo].[HinhThucDaoTao_ProcSelectByID]
@Id int
as
begin
	select * from HinhThucDaoTao where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucDaoTao : Update ----------------
create proc [dbo].[HinhThucDaoTao_ProcUpdate]
@Id int,
@TenHinhThucDaoTao nvarchar(500)
as
begin
	update HinhThucDaoTao set
		TenHinhThucDaoTao=@TenHinhThucDaoTao
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucHuongLuong : Delete ----------------
create proc [dbo].[HinhThucHuongLuong_ProcDelete]
@Id int
as
begin
	delete HinhThucHuongLuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucHuongLuong : Insert ----------------
create proc [dbo].[HinhThucHuongLuong_ProcInsert]
@TenHinhThucHuongLuong nvarchar(100)
as
begin
	insert into HinhThucHuongLuong values
	(
		@TenHinhThucHuongLuong
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucHuongLuong : Select All ----------------
create proc [dbo].[HinhThucHuongLuong_ProcSelectAll]
as
begin
	select * from HinhThucHuongLuong	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucHuongLuong : Select By Key ----------------
create proc [dbo].[HinhThucHuongLuong_ProcSelectByID]
@Id int
as
begin
	select * from HinhThucHuongLuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucHuongLuong : Update ----------------
create proc [dbo].[HinhThucHuongLuong_ProcUpdate]
@Id int,
@TenHinhThucHuongLuong nvarchar(100)
as
begin
	update HinhThucHuongLuong set
		TenHinhThucHuongLuong=@TenHinhThucHuongLuong
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucNghi : Delete ----------------
create proc [dbo].[HinhThucNghi_ProcDelete]
@Id int
as
begin
	delete HinhThucNghi where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucNghi : Insert ----------------
create proc [dbo].[HinhThucNghi_ProcInsert]
@TenHinhThucNghi nvarchar(500)
as
begin
	insert into HinhThucNghi values
	(
		@TenHinhThucNghi
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucNghi : Select All ----------------
create proc [dbo].[HinhThucNghi_ProcSelectAll]
as
begin
	select * from HinhThucNghi	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucNghi : Select By Key ----------------
create proc [dbo].[HinhThucNghi_ProcSelectByID]
@Id int
as
begin
	select * from HinhThucNghi where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucNghi : Update ----------------
create proc [dbo].[HinhThucNghi_ProcUpdate]
@Id int,
@TenHinhThucNghi nvarchar(500)
as
begin
	update HinhThucNghi set
		TenHinhThucNghi=@TenHinhThucNghi
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucTuyenDung : Delete ----------------
create proc [dbo].[HinhThucTuyenDung_ProcDelete]
@Id int
as
begin
	delete HinhThucTuyenDung where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucTuyenDung : Insert ----------------
create proc [dbo].[HinhThucTuyenDung_ProcInsert]
@TenHinhThucTuyenDung nvarchar(100)
as
begin
	insert into HinhThucTuyenDung values
	(
		@TenHinhThucTuyenDung
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ HinhThucTuyenDung : Select All ----------------
create proc [dbo].[HinhThucTuyenDung_ProcSelectAll]
as
begin
	select * from HinhThucTuyenDung	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucTuyenDung : Select By Key ----------------
create proc [dbo].[HinhThucTuyenDung_ProcSelectByID]
@Id int
as
begin
	select * from HinhThucTuyenDung where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ HinhThucTuyenDung : Update ----------------
create proc [dbo].[HinhThucTuyenDung_ProcUpdate]
@Id int,
@TenHinhThucTuyenDung nvarchar(100)
as
begin
	update HinhThucTuyenDung set
		TenHinhThucTuyenDung=@TenHinhThucTuyenDung
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ LoaiHopDong : Delete ----------------
create proc [dbo].[LoaiHopDong_ProcDelete]
@Id int
as
begin
	delete LoaiHopDong where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ LoaiHopDong : Insert ----------------
create proc [dbo].[LoaiHopDong_ProcInsert]
@TenLoaiHopDong nvarchar(500)
as
begin
	insert into LoaiHopDong values
	(
		@TenLoaiHopDong
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ LoaiHopDong : Select All ----------------
create proc [dbo].[LoaiHopDong_ProcSelectAll]
as
begin
	select * from LoaiHopDong	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ LoaiHopDong : Select By Key ----------------
create proc [dbo].[LoaiHopDong_ProcSelectByID]
@Id int
as
begin
	select * from LoaiHopDong where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ LoaiHopDong : Update ----------------
create proc [dbo].[LoaiHopDong_ProcUpdate]
@Id int,
@TenLoaiHopDong nvarchar(500)
as
begin
	update LoaiHopDong set
		TenLoaiHopDong=@TenLoaiHopDong
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[NhanSu_AdvanceSearch]
@PhongBanIds nvarchar(50),
@SearchContent nvarchar(50),
@TinhTrangHonNhanId int,
@TinhThanhId int,
@QuocGiaId int,
@ChucVuId int,
@ChucDanhId int,
@HinhThucDaoTaoId int,
@ChuyenNganhDaoTaoId int,
@TrinhDoNgoaiNguId int,
@TrinhDoTinHocId int,
@TrinhDoVanHoaId int,
@FromAge int,
@ToAge int
as
begin
	select 
		NhanSu.Id,NhanSu.HoTen,NhanSu.AnhDaiDien,NhanSu.NgaySinh,NhanSu.EmailCongTy,NhanSu.SoDienThoaiDiDong,
		TinhTrangHonNhan.TinhTrangHonNhan,
		DanToc.TenDanToc,
		TonGiao.TenTonGiao,
		TinhThanh.TenTinhThanh,
		QuocGia.TenQuocGia,
		ChucVu.TenChucVu,
		ChucDanh.TenChucDanh,
		PhongBan.TenPhongBan,
		HinhThucDaoTao.TenHinhThucDaoTao,
		ChuyenNganhDaoTao.TenChuyenNganhDaoTao,
		TrinhDoNgoaiNgu.TrinhDoNgoaiNgu,
		TrinhDoTinHoc.TrinhDoTinHoc,
		TruongDaoTao.TenTruongDaoTao,
		TrinhDoVanHoa.TrinhDoTotNghiep
	from NhanSu
	inner join TinhTrangHonNhan on TinhTrangHonNhan.Id = NhanSu.TinhTrangHonNhanId
	inner join DanToc on DanToc.Id = NhanSu.DanTocId
	inner join TonGiao on TonGiao.Id = NhanSu.TonGiaoId
	inner join TinhThanh on TinhThanh.Id = NhanSu.TinhThanhId
	inner join QuocGia on QuocGia.Id = NhanSu.QuocGiaId
	inner join ChucVu on ChucVu.Id = NhanSu.ChucVuId
	inner join ChucDanh on ChucDanh.Id = NhanSu.ChucDanhId
	inner join PhongBan on PhongBan.Id = NhanSu.PhongBanId
	inner join HinhThucDaoTao on HinhThucDaoTao.Id = NhanSu.HinhThucDaoTaoId
	inner join ChuyenNganhDaoTao on ChuyenNganhDaoTao.Id = NhanSu.ChuyenNganhDaoTaoId
	inner join TrinhDoNgoaiNgu on TrinhDoNgoaiNgu.Id = NhanSu.TrinhDoNgoaiNguId
	inner join TrinhDoTinHoc on TrinhDoTinHoc.Id = NhanSu.TrinhDoTinHocId
	inner join TruongDaoTao on TruongDaoTao.Id = NhanSu.TruongDaoTaoId
	inner join TrinhDoVanHoa on TrinhDoVanHoa.Id = NhanSu.TrinhDoVanHoaId
	where NhanSu.PhongBanId in (SELECT * FROM dbo.splitstring(@PhongBanIds))
			AND (NhanSu.HoTen like '%'+ @SearchContent + '%' OR 
					NhanSu.EmailCaNhan like '%'+ @SearchContent + '%' OR
					NhanSu.EmailCongTy  like '%'+ @SearchContent + '%' OR
					NhanSu.TenKhac  like '%'+ @SearchContent + '%' OR
					NhanSu.NoiSinh  like '%'+ @SearchContent + '%' OR
					NhanSu.SoCMND  like '%'+ @SearchContent + '%' OR
					NhanSu.SoDienThoaiBan  like '%'+ @SearchContent + '%' OR
					NhanSu.SoDienThoaiDiDong  like '%'+ @SearchContent + '%' OR
					DanToc.TenDanToc  like '%'+ @SearchContent + '%' OR
					TinhThanh.TenTinhThanh  like '%'+ @SearchContent + '%' OR
					QuocGia.TenQuocGia  like '%'+ @SearchContent + '%' OR
					ChucDanh.TenChucDanh  like '%'+ @SearchContent + '%' OR
					ChucVu.TenChucVu  like '%'+ @SearchContent + '%' )
			AND TinhTrangHonNhanId like CASE WHEN @TinhTrangHonNhanId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @TinhTrangHonNhanId)
							  END			
			AND TinhThanhId like CASE WHEN @TinhThanhId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @TinhThanhId)
							  END
			AND QuocGiaId like CASE WHEN @QuocGiaId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @QuocGiaId)
							  END
			AND ChucVuId like CASE WHEN @ChucVuId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @ChucVuId)
							  END
			AND ChucDanhId like CASE WHEN @ChucDanhId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @ChucDanhId)
							  END
			AND HinhThucDaoTaoId like CASE WHEN @HinhThucDaoTaoId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @HinhThucDaoTaoId)
							  END
			AND ChuyenNganhDaoTaoId like CASE WHEN @ChuyenNganhDaoTaoId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @ChuyenNganhDaoTaoId)
							  END
			AND TrinhDoNgoaiNguId like CASE WHEN @TrinhDoNgoaiNguId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @TrinhDoNgoaiNguId)
							  END
			AND TrinhDoTinHocId like CASE WHEN @TrinhDoTinHocId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @TrinhDoTinHocId)
							  END
			AND TrinhDoVanHoaId like CASE WHEN @TrinhDoVanHoaId = 0 THEN 
								'%' 
							  ELSE
								CONVERT(nvarchar(50), @TrinhDoVanHoaId)
							  END
			AND CONVERT(int,ROUND(DATEDIFF(hour,NhanSu.NgaySinh,GETDATE())/8766.0,0)) between @FromAge and @ToAge
	
			
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NhanSu_FindAll]
as
begin
select 
	NhanSu.Id,NhanSu.HoTen,NhanSu.AnhDaiDien,NhanSu.NgaySinh,NhanSu.EmailCongTy,NhanSu.SoDienThoaiDiDong,
	--TinhTrangHonNhan.TinhTrangHonNhan,
	--DanToc.TenDanToc,
	--TonGiao.TenTonGiao,
	TinhThanh.TenTinhThanh,
	QuocGia.TenQuocGia,
	ChucVu.TenChucVu,
	ChucDanh.TenChucDanh,
	PhongBan.TenPhongBan,
	--HinhThucDaoTao.TenHinhThucDaoTao,
	--ChuyenNganhDaoTao.TenChuyenNganhDaoTao,
	TrinhDoNgoaiNgu.TrinhDoNgoaiNgu,
	TrinhDoTinHoc.TrinhDoTinHoc,
	--TruongDaoTao.TenTruongDaoTao,
	TrinhDoVanHoa.TrinhDoTotNghiep
from NhanSu
inner join TinhTrangHonNhan on TinhTrangHonNhan.Id = NhanSu.TinhTrangHonNhanId
inner join DanToc on DanToc.Id = NhanSu.DanTocId
inner join TonGiao on TonGiao.Id = NhanSu.TonGiaoId
inner join TinhThanh on TinhThanh.Id = NhanSu.TinhThanhId
inner join QuocGia on QuocGia.Id = NhanSu.QuocGiaId
inner join ChucVu on ChucVu.Id = NhanSu.ChucVuId
inner join ChucDanh on ChucDanh.Id = NhanSu.ChucDanhId
inner join PhongBan on PhongBan.Id = NhanSu.PhongBanId
inner join HinhThucDaoTao on HinhThucDaoTao.Id = NhanSu.HinhThucDaoTaoId
inner join ChuyenNganhDaoTao on ChuyenNganhDaoTao.Id = NhanSu.ChuyenNganhDaoTaoId
inner join TrinhDoNgoaiNgu on TrinhDoNgoaiNgu.Id = NhanSu.TrinhDoNgoaiNguId
inner join TrinhDoTinHoc on TrinhDoTinHoc.Id = NhanSu.TrinhDoTinHocId
inner join TruongDaoTao on TruongDaoTao.Id = NhanSu.TruongDaoTaoId
inner join TrinhDoVanHoa on TrinhDoVanHoa.Id = NhanSu.TrinhDoVanHoaId

end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NhanSu_FindAllByPhongBan] --'1,4,12,11,3,10,2,9,8,7,6,5'
@PhongBanIds nvarchar(50)
as
begin
	select 
		NhanSu.Id,NhanSu.HoTen,NhanSu.AnhDaiDien,NhanSu.NgaySinh,NhanSu.EmailCongTy,NhanSu.SoDienThoaiDiDong,
		TinhTrangHonNhan.TinhTrangHonNhan,
		DanToc.TenDanToc,
		TonGiao.TenTonGiao,
		TinhThanh.TenTinhThanh,
		QuocGia.TenQuocGia,
		ChucVu.TenChucVu,
		ChucDanh.TenChucDanh,
		PhongBan.TenPhongBan,
		HinhThucDaoTao.TenHinhThucDaoTao,
		ChuyenNganhDaoTao.TenChuyenNganhDaoTao,
		TrinhDoNgoaiNgu.TrinhDoNgoaiNgu,
		TrinhDoTinHoc.TrinhDoTinHoc,
		TruongDaoTao.TenTruongDaoTao,
		TrinhDoVanHoa.TrinhDoTotNghiep
	from NhanSu
	inner join TinhTrangHonNhan on TinhTrangHonNhan.Id = NhanSu.TinhTrangHonNhanId
	inner join DanToc on DanToc.Id = NhanSu.DanTocId
	inner join TonGiao on TonGiao.Id = NhanSu.TonGiaoId
	inner join TinhThanh on TinhThanh.Id = NhanSu.TinhThanhId
	inner join QuocGia on QuocGia.Id = NhanSu.QuocGiaId
	inner join ChucVu on ChucVu.Id = NhanSu.ChucVuId
	inner join ChucDanh on ChucDanh.Id = NhanSu.ChucDanhId
	inner join PhongBan on PhongBan.Id = NhanSu.PhongBanId
	inner join HinhThucDaoTao on HinhThucDaoTao.Id = NhanSu.HinhThucDaoTaoId
	inner join ChuyenNganhDaoTao on ChuyenNganhDaoTao.Id = NhanSu.ChuyenNganhDaoTaoId
	inner join TrinhDoNgoaiNgu on TrinhDoNgoaiNgu.Id = NhanSu.TrinhDoNgoaiNguId
	inner join TrinhDoTinHoc on TrinhDoTinHoc.Id = NhanSu.TrinhDoTinHocId
	inner join TruongDaoTao on TruongDaoTao.Id = NhanSu.TruongDaoTaoId
	inner join TrinhDoVanHoa on TrinhDoVanHoa.Id = NhanSu.TrinhDoVanHoaId
	where NhanSu.PhongBanId in (SELECT * FROM dbo.splitstring(@PhongBanIds))

end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhanSu_FindAllByPhongBanAndText]
@PhongBanIds nvarchar(50),
@Search nvarchar(100)
as
begin
	select 
		NhanSu.Id,NhanSu.HoTen,NhanSu.AnhDaiDien,NhanSu.NgaySinh,NhanSu.EmailCongTy,NhanSu.SoDienThoaiDiDong,
		TinhTrangHonNhan.TinhTrangHonNhan,
		DanToc.TenDanToc,
		TonGiao.TenTonGiao,
		TinhThanh.TenTinhThanh,
		QuocGia.TenQuocGia,
		ChucVu.TenChucVu,
		ChucDanh.TenChucDanh,
		PhongBan.TenPhongBan,
		HinhThucDaoTao.TenHinhThucDaoTao,
		ChuyenNganhDaoTao.TenChuyenNganhDaoTao,
		TrinhDoNgoaiNgu.TrinhDoNgoaiNgu,
		TrinhDoTinHoc.TrinhDoTinHoc,
		TruongDaoTao.TenTruongDaoTao,
		TrinhDoVanHoa.TrinhDoTotNghiep
	from NhanSu
	inner join TinhTrangHonNhan on TinhTrangHonNhan.Id = NhanSu.TinhTrangHonNhanId
	inner join DanToc on DanToc.Id = NhanSu.DanTocId
	inner join TonGiao on TonGiao.Id = NhanSu.TonGiaoId
	inner join TinhThanh on TinhThanh.Id = NhanSu.TinhThanhId
	inner join QuocGia on QuocGia.Id = NhanSu.QuocGiaId
	inner join ChucVu on ChucVu.Id = NhanSu.ChucVuId
	inner join ChucDanh on ChucDanh.Id = NhanSu.ChucDanhId
	inner join PhongBan on PhongBan.Id = NhanSu.PhongBanId
	inner join HinhThucDaoTao on HinhThucDaoTao.Id = NhanSu.HinhThucDaoTaoId
	inner join ChuyenNganhDaoTao on ChuyenNganhDaoTao.Id = NhanSu.ChuyenNganhDaoTaoId
	inner join TrinhDoNgoaiNgu on TrinhDoNgoaiNgu.Id = NhanSu.TrinhDoNgoaiNguId
	inner join TrinhDoTinHoc on TrinhDoTinHoc.Id = NhanSu.TrinhDoTinHocId
	inner join TruongDaoTao on TruongDaoTao.Id = NhanSu.TruongDaoTaoId
	inner join TrinhDoVanHoa on TrinhDoVanHoa.Id = NhanSu.TrinhDoVanHoaId
	where NhanSu.PhongBanId in (SELECT * FROM dbo.splitstring(@PhongBanIds))
	and (NhanSu.HoTen like '%'+ @Search + '%' OR 
		NhanSu.EmailCaNhan like '%'+ @Search + '%' OR
		NhanSu.EmailCongTy  like '%'+ @Search + '%' OR
		NhanSu.TenKhac  like '%'+ @Search + '%' OR
		NhanSu.NoiSinh  like '%'+ @Search + '%' OR
		NhanSu.SoCMND  like '%'+ @Search + '%' OR
		NhanSu.SoDienThoaiBan  like '%'+ @Search + '%' OR
		NhanSu.SoDienThoaiDiDong  like '%'+ @Search + '%' OR
		DanToc.TenDanToc  like '%'+ @Search + '%' OR
		TinhThanh.TenTinhThanh  like '%'+ @Search + '%' OR
		QuocGia.TenQuocGia  like '%'+ @Search + '%' OR
		ChucDanh.TenChucDanh  like '%'+ @Search + '%' OR
		ChucVu.TenChucVu  like '%'+ @Search + '%'		
	)

end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NhanSu_FindAllNangCao] --'1,4,12,11,3,10,2,9,8,7,6,5', 'NhanSu.HoTen'
@PhongBanIds nvarchar(50),
@text nvarchar(100)
as
begin
	select 
		NhanSu.Id,NhanSu.HoTen,NhanSu.AnhDaiDien,NhanSu.NgaySinh,NhanSu.EmailCongTy,NhanSu.SoDienThoaiDiDong,
		TinhTrangHonNhan.TinhTrangHonNhan,
		DanToc.TenDanToc,
		TonGiao.TenTonGiao,
		TinhThanh.TenTinhThanh,
		QuocGia.TenQuocGia,
		ChucVu.TenChucVu,
		ChucDanh.TenChucDanh,
		PhongBan.TenPhongBan,
		HinhThucDaoTao.TenHinhThucDaoTao,
		ChuyenNganhDaoTao.TenChuyenNganhDaoTao,
		TrinhDoNgoaiNgu.TrinhDoNgoaiNgu,
		TrinhDoTinHoc.TrinhDoTinHoc,
		TruongDaoTao.TenTruongDaoTao,
		TrinhDoVanHoa.TrinhDoTotNghiep
	from NhanSu
	inner join TinhTrangHonNhan on TinhTrangHonNhan.Id = NhanSu.TinhTrangHonNhanId
	inner join DanToc on DanToc.Id = NhanSu.DanTocId
	inner join TonGiao on TonGiao.Id = NhanSu.TonGiaoId
	inner join TinhThanh on TinhThanh.Id = NhanSu.TinhThanhId
	inner join QuocGia on QuocGia.Id = NhanSu.QuocGiaId
	inner join ChucVu on ChucVu.Id = NhanSu.ChucVuId
	inner join ChucDanh on ChucDanh.Id = NhanSu.ChucDanhId
	inner join PhongBan on PhongBan.Id = NhanSu.PhongBanId
	inner join HinhThucDaoTao on HinhThucDaoTao.Id = NhanSu.HinhThucDaoTaoId
	inner join ChuyenNganhDaoTao on ChuyenNganhDaoTao.Id = NhanSu.ChuyenNganhDaoTaoId
	inner join TrinhDoNgoaiNgu on TrinhDoNgoaiNgu.Id = NhanSu.TrinhDoNgoaiNguId
	inner join TrinhDoTinHoc on TrinhDoTinHoc.Id = NhanSu.TrinhDoTinHocId
	inner join TruongDaoTao on TruongDaoTao.Id = NhanSu.TruongDaoTaoId
	inner join TrinhDoVanHoa on TrinhDoVanHoa.Id = NhanSu.TrinhDoVanHoaId
	where NhanSu.PhongBanId in (SELECT * FROM dbo.splitstring(@PhongBanIds))
	--and COLLATIONNAME(@text) like '%a'

end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhanSu_FindByName]
@stringSearch nvarchar(100),
@PhongBanIds nvarchar(50)
as
begin
	select 
		NhanSu.Id,NhanSu.HoTen,NhanSu.AnhDaiDien,NhanSu.NgaySinh,NhanSu.EmailCongTy,NhanSu.SoDienThoaiDiDong,
		TinhTrangHonNhan.TinhTrangHonNhan,
		DanToc.TenDanToc,
		TonGiao.TenTonGiao,
		TinhThanh.TenTinhThanh,
		QuocGia.TenQuocGia,
		ChucVu.TenChucVu,
		ChucDanh.TenChucDanh,
		PhongBan.TenPhongBan,
		HinhThucDaoTao.TenHinhThucDaoTao,
		ChuyenNganhDaoTao.TenChuyenNganhDaoTao,
		TrinhDoNgoaiNgu.TrinhDoNgoaiNgu,
		TrinhDoTinHoc.TrinhDoTinHoc,
		TruongDaoTao.TenTruongDaoTao,
		TrinhDoVanHoa.TrinhDoTotNghiep
	from NhanSu
	inner join TinhTrangHonNhan on TinhTrangHonNhan.Id = NhanSu.TinhTrangHonNhanId
	inner join DanToc on DanToc.Id = NhanSu.DanTocId
	inner join TonGiao on TonGiao.Id = NhanSu.TonGiaoId
	inner join TinhThanh on TinhThanh.Id = NhanSu.TinhThanhId
	inner join QuocGia on QuocGia.Id = NhanSu.QuocGiaId
	inner join ChucVu on ChucVu.Id = NhanSu.ChucVuId
	inner join ChucDanh on ChucDanh.Id = NhanSu.ChucDanhId
	inner join PhongBan on PhongBan.Id = NhanSu.PhongBanId
	inner join HinhThucDaoTao on HinhThucDaoTao.Id = NhanSu.HinhThucDaoTaoId
	inner join ChuyenNganhDaoTao on ChuyenNganhDaoTao.Id = NhanSu.ChuyenNganhDaoTaoId
	inner join TrinhDoNgoaiNgu on TrinhDoNgoaiNgu.Id = NhanSu.TrinhDoNgoaiNguId
	inner join TrinhDoTinHoc on TrinhDoTinHoc.Id = NhanSu.TrinhDoTinHocId
	inner join TruongDaoTao on TruongDaoTao.Id = NhanSu.TruongDaoTaoId
	inner join TrinhDoVanHoa on TrinhDoVanHoa.Id = NhanSu.TrinhDoVanHoaId
	where NhanSu.PhongBanId in (SELECT * FROM dbo.splitstring(@PhongBanIds)) AND
			NhanSu.HoTen like N'%' + @stringSearch + '%'
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu : Delete ----------------
create proc [dbo].[NhanSu_ProcDelete]
@Id int
as
begin
	delete NhanSu where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu : Insert ----------------
create proc [dbo].[NhanSu_ProcInsert]
@TinhTrangHonNhanId int,
@DanTocId int,
@TonGiaoId int,
@TinhThanhId int,
@QuocGiaId int,
@ChucVuId int,
@ChucDanhId int,
@PhongBanId int,
@HinhThucDaoTaoId int,
@ChuyenNganhDaoTaoId int,
@TrinhDoNgoaiNguId int,
@TrinhDoTinHocId int,
@TruongDaoTaoId int,
@TrinhDoVanHoaId int,
@HoTen nvarchar(100),
@TenKhac nvarchar(100),
@AnhDaiDien nvarchar(500),
@NgaySinh date,
@GioiTinh bit,
@SoCMND varchar(20),
@NgayCapCMND date,
@NoiCapCMND nvarchar(50),
@NoiSinh nvarchar(50),
@QueQuan nvarchar(50),
@HoKhauThuongTru nvarchar(100),
@NoiSongHienTai nvarchar(100),
@SoDienThoaiDiDong nvarchar(50),
@SoDienThoaiBan nvarchar(50),
@EmailCaNhan nvarchar(50),
@EmailCongTy nvarchar(50)
as
begin
	insert into NhanSu values
	(
		@TinhTrangHonNhanId,
		@DanTocId,
		@TonGiaoId,
		@TinhThanhId,
		@QuocGiaId,
		@ChucVuId,
		@ChucDanhId,
		@PhongBanId,
		@HinhThucDaoTaoId,
		@ChuyenNganhDaoTaoId,
		@TrinhDoNgoaiNguId,
		@TrinhDoTinHocId,
		@TruongDaoTaoId,
		@TrinhDoVanHoaId,
		@HoTen,
		@TenKhac,
		@AnhDaiDien,
		@NgaySinh,
		@GioiTinh,
		@SoCMND,
		@NgayCapCMND,
		@NoiCapCMND,
		@NoiSinh,
		@QueQuan,
		@HoKhauThuongTru,
		@NoiSongHienTai,
		@SoDienThoaiDiDong,
		@SoDienThoaiBan,
		@EmailCaNhan,
		@EmailCongTy
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ NhanSu : Select All ----------------
create proc [dbo].[NhanSu_ProcSelectAll]
as
begin
	select * from NhanSu	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu : Select By Key ----------------
create proc [dbo].[NhanSu_ProcSelectByID]
@Id int
as
begin
	select * from NhanSu where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu : Update ----------------
create proc [dbo].[NhanSu_ProcUpdate]
@Id int,
@TinhTrangHonNhanId int,
@DanTocId int,
@TonGiaoId int,
@TinhThanhId int,
@QuocGiaId int,
@ChucVuId int,
@ChucDanhId int,
@PhongBanId int,
@HinhThucDaoTaoId int,
@ChuyenNganhDaoTaoId int,
@TrinhDoNgoaiNguId int,
@TrinhDoTinHocId int,
@TruongDaoTaoId int,
@TrinhDoVanHoaId int,
@HoTen nvarchar(100),
@TenKhac nvarchar(100),
@AnhDaiDien nvarchar(500),
@NgaySinh date,
@GioiTinh bit,
@SoCMND varchar(20),
@NgayCapCMND date,
@NoiCapCMND nvarchar(50),
@NoiSinh nvarchar(50),
@QueQuan nvarchar(50),
@HoKhauThuongTru nvarchar(100),
@NoiSongHienTai nvarchar(100),
@SoDienThoaiDiDong nvarchar(50),
@SoDienThoaiBan nvarchar(50),
@EmailCaNhan nvarchar(50),
@EmailCongTy nvarchar(50)
as
begin
	update NhanSu set
		TinhTrangHonNhanId=@TinhTrangHonNhanId,
		DanTocId=@DanTocId,
		TonGiaoId=@TonGiaoId,
		TinhThanhId=@TinhThanhId,
		QuocGiaId=@QuocGiaId,
		ChucVuId=@ChucVuId,
		ChucDanhId=@ChucDanhId,
		PhongBanId=@PhongBanId,
		HinhThucDaoTaoId=@HinhThucDaoTaoId,
		ChuyenNganhDaoTaoId=@ChuyenNganhDaoTaoId,
		TrinhDoNgoaiNguId=@TrinhDoNgoaiNguId,
		TrinhDoTinHocId=@TrinhDoTinHocId,
		TruongDaoTaoId=@TruongDaoTaoId,
		TrinhDoVanHoaId=@TrinhDoVanHoaId,
		HoTen=@HoTen,
		TenKhac=@TenKhac,
		AnhDaiDien=@AnhDaiDien,
		NgaySinh=@NgaySinh,
		GioiTinh=@GioiTinh,
		SoCMND=@SoCMND,
		NgayCapCMND=@NgayCapCMND,
		NoiCapCMND=@NoiCapCMND,
		NoiSinh=@NoiSinh,
		QueQuan=@QueQuan,
		HoKhauThuongTru=@HoKhauThuongTru,
		NoiSongHienTai=@NoiSongHienTai,
		SoDienThoaiDiDong=@SoDienThoaiDiDong,
		SoDienThoaiBan=@SoDienThoaiBan,
		EmailCaNhan=@EmailCaNhan,
		EmailCongTy=@EmailCongTy
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhanSu_QuaTrinhDaoTao_FindAllByNhanSu]
@NhanSuId int
as
begin
	select * from NhanSu_QuaTrinhDaoTao where NhanSuId = @NhanSuId
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhDaoTao : Delete ----------------
create proc [dbo].[NhanSu_QuaTrinhDaoTao_ProcDelete]
@Id int
as
begin
	delete NhanSu_QuaTrinhDaoTao where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhDaoTao : Insert ----------------
create proc [dbo].[NhanSu_QuaTrinhDaoTao_ProcInsert]
@NhanSuId int,
@TuNgay date,
@DenNgay date,
@Loai nvarchar(200),
@HinhThuc nvarchar(200),
@ChuyenNganh nvarchar(200),
@ChungChi nvarchar(200),
@TenTruongDaoTao nvarchar(200),
@NuocDaoTao nvarchar(200)
as
begin
	insert into NhanSu_QuaTrinhDaoTao values
	(
		@NhanSuId,
		@TuNgay,
		@DenNgay,
		@Loai,
		@HinhThuc,
		@ChuyenNganh,
		@ChungChi,
		@TenTruongDaoTao,
		@NuocDaoTao
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ NhanSu_QuaTrinhDaoTao : Select All ----------------
create proc [dbo].[NhanSu_QuaTrinhDaoTao_ProcSelectAll]
as
begin
	select * from NhanSu_QuaTrinhDaoTao	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhDaoTao : Select By Key ----------------
create proc [dbo].[NhanSu_QuaTrinhDaoTao_ProcSelectByID]
@Id int
as
begin
	select * from NhanSu_QuaTrinhDaoTao where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhDaoTao : Update ----------------
create proc [dbo].[NhanSu_QuaTrinhDaoTao_ProcUpdate]
@Id int,
@NhanSuId int,
@TuNgay date,
@DenNgay date,
@Loai nvarchar(200),
@HinhThuc nvarchar(200),
@ChuyenNganh nvarchar(200),
@ChungChi nvarchar(200),
@TenTruongDaoTao nvarchar(200),
@NuocDaoTao nvarchar(200)
as
begin
	update NhanSu_QuaTrinhDaoTao set
		NhanSuId=@NhanSuId,
		TuNgay=@TuNgay,
		DenNgay=@DenNgay,
		Loai=@Loai,
		HinhThuc=@HinhThuc,
		ChuyenNganh=@ChuyenNganh,
		ChungChi=@ChungChi,
		TenTruongDaoTao=@TenTruongDaoTao,
		NuocDaoTao=@NuocDaoTao
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhanSu_QuaTrinhHopDong_FindAllByNhanSu]
@NhanSuId int
as
begin
	select t.Id,t.TuNgay,t.DenNgay,
			LoaiHopDong.TenLoaiHopDong,
			PhongBan.TenPhongBan,
			ChucVu.TenChucVu,
			t.GhiChu		
	from NhanSu_QuaTrinhHopDong as t
	inner join LoaiHopDong on LoaiHopDong.Id = t.LoaiHopDongId
	inner join ChucVu on ChucVu.Id = t.ChucVuId
	inner join PhongBan on PhongBan.Id = t.PhongBanId
	where t.NhanSuId = @NhanSuId
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhHopDong : Delete ----------------
create proc [dbo].[NhanSu_QuaTrinhHopDong_ProcDelete]
@Id int
as
begin
	delete NhanSu_QuaTrinhHopDong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhHopDong : Insert ----------------
create proc [dbo].[NhanSu_QuaTrinhHopDong_ProcInsert]
@NhanSuId int,
@LoaiHopDongId int,
@ChucVuId int,
@PhongBanId int,
@TuNgay date,
@DenNgay date,
@GhiChu nvarchar(200)
as
begin
	insert into NhanSu_QuaTrinhHopDong values
	(
		@NhanSuId,
		@LoaiHopDongId,
		@ChucVuId,
		@PhongBanId,
		@TuNgay,
		@DenNgay,
		@GhiChu
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ NhanSu_QuaTrinhHopDong : Select All ----------------
create proc [dbo].[NhanSu_QuaTrinhHopDong_ProcSelectAll]
as
begin
	select * from NhanSu_QuaTrinhHopDong	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhHopDong : Select By Key ----------------
create proc [dbo].[NhanSu_QuaTrinhHopDong_ProcSelectByID]
@Id int
as
begin
	select * from NhanSu_QuaTrinhHopDong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhHopDong : Update ----------------
create proc [dbo].[NhanSu_QuaTrinhHopDong_ProcUpdate]
@Id int,
@NhanSuId int,
@LoaiHopDongId int,
@ChucVuId int,
@PhongBanId int,
@TuNgay date,
@DenNgay date,
@GhiChu nvarchar(200)
as
begin
	update NhanSu_QuaTrinhHopDong set
		NhanSuId=@NhanSuId,
		LoaiHopDongId=@LoaiHopDongId,
		ChucVuId=@ChucVuId,
		PhongBanId=@PhongBanId,
		TuNgay=@TuNgay,
		DenNgay=@DenNgay,
		GhiChu=@GhiChu
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhanSu_QuaTrinhKhenThuong_FindAllByNhanSu]
@NhanSuId int
as
begin
	select * from NhanSu_QuaTrinhKhenThuong where NhanSuId = @NhanSuId
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKhenThuong : Delete ----------------
create proc [dbo].[NhanSu_QuaTrinhKhenThuong_ProcDelete]
@Id int
as
begin
	delete NhanSu_QuaTrinhKhenThuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKhenThuong : Insert ----------------
create proc [dbo].[NhanSu_QuaTrinhKhenThuong_ProcInsert]
@NhanSuId int,
@TuNgay date,
@DenNgay date,
@HinhThuc nvarchar(200),
@LyDo nvarchar(200),
@GiaTri float
as
begin
	insert into NhanSu_QuaTrinhKhenThuong values
	(
		@NhanSuId,
		@TuNgay,
		@DenNgay,
		@HinhThuc,
		@LyDo,
		@GiaTri
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ NhanSu_QuaTrinhKhenThuong : Select All ----------------
create proc [dbo].[NhanSu_QuaTrinhKhenThuong_ProcSelectAll]
as
begin
	select * from NhanSu_QuaTrinhKhenThuong	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKhenThuong : Select By Key ----------------
create proc [dbo].[NhanSu_QuaTrinhKhenThuong_ProcSelectByID]
@Id int
as
begin
	select * from NhanSu_QuaTrinhKhenThuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKhenThuong : Update ----------------
create proc [dbo].[NhanSu_QuaTrinhKhenThuong_ProcUpdate]
@Id int,
@NhanSuId int,
@TuNgay date,
@DenNgay date,
@HinhThuc nvarchar(200),
@LyDo nvarchar(200),
@GiaTri float
as
begin
	update NhanSu_QuaTrinhKhenThuong set
		NhanSuId=@NhanSuId,
		TuNgay=@TuNgay,
		DenNgay=@DenNgay,
		HinhThuc=@HinhThuc,
		LyDo=@LyDo,
		GiaTri=@GiaTri
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhanSu_QuaTrinhKyLuat_FindAllByNhanSu]
@NhanSuId int
as
begin
	select * from NhanSu_QuaTrinhKyLuat where NhanSuId = @NhanSuId
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKyLuat : Delete ----------------
create proc [dbo].[NhanSu_QuaTrinhKyLuat_ProcDelete]
@Id int
as
begin
	delete NhanSu_QuaTrinhKyLuat where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKyLuat : Insert ----------------
create proc [dbo].[NhanSu_QuaTrinhKyLuat_ProcInsert]
@NhanSuId int,
@TuNgay date,
@DenNgay date,
@HinhThuc nvarchar(200),
@LyDo nvarchar(200),
@GiaTri float
as
begin
	insert into NhanSu_QuaTrinhKyLuat values
	(
		@NhanSuId,
		@TuNgay,
		@DenNgay,
		@HinhThuc,
		@LyDo,
		@GiaTri
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ NhanSu_QuaTrinhKyLuat : Select All ----------------
create proc [dbo].[NhanSu_QuaTrinhKyLuat_ProcSelectAll]
as
begin
	select * from NhanSu_QuaTrinhKyLuat	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKyLuat : Select By Key ----------------
create proc [dbo].[NhanSu_QuaTrinhKyLuat_ProcSelectByID]
@Id int
as
begin
	select * from NhanSu_QuaTrinhKyLuat where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhKyLuat : Update ----------------
create proc [dbo].[NhanSu_QuaTrinhKyLuat_ProcUpdate]
@Id int,
@NhanSuId int,
@TuNgay date,
@DenNgay date,
@HinhThuc nvarchar(200),
@LyDo nvarchar(200),
@GiaTri float
as
begin
	update NhanSu_QuaTrinhKyLuat set
		NhanSuId=@NhanSuId,
		TuNgay=@TuNgay,
		DenNgay=@DenNgay,
		HinhThuc=@HinhThuc,
		LyDo=@LyDo,
		GiaTri=@GiaTri
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhanSu_QuaTrinhLuong_FindAllByNhanSu]
@NhanSuId int
as
begin
select t.Id,t.TuNgay,t.DenNgay,
		HinhThucHuongLuong.TenHinhThucHuongLuong,
		BacLuong.TenBacLuong,
		t.TienLuong
from NhanSu_QuaTrinhLuong as t
inner join HinhThucHuongLuong on HinhThucHuongLuong.Id = t.HinhThucHuongLuongId
inner join BacLuong on BacLuong.Id = t.BacLuongId
where t.NhanSuId = NhanSuId
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhLuong : Delete ----------------
create proc [dbo].[NhanSu_QuaTrinhLuong_ProcDelete]
@Id int
as
begin
	delete NhanSu_QuaTrinhLuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NhanSu_QuaTrinhLuong_ProcInsert]
@NhanSuId int,
@HinhThucHuongLuongId int,
@BacLuongId int,
@TuNgay date,
@DenNgay date,
@TienLuong float
as
begin
	insert into NhanSu_QuaTrinhLuong values
	(
		@NhanSuId,
		@HinhThucHuongLuongId,
		@BacLuongId,
		@TuNgay,
		@DenNgay,
		@TienLuong
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ NhanSu_QuaTrinhLuong : Select All ----------------
create proc [dbo].[NhanSu_QuaTrinhLuong_ProcSelectAll]
as
begin
	select * from NhanSu_QuaTrinhLuong	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhLuong : Select By Key ----------------
create proc [dbo].[NhanSu_QuaTrinhLuong_ProcSelectByID]
@Id int
as
begin
	select * from NhanSu_QuaTrinhLuong where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ NhanSu_QuaTrinhLuong : Update ----------------
create proc [dbo].[NhanSu_QuaTrinhLuong_ProcUpdate]
@Id int,
@NhanSuId int,
@HinhThucHuongLuongId int,
@BacLuongId int,
@TuNgay date,
@DenNgay date,
@TienLuong float
as
begin
	update NhanSu_QuaTrinhLuong set
		NhanSuId=@NhanSuId,
		HinhThucHuongLuongId=@HinhThucHuongLuongId,
		BacLuongId=@BacLuongId,
		TuNgay=@TuNgay,
		DenNgay=@DenNgay,
		TienLuong=@TienLuong
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhongBan : Delete ----------------
create proc [dbo].[PhongBan_ProcDelete]
@Id int
as
begin
	delete PhongBan where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhongBan : Insert ----------------
create proc [dbo].[PhongBan_ProcInsert]
@ParentId int,
@TenPhongBan nvarchar(500),
@SoDienThoai nvarchar(500),
@DiaChi nvarchar(500),
@Email nvarchar(500)
as
begin
	insert into PhongBan values
	(
		@ParentId,
		@TenPhongBan,
		@SoDienThoai,
		@DiaChi,
		@Email
	)
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ PhongBan : Select All ----------------
create proc [dbo].[PhongBan_ProcSelectAll]
as
begin
	select * from PhongBan	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhongBan : Select By Key ----------------
create proc [dbo].[PhongBan_ProcSelectByID]
@Id int
as
begin
	select * from PhongBan where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhongBan : Update ----------------
create proc [dbo].[PhongBan_ProcUpdate]
@Id int,
@ParentId int,
@TenPhongBan nvarchar(500),
@SoDienThoai nvarchar(500),
@DiaChi nvarchar(500),
@Email nvarchar(500)
as
begin
	update PhongBan set
		ParentId=@ParentId,
		TenPhongBan=@TenPhongBan,
		SoDienThoai=@SoDienThoai,
		DiaChi=@DiaChi,
		Email=@Email
	where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhuCap : Delete ----------------
create proc [dbo].[PhuCap_ProcDelete]
@Id int
as
begin
	delete PhuCap where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhuCap : Insert ----------------
create proc [dbo].[PhuCap_ProcInsert]
@PhuCap nvarchar(500),
@GiaTri float
as
begin
	insert into PhuCap values
	(
		@PhuCap,
		@GiaTri
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ PhuCap : Select All ----------------
create proc [dbo].[PhuCap_ProcSelectAll]
as
begin
	select * from PhuCap	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhuCap : Select By Key ----------------
create proc [dbo].[PhuCap_ProcSelectByID]
@Id int
as
begin
	select * from PhuCap where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ PhuCap : Update ----------------
create proc [dbo].[PhuCap_ProcUpdate]
@Id int,
@PhuCap nvarchar(500),
@GiaTri float
as
begin
	update PhuCap set
		PhuCap=@PhuCap,
		GiaTri=@GiaTri
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ QuocGia : Delete ----------------
create proc [dbo].[QuocGia_ProcDelete]
@Id int
as
begin
	delete QuocGia where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ QuocGia : Insert ----------------
create proc [dbo].[QuocGia_ProcInsert]
@TenQuocGia nvarchar(500)
as
begin
	insert into QuocGia values
	(
		@TenQuocGia
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ QuocGia : Select All ----------------
create proc [dbo].[QuocGia_ProcSelectAll]
as
begin
	select * from QuocGia	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ QuocGia : Select By Key ----------------
create proc [dbo].[QuocGia_ProcSelectByID]
@Id int
as
begin
	select * from QuocGia where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ QuocGia : Update ----------------
create proc [dbo].[QuocGia_ProcUpdate]
@Id int,
@TenQuocGia nvarchar(500)
as
begin
	update QuocGia set
		TenQuocGia=@TenQuocGia
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TenQuocGia : Delete ----------------
create proc [dbo].[TenQuocGia_ProcDelete]
@Id int
as
begin
	delete TenQuocGia where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TenQuocGia : Insert ----------------
create proc [dbo].[TenQuocGia_ProcInsert]
@TenQuocGia nvarchar(500)
as
begin
	insert into TenQuocGia values
	(
		@TenQuocGia
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TenQuocGia : Select All ----------------
create proc [dbo].[TenQuocGia_ProcSelectAll]
as
begin
	select * from TenQuocGia	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TenQuocGia : Select By Key ----------------
create proc [dbo].[TenQuocGia_ProcSelectByID]
@Id int
as
begin
	select * from TenQuocGia where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TenQuocGia : Update ----------------
create proc [dbo].[TenQuocGia_ProcUpdate]
@Id int,
@TenQuocGia nvarchar(500)
as
begin
	update TenQuocGia set
		TenQuocGia=@TenQuocGia
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhThanh : Delete ----------------
create proc [dbo].[TinhThanh_ProcDelete]
@Id int
as
begin
	delete TinhThanh where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhThanh : Insert ----------------
create proc [dbo].[TinhThanh_ProcInsert]
@TenTinhThanh nvarchar(500)
as
begin
	insert into TinhThanh values
	(
		@TenTinhThanh
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TinhThanh : Select All ----------------
create proc [dbo].[TinhThanh_ProcSelectAll]
as
begin
	select * from TinhThanh	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhThanh : Select By Key ----------------
create proc [dbo].[TinhThanh_ProcSelectByID]
@Id int
as
begin
	select * from TinhThanh where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhThanh : Update ----------------
create proc [dbo].[TinhThanh_ProcUpdate]
@Id int,
@TenTinhThanh nvarchar(500)
as
begin
	update TinhThanh set
		TenTinhThanh=@TenTinhThanh
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhTrangHonNhan : Delete ----------------
create proc [dbo].[TinhTrangHonNhan_ProcDelete]
@Id int
as
begin
	delete TinhTrangHonNhan where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhTrangHonNhan : Insert ----------------
create proc [dbo].[TinhTrangHonNhan_ProcInsert]
@TinhTrangHonNhan nvarchar(500)
as
begin
	insert into TinhTrangHonNhan values
	(
		@TinhTrangHonNhan
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TinhTrangHonNhan : Select All ----------------
create proc [dbo].[TinhTrangHonNhan_ProcSelectAll]
as
begin
	select * from TinhTrangHonNhan	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhTrangHonNhan : Select By Key ----------------
create proc [dbo].[TinhTrangHonNhan_ProcSelectByID]
@Id int
as
begin
	select * from TinhTrangHonNhan where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TinhTrangHonNhan : Update ----------------
create proc [dbo].[TinhTrangHonNhan_ProcUpdate]
@Id int,
@TinhTrangHonNhan nvarchar(500)
as
begin
	update TinhTrangHonNhan set
		TinhTrangHonNhan=@TinhTrangHonNhan
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TonGiao : Delete ----------------
create proc [dbo].[TonGiao_ProcDelete]
@Id int
as
begin
	delete TonGiao where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TonGiao : Insert ----------------
create proc [dbo].[TonGiao_ProcInsert]
@TenTonGiao nvarchar(50)
as
begin
	insert into TonGiao values
	(
		@TenTonGiao
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TonGiao : Select All ----------------
create proc [dbo].[TonGiao_ProcSelectAll]
as
begin
	select * from TonGiao	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TonGiao : Select By Key ----------------
create proc [dbo].[TonGiao_ProcSelectByID]
@Id int
as
begin
	select * from TonGiao where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TonGiao : Update ----------------
create proc [dbo].[TonGiao_ProcUpdate]
@Id int,
@TenTonGiao nvarchar(50)
as
begin
	update TonGiao set
		TenTonGiao=@TenTonGiao
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrangThaiHopDong : Delete ----------------
create proc [dbo].[TrangThaiHopDong_ProcDelete]
@Id int
as
begin
	delete TrangThaiHopDong where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrangThaiHopDong : Insert ----------------
create proc [dbo].[TrangThaiHopDong_ProcInsert]
@TenTrangThaiHD nvarchar(50)
as
begin
	insert into TrangThaiHopDong values
	(
		@TenTrangThaiHD
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TrangThaiHopDong : Select All ----------------
create proc [dbo].[TrangThaiHopDong_ProcSelectAll]
as
begin
	select * from TrangThaiHopDong	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrangThaiHopDong : Select By Key ----------------
create proc [dbo].[TrangThaiHopDong_ProcSelectByID]
@Id int
as
begin
	select * from TrangThaiHopDong where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrangThaiHopDong : Update ----------------
create proc [dbo].[TrangThaiHopDong_ProcUpdate]
@Id int,
@TenTrangThaiHD nvarchar(50)
as
begin
	update TrangThaiHopDong set
		TenTrangThaiHD=@TenTrangThaiHD
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoNgoaiNgu : Delete ----------------
create proc [dbo].[TrinhDoNgoaiNgu_ProcDelete]
@Id int
as
begin
	delete TrinhDoNgoaiNgu where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoNgoaiNgu : Insert ----------------
create proc [dbo].[TrinhDoNgoaiNgu_ProcInsert]
@TrinhDoNgoaiNgu nvarchar(100)
as
begin
	insert into TrinhDoNgoaiNgu values
	(
		@TrinhDoNgoaiNgu
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TrinhDoNgoaiNgu : Select All ----------------
create proc [dbo].[TrinhDoNgoaiNgu_ProcSelectAll]
as
begin
	select * from TrinhDoNgoaiNgu	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoNgoaiNgu : Select By Key ----------------
create proc [dbo].[TrinhDoNgoaiNgu_ProcSelectByID]
@Id int
as
begin
	select * from TrinhDoNgoaiNgu where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoNgoaiNgu : Update ----------------
create proc [dbo].[TrinhDoNgoaiNgu_ProcUpdate]
@Id int,
@TrinhDoNgoaiNgu nvarchar(100)
as
begin
	update TrinhDoNgoaiNgu set
		TrinhDoNgoaiNgu=@TrinhDoNgoaiNgu
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoTinHoc : Delete ----------------
create proc [dbo].[TrinhDoTinHoc_ProcDelete]
@Id int
as
begin
	delete TrinhDoTinHoc where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoTinHoc : Insert ----------------
create proc [dbo].[TrinhDoTinHoc_ProcInsert]
@TrinhDoTinHoc nvarchar(100)
as
begin
	insert into TrinhDoTinHoc values
	(
		@TrinhDoTinHoc
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TrinhDoTinHoc : Select All ----------------
create proc [dbo].[TrinhDoTinHoc_ProcSelectAll]
as
begin
	select * from TrinhDoTinHoc	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoTinHoc : Select By Key ----------------
create proc [dbo].[TrinhDoTinHoc_ProcSelectByID]
@Id int
as
begin
	select * from TrinhDoTinHoc where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoTinHoc : Update ----------------
create proc [dbo].[TrinhDoTinHoc_ProcUpdate]
@Id int,
@TrinhDoTinHoc nvarchar(100)
as
begin
	update TrinhDoTinHoc set
		TrinhDoTinHoc=@TrinhDoTinHoc
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoVanHoa : Delete ----------------
create proc [dbo].[TrinhDoVanHoa_ProcDelete]
@Id int
as
begin
	delete TrinhDoVanHoa where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoVanHoa : Insert ----------------
create proc [dbo].[TrinhDoVanHoa_ProcInsert]
@TrinhDoTotNghiep nvarchar(500)
as
begin
	insert into TrinhDoVanHoa values
	(
		@TrinhDoTotNghiep
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TrinhDoVanHoa : Select All ----------------
create proc [dbo].[TrinhDoVanHoa_ProcSelectAll]
as
begin
	select * from TrinhDoVanHoa	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoVanHoa : Select By Key ----------------
create proc [dbo].[TrinhDoVanHoa_ProcSelectByID]
@Id int
as
begin
	select * from TrinhDoVanHoa where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TrinhDoVanHoa : Update ----------------
create proc [dbo].[TrinhDoVanHoa_ProcUpdate]
@Id int,
@TrinhDoTotNghiep nvarchar(500)
as
begin
	update TrinhDoVanHoa set
		TrinhDoTotNghiep=@TrinhDoTotNghiep
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TruongDaoTao : Delete ----------------
create proc [dbo].[TruongDaoTao_ProcDelete]
@Id int
as
begin
	delete TruongDaoTao where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TruongDaoTao : Insert ----------------
create proc [dbo].[TruongDaoTao_ProcInsert]
@TenTruongDaoTao nvarchar(500)
as
begin
	insert into TruongDaoTao values
	(
		@TenTruongDaoTao
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ TruongDaoTao : Select All ----------------
create proc [dbo].[TruongDaoTao_ProcSelectAll]
as
begin
	select * from TruongDaoTao	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TruongDaoTao : Select By Key ----------------
create proc [dbo].[TruongDaoTao_ProcSelectByID]
@Id int
as
begin
	select * from TruongDaoTao where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ TruongDaoTao : Update ----------------
create proc [dbo].[TruongDaoTao_ProcUpdate]
@Id int,
@TenTruongDaoTao nvarchar(500)
as
begin
	update TruongDaoTao set
		TenTruongDaoTao=@TenTruongDaoTao
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ ViTriTuyenDung : Delete ----------------
create proc [dbo].[ViTriTuyenDung_ProcDelete]
@Id int
as
begin
	delete ViTriTuyenDung where Id=@Id	
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ ViTriTuyenDung : Insert ----------------
create proc [dbo].[ViTriTuyenDung_ProcInsert]
@TenViTriTuyenDung nvarchar(50),
@TrangThaiSuDung bit
as
begin
	insert into ViTriTuyenDung values
	(
		@TenViTriTuyenDung,
		@TrangThaiSuDung
	)
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ViTriTuyenDung : select all --
create proc [dbo].[ViTriTuyenDung_ProcSelectAll]
as
begin
	select * from ViTriTuyenDung
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------ ViTriTuyenDung : Select By Key ----------------
create proc [dbo].[ViTriTuyenDung_ProcSelectByID]
@Id int
as
begin
	select * from ViTriTuyenDung where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------ ViTriTuyenDung : Update ----------------
create proc [dbo].[ViTriTuyenDung_ProcUpdate]
@Id int,
@TenViTriTuyenDung nvarchar(50),
@TrangThaiSuDung bit
as
begin
	update ViTriTuyenDung set
		TenViTriTuyenDung=@TenViTriTuyenDung,
		TrangThaiSuDung=@TrangThaiSuDung
	where Id=@Id	
end


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[splitstring] ( @stringToSplit VARCHAR(MAX) )
RETURNS
 @returnList TABLE ([Name] [nvarchar] (500))
AS
BEGIN

 DECLARE @name NVARCHAR(255)
 DECLARE @pos INT

 WHILE CHARINDEX(',', @stringToSplit) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(',', @stringToSplit)  
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @name

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END

 INSERT INTO @returnList
 SELECT @stringToSplit

 RETURN
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BacLuong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaBacLuong] [nvarchar](500) NULL,
	[TenBacLuong] [nvarchar](500) NULL,
	[ThongTinMoTa] [nvarchar](500) NULL,
	[HeSoLuong] [float] NULL,
 CONSTRAINT [PK_BacLuong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucDanh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChucDanh] [nvarchar](500) NULL,
	[TenVietTat] [nvarchar](50) NULL,
	[ThongTinMoTa] [nvarchar](500) NULL,
	[TrangThaiSuDung] [bit] NULL,
 CONSTRAINT [PK_ChucDanh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](500) NULL,
	[GhiChu] [nvarchar](500) NULL,
	[TrangThaiSuDung] [bit] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganhDaoTao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenNganhDaoTao] [nvarchar](50) NULL,
	[TenChuyenNganhDaoTao] [nvarchar](100) NULL,
	[ThongTinMoTa] [nvarchar](500) NULL,
	[TrangThaiSuDung] [bit] NULL,
 CONSTRAINT [PK_ChuyenNganhDaoTao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanToc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDanToc] [nvarchar](500) NULL,
 CONSTRAINT [PK_DanToc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucDaoTao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThucDaoTao] [nvarchar](500) NULL,
 CONSTRAINT [PK_HinhThucDaoTao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucHuongLuong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThucHuongLuong] [nvarchar](100) NULL,
 CONSTRAINT [PK_HinhThucHuongLuong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucNghi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThucNghi] [nvarchar](500) NULL,
 CONSTRAINT [PK_HinhThucNghi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucTuyenDung](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThucTuyenDung] [nvarchar](100) NULL,
 CONSTRAINT [PK_HinhThucTuyenDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHopDong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiHopDong] [nvarchar](500) NULL,
 CONSTRAINT [PK_LoaiHopDong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanSu](
	[Id] [int] NOT NULL,
	[TinhTrangHonNhanId] [int] NULL,
	[DanTocId] [int] NULL,
	[TonGiaoId] [int] NULL,
	[TinhThanhId] [int] NULL,
	[QuocGiaId] [int] NULL,
	[ChucVuId] [int] NULL,
	[ChucDanhId] [int] NULL,
	[PhongBanId] [int] NULL,
	[HinhThucDaoTaoId] [int] NULL,
	[ChuyenNganhDaoTaoId] [int] NULL,
	[TrinhDoNgoaiNguId] [int] NULL,
	[TrinhDoTinHocId] [int] NULL,
	[TruongDaoTaoId] [int] NULL,
	[TrinhDoVanHoaId] [int] NULL,
	[HoTen] [nvarchar](100) NULL,
	[TenKhac] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[SoCMND] [varchar](20) NULL,
	[NgayCapCMND] [date] NULL,
	[NoiCapCMND] [nvarchar](50) NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[HoKhauThuongTru] [nvarchar](100) NULL,
	[NoiSongHienTai] [nvarchar](100) NULL,
	[SoDienThoaiDiDong] [nvarchar](50) NULL,
	[SoDienThoaiBan] [nvarchar](50) NULL,
	[EmailCaNhan] [nvarchar](50) NULL,
	[EmailCongTy] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanSu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSu_QuaTrinhDaoTao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NhanSuId] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[Loai] [nvarchar](200) NULL,
	[HinhThuc] [nvarchar](200) NULL,
	[ChuyenNganh] [nvarchar](200) NULL,
	[ChungChi] [nvarchar](200) NULL,
	[TenTruongDaoTao] [nvarchar](200) NULL,
	[NuocDaoTao] [nvarchar](200) NULL,
 CONSTRAINT [PK_NhanSu_QuaTrinhDaoTao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSu_QuaTrinhHopDong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NhanSuId] [int] NULL,
	[LoaiHopDongId] [int] NULL,
	[ChucVuId] [int] NULL,
	[PhongBanId] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_NhanSu_QuaTrinhHopDong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSu_QuaTrinhKhenThuong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NhanSuId] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[HinhThuc] [nvarchar](200) NULL,
	[LyDo] [nvarchar](200) NULL,
	[GiaTri] [float] NULL,
 CONSTRAINT [PK_NhanSu_QuaTrinhKhenThuong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSu_QuaTrinhKyLuat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NhanSuId] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[HinhThuc] [nvarchar](200) NULL,
	[LyDo] [nvarchar](200) NULL,
	[GiaTri] [float] NULL,
 CONSTRAINT [PK_NhanSu_QuaTrinhKyLuat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSu_QuaTrinhLuong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NhanSuId] [int] NULL,
	[HinhThucHuongLuongId] [int] NULL,
	[BacLuongId] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[TienLuong] [float] NULL,
 CONSTRAINT [PK_QuaTrinhLuong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[Id] [int] NOT NULL,
	[ParentId] [int] NULL,
	[TenPhongBan] [nvarchar](500) NULL,
	[SoDienThoai] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuCap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhuCap] [nvarchar](500) NULL,
	[GiaTri] [float] NULL,
 CONSTRAINT [PK_PhuCap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenQuocGia] [nvarchar](500) NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanh] [nvarchar](500) NULL,
 CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangHonNhan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TinhTrangHonNhan] [nvarchar](500) NULL,
 CONSTRAINT [PK_QuanHeGiaDinh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonGiao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTonGiao] [nvarchar](50) NULL,
 CONSTRAINT [PK_TonGiao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiHopDong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThaiHD] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThaiHopDong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoNgoaiNgu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrinhDoNgoaiNgu] [nvarchar](100) NULL,
 CONSTRAINT [PK_TrinhDoNgoaiNgu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoTinHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrinhDoTinHoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_TrinhDoTinHoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoVanHoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrinhDoTotNghiep] [nvarchar](500) NULL,
 CONSTRAINT [PK_TrinhDoTotNghiep] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongDaoTao](
	[Id] [int] NOT NULL,
	[TenTruongDaoTao] [nvarchar](500) NULL,
 CONSTRAINT [PK_TruongDaoTao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTriTuyenDung](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenViTriTuyenDung] [nvarchar](50) NULL,
	[TrangThaiSuDung] [bit] NULL,
 CONSTRAINT [PK_ViTriTuyenDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BacLuong] ON 

GO
INSERT [dbo].[BacLuong] ([Id], [MaBacLuong], [TenBacLuong], [ThongTinMoTa], [HeSoLuong]) VALUES (1, N'', N'Bậc 1', NULL, 1)
GO
INSERT [dbo].[BacLuong] ([Id], [MaBacLuong], [TenBacLuong], [ThongTinMoTa], [HeSoLuong]) VALUES (2, N'', N'Bậc 2', NULL, 2)
GO
INSERT [dbo].[BacLuong] ([Id], [MaBacLuong], [TenBacLuong], [ThongTinMoTa], [HeSoLuong]) VALUES (9, N'', N'Bậc 3', NULL, 3)
GO
INSERT [dbo].[BacLuong] ([Id], [MaBacLuong], [TenBacLuong], [ThongTinMoTa], [HeSoLuong]) VALUES (10, N'', N'Bậc  4', NULL, 4)
GO
SET IDENTITY_INSERT [dbo].[BacLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucDanh] ON 

GO
INSERT [dbo].[ChucDanh] ([Id], [TenChucDanh], [TenVietTat], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (1, N'Tổng gám đốc', NULL, NULL, 1)
GO
INSERT [dbo].[ChucDanh] ([Id], [TenChucDanh], [TenVietTat], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (2, N'Phó tổng giám đốc', NULL, NULL, 1)
GO
INSERT [dbo].[ChucDanh] ([Id], [TenChucDanh], [TenVietTat], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (3, N'Giám đốc chuyên môn', NULL, NULL, 1)
GO
INSERT [dbo].[ChucDanh] ([Id], [TenChucDanh], [TenVietTat], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (4, N'Trưởng phòng', NULL, NULL, 1)
GO
INSERT [dbo].[ChucDanh] ([Id], [TenChucDanh], [TenVietTat], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (5, N'Nhân viên', NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ChucDanh] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (1, N'TP Hành chính', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (2, N'CV Pháp chế
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (3, N'NV Tạp vụ
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (4, N'Lái xe VPĐH
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (5, N'Trợ lý GĐ Tài chính
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (6, N'Kế toán Tổng hợp
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (7, N'Giám đốc Mua hàng
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (8, N'CV Mua hàng
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (9, N'Giám đốc IT
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (10, N'Phụ trách Phần mềm
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (11, N'CV Phần mềm
', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (13, N'TP Hành chính', NULL, 1)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (14, N'CV Pháp chế', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (34, N'GS Kiểm toán nội bộ', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (35, N'CV Kiểm soát Tài sản', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (36, N'Kế toán Tổng hợp', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (37, N'Thủ quỹ', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (38, N'Kế toán Ngân hàng', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (39, N'NV Kế toán', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (40, N'GS Kế toán công nợ', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (41, N'Kế toán Thanh toán kiêm kế toán thuế', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (42, N'Giám đốc Mua hàng', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (43, N'Trợ lý GĐ Mua hàng', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (44, N'GS Mua hàng cao cấp', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (45, N'GS Mua hàng', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (46, N'GS Dự án Hoa Ban Shop', NULL, NULL)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (47, N'Phụ trách đào tạo', N'', 0)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (48, N'Phụ trách tuyển dụng', N'', 0)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (49, N'Phụ trách lưu trú', N'', 0)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (50, N'Phụ trách ẩm thực', N'', 0)
GO
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [GhiChu], [TrangThaiSuDung]) VALUES (51, N'Phụ trách hành chính', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenNganhDaoTao] ON 

GO
INSERT [dbo].[ChuyenNganhDaoTao] ([Id], [MaChuyenNganhDaoTao], [TenChuyenNganhDaoTao], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (1, N'', N'Công nghệ thông tin', NULL, 1)
GO
INSERT [dbo].[ChuyenNganhDaoTao] ([Id], [MaChuyenNganhDaoTao], [TenChuyenNganhDaoTao], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (2, N'', N'Kế toán', NULL, 1)
GO
INSERT [dbo].[ChuyenNganhDaoTao] ([Id], [MaChuyenNganhDaoTao], [TenChuyenNganhDaoTao], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (3, N'', N'Quản trị kinh doanh', NULL, 1)
GO
INSERT [dbo].[ChuyenNganhDaoTao] ([Id], [MaChuyenNganhDaoTao], [TenChuyenNganhDaoTao], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (4, N'', N'Quản trị nhân sự', NULL, 1)
GO
INSERT [dbo].[ChuyenNganhDaoTao] ([Id], [MaChuyenNganhDaoTao], [TenChuyenNganhDaoTao], [ThongTinMoTa], [TrangThaiSuDung]) VALUES (5, N'', N'', N'Khách sạn - Du lịch', 0)
GO
SET IDENTITY_INSERT [dbo].[ChuyenNganhDaoTao] OFF
GO
SET IDENTITY_INSERT [dbo].[DanToc] ON 

GO
INSERT [dbo].[DanToc] ([Id], [TenDanToc]) VALUES (1, N'Kinh')
GO
INSERT [dbo].[DanToc] ([Id], [TenDanToc]) VALUES (2, N'Tày')
GO
INSERT [dbo].[DanToc] ([Id], [TenDanToc]) VALUES (3, N'H''Mông')
GO
INSERT [dbo].[DanToc] ([Id], [TenDanToc]) VALUES (4, N'Nùng')
GO
INSERT [dbo].[DanToc] ([Id], [TenDanToc]) VALUES (5, N'Dáy')
GO
INSERT [dbo].[DanToc] ([Id], [TenDanToc]) VALUES (6, N'Ê đê')
GO
SET IDENTITY_INSERT [dbo].[DanToc] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhThucDaoTao] ON 

GO
INSERT [dbo].[HinhThucDaoTao] ([Id], [TenHinhThucDaoTao]) VALUES (1, N'Chính quy')
GO
INSERT [dbo].[HinhThucDaoTao] ([Id], [TenHinhThucDaoTao]) VALUES (2, N'Vừa học vừa làm')
GO
INSERT [dbo].[HinhThucDaoTao] ([Id], [TenHinhThucDaoTao]) VALUES (3, N'Liên thông')
GO
INSERT [dbo].[HinhThucDaoTao] ([Id], [TenHinhThucDaoTao]) VALUES (4, N'Văn bằng 2')
GO
SET IDENTITY_INSERT [dbo].[HinhThucDaoTao] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhThucHuongLuong] ON 

GO
INSERT [dbo].[HinhThucHuongLuong] ([Id], [TenHinhThucHuongLuong]) VALUES (1, N'Lương thử việc')
GO
INSERT [dbo].[HinhThucHuongLuong] ([Id], [TenHinhThucHuongLuong]) VALUES (2, N'Lương chính thức')
GO
SET IDENTITY_INSERT [dbo].[HinhThucHuongLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiHopDong] ON 

GO
INSERT [dbo].[LoaiHopDong] ([Id], [TenLoaiHopDong]) VALUES (1, N'Hợp  đồng 3 tháng')
GO
INSERT [dbo].[LoaiHopDong] ([Id], [TenLoaiHopDong]) VALUES (2, N'Hợp đồng 6 tháng')
GO
INSERT [dbo].[LoaiHopDong] ([Id], [TenLoaiHopDong]) VALUES (3, N'Hợp đồng 1 năm')
GO
INSERT [dbo].[LoaiHopDong] ([Id], [TenLoaiHopDong]) VALUES (4, N'Hợp đồng dài hạn')
GO
SET IDENTITY_INSERT [dbo].[LoaiHopDong] OFF
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (1, 2, 1, 2, 2, 1, 11, 5, 5, 1, 1, 2, 1, 2, 2, N'Nguyễn Linh Hoàng', N'', N'', CAST(0xCC0F0B00 AS Date), 1, N'', CAST(0x073C0B00 AS Date), N'Hà Nội', N'Hà Nội', N'Nam Định', N'', N'', N'0968313458', N'0435731359', N'', N'nguyenlinhhoang@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (2, 2, 1, 2, 2, 1, 1, 5, 4, 2, 1, 2, 7, 5, 1, N'Trần Duy Anh', N'', N'', CAST(0xD30F0B00 AS Date), 1, N'012256459', CAST(0xE1330B00 AS Date), N'Hà Nội', N'Bắc Giang', N'Bắc Giang', N'KĐT Linh Đàm', N'KĐT Linh Đàm', N'0903374123', N'0438656395', N'', N'duyanhtran@gmail.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (3, 2, 1, 2, 2, 1, 3, 5, 10, 1, 3, 2, 1, 2, 1, N'Hoàng Minh Huyền', N'', N'', CAST(0xE5080B00 AS Date), 0, N'0965456545', CAST(0x5F220B00 AS Date), N'Ninh Bình', N'Ninh Bình', N'Hòa Binh', N'', N'', N'09683471837', N'', N'', N'hoangminhhuyen@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (4, 6, 2, 2, 2, 1, 1, 5, 7, 1, 1, 2, 1, 2, 1, N'Lê Gia Bách', N'', N'', CAST(0x2D140B00 AS Date), 1, N'012327654', CAST(0x7F380B00 AS Date), N'Hà Nội', N'Cao Bằng', N'Trùng Khánh -  Cao Bằng', N'Cầu Giấy', N'Cầu Giấy', N'0945583745', N'0438763453', N'', N'bachle@gmail.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (5, 2, 1, 2, 2, 1, 44, 4, 11, 4, 3, 2, 2, 4, 2, N'Nguyễn Xuân Dương', N'', N'', CAST(0x06170B00 AS Date), 1, N'0645359686', CAST(0x17300B00 AS Date), N'Hà Nội', N'Sao Đỏ - Hải Dương', N'Hải Dương', N'Chí Linh - Sao Đỏ - Hải Dương', N'Hà Nội', N'0986357555', N'', N'', N'duongkt9x@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (6, 2, 4, 2, 2, 1, 1, 5, 21, 1, 3, 3, 1, 5, 2, N'Bùi Công Chính', N'', N'', CAST(0x5A150B00 AS Date), 1, N'0612354333', CAST(0x7A320B00 AS Date), N'Sơn La', N'Làng Vạc - Sơn La', N'Sơn La', N'Tứ Xứ - Làng Vạc - Sơn La', N'Hà Nội', N'0986357426', N'', N'', N'Chinhchobta@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (7, 6, 1, 3, 2, 1, 1, 4, 12, 1, 3, 4, 1, 4, 2, N'Ngyễn Tú Oanh', N'', N'', CAST(0xD11C0B00 AS Date), 0, N'086533452', CAST(0xE5350B00 AS Date), N'Bác Cạn', N'Hoàng Hoa - Bắc Cạn', N'Bắc Cạn', N'Hoàng Hoa - Bắc Cạn', N'Hà Nội', N'0987333666', N'', N'', N'Oanhmkt@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (8, 6, 1, 2, 2, 1, 5, 4, 11, 1, 3, 3, 1, 4, 2, N'Cao Bá Nhung', N'', N'', CAST(0xCC150B00 AS Date), 0, N'0986864156', CAST(0x852F0B00 AS Date), N'Cốc Lếu - Lào Cai', N'Lào Cai', N'Lào Cai', N'Lào Cai', N'', N'0986366866', N'', N'', N'thangkh@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (9, 2, 1, 2, 2, 1, 37, 3, 11, 1, 3, 2, 2, 4, 2, N'Nguyễn Vân Ngân', N'', N'', CAST(0x26170B00 AS Date), 0, N'042354343', CAST(0x8E300B00 AS Date), N'Hà Tây', N'Bốc Phôt - Hà Tây', N'Hà Tây', N'', N'Hà Nội', N'0987654321', N'', N'', N'vanngan90@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (10, 2, 1, 2, 2, 1, 35, 2, 11, 1, 3, 4, 2, 4, 2, N'Phân Tuyết Ngân', N'', N'', CAST(0x8A140B00 AS Date), 0, N'087684654', CAST(0x153C0B00 AS Date), N'Vĩnh Phúc', N'Vĩnh Phúc', N'Ninh Bình', N'Ninh Bình', N'Hà Nội', N'0989865633', N'', N'', N'ngantc89@congty,com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (11, 2, 1, 2, 2, 1, 44, 1, 11, 1, 4, 4, 2, 4, 2, N'Phạm Văn Bách', N'Bách Gà', N'', CAST(0x8B130B00 AS Date), 1, N'068435333', CAST(0xB42C0B00 AS Date), N'Hải Phong', N'Hải Phòng', N'Vĩnh Phúc', N'', N'Hà Nội', N'0987666999', N'', N'', N'backct@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (12, 3, 1, 2, 2, 1, 45, 5, 12, 3, 3, 6, 2, 5, 2, N'Phan Kỳ Duyên', N'Duyenlol', N'', CAST(0xCE140B00 AS Date), 0, N'06835354', CAST(0x153C0B00 AS Date), N'Nam Định', N'Nam Định', N'Ninh Bình', N'', N'Hà Nội', N'0986357445', N'', N'', N'duyenlol@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (13, 6, 1, 3, 2, 1, 13, 3, 12, 2, 2, 6, 2, 4, 2, N'Vũ Triệu Vy', N'Vi', N'', CAST(0x44170B00 AS Date), 0, N'098654355', CAST(0x6B250B00 AS Date), N'Hà Nam', N'Hà Nam', N'Bắc Cạn', N'Hải Phòng', N'Hà Nội', N'0986369888', N'', N'', N'vystile@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (14, 6, 6, 2, 2, 1, 40, 2, 12, 1, 4, 2, 2, 4, 2, N'Nguyễn Thu Thuy', N'', N'', CAST(0x5E190B00 AS Date), 0, N'0986543523', CAST(0x153C0B00 AS Date), N'Điện Biên', N'Điện Biên', N'Lào Cai', N'Lào Cai', N'Hà Nội', N'0987456987', N'', N'', N'thuykv21@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (15, 2, 1, 2, 2, 1, 40, 1, 12, 1, 4, 3, 2, 5, 2, N'Nguyễn Phong Phú', N'', N'', CAST(0xB60E0B00 AS Date), 1, N'068435353', CAST(0x153C0B00 AS Date), N'Hà Giang', N'Hà Giang', N'Hưng Yên', N'', N'', N'0987999666', N'', N'', N'phuccvc@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (16, 6, 1, 3, 2, 1, 38, 4, 21, 4, 2, 2, 2, 5, 2, N'Phan Nhu Quỳnh', N'', N'', CAST(0xED150B00 AS Date), 0, N'09865465', CAST(0x153C0B00 AS Date), N'Thanh Hóa', N'Sầm Sơn - Thanh Hóa', N'Thanh Hóa', N'', N'', N'098535432', N'020357654', N'', N'quynhtv21@gmail.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (17, 6, 1, 2, 2, 1, 38, 4, 21, 1, 3, 4, 2, 4, 2, N'Cao Van Hương', N'', N'', CAST(0xD5170B00 AS Date), 0, N'098656554', CAST(0x153C0B00 AS Date), N'Nghệ An', N'Tứ Phúc - Nghệ An', N'Nghệ An', N'', N'Hà Nội', N'0985355699', N'', N'', N'huong2k@gmail.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (18, 6, 1, 2, 2, 1, 40, 5, 21, 2, 3, 3, 1, 11, 2, N'Hoang Thi Lan', N'', N'', CAST(0x5A170B00 AS Date), 0, N'098653533', CAST(0x153C0B00 AS Date), N'Quảng Bình', N'Quản Bình', N'Hải Phong', N'', N'Hà Nội', N'0968754565', N'', N'', N'lanqg12@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (19, 2, 1, 3, 2, 1, 13, 2, 21, 1, 4, 4, 2, 11, 2, N'Phan Nhu Tú Quỳnh', N'', N'', CAST(0xA2170B00 AS Date), 0, N'064512325', CAST(0x153C0B00 AS Date), N'Quảng Trị', N'Quảng Trị', N'Đà Nẵng', N'', N'Đà Nẵng', N'0987636895', N'', N'', N'quynhcool@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (20, 2, 1, 3, 2, 1, 9, 1, 5, 1, 1, 2, 3, 2, 2, N'Nông Đức Mạnh', N'', N'', CAST(0x71150B00 AS Date), 1, N'0965465465', CAST(0x153C0B00 AS Date), N'Đà Nẵng', N'Đà Nẵng', N'Thanh Hóa', N'', N'', N'0968326545', N'', N'', N'manhcntt@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (21, 6, 1, 2, 2, 1, 11, 4, 5, 3, 1, 4, 4, 11, 2, N'Hoàng Văn Thắng', N'', N'', CAST(0x44170B00 AS Date), 0, N'0456445451', CAST(0x153C0B00 AS Date), N'Quảng Nam', N'Quảng Nam', N'Qoảng Bình', N'', N'Hà Nội', N'0987546987', N'', N'', N'thangkv291@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (22, 3, 1, 2, 2, 1, 10, 5, 5, 4, 1, 6, 3, 2, 2, N'Vũ Thế Quyền', N'', N'', CAST(0x95130B00 AS Date), 1, N'0633874574', CAST(0xE6240B00 AS Date), N'Quảng Ngãi', N'Quảng Ngãi', N'Ninh Bình', N'', N'Hà Nội', N'0984535678', N'', N'', N'quyenvan21@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (23, 2, 1, 2, 2, 1, 9, 1, 5, 1, 1, 2, 4, 3, 2, N'Nguyễn Văn Huyên', N'', N'', CAST(0x5A120B00 AS Date), 1, N'065487685', CAST(0x3B240B00 AS Date), N'Bịnh Định', N'Bình Định', N'Thanh Hóa', N'', N'Hà Nội', N'0987776685', N'', N'', N'huyenck90@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (24, 6, 1, 2, 2, 1, 5, 5, 6, 1, 3, 2, 2, 4, 1, N'Nguyễn Hữu Thắng', N'', N'', CAST(0x44170B00 AS Date), 1, N'066335412', CAST(0x56320B00 AS Date), N'Lào Cai', N'Lào cai', N'Lào Cai', N'', N'Hà Nội', N'0987377373', N'', N'', N'thangkvt21@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (25, 6, 1, 2, 2, 1, 35, 4, 6, 1, 4, 3, 1, 11, 2, N'Nhuyễn Văn Cường', N'', N'', CAST(0x61180B00 AS Date), 1, N'063357654', CAST(0x7C300B00 AS Date), N'Vĩnh Phúc', N'Vĩnh Phúc', N'Hà Nội', N'', N'Hà Nội', N'0987377456', N'', N'', N'cuongct3@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (26, 2, 1, 2, 2, 1, 43, 4, 6, 4, 4, 4, 1, 5, 2, N'Phan Thế Hiền', N'', N'', CAST(0xF4170B00 AS Date), 1, N'06333545412', CAST(0x153C0B00 AS Date), N'Bình Dương', N'Bình Dương', N'Bình Dương', N'', N'Hà Nội', N'0687352424', N'', N'', N'hiencuto@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (27, 2, 1, 2, 2, 1, 45, 3, 6, 3, 2, 1, 2, 11, 2, N'Ông Cao Thắng', N'', N'', CAST(0xA4150B00 AS Date), 1, N'0631123123', CAST(0x153C0B00 AS Date), N'Cao Bằng', N'Cao Bằng', N'Cao Bằng', N'Tam Đảo - Vĩnh Phúc', N'Hà Nội', N'0987357753', N'', N'', N'thanglv22@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (28, 2, 1, 2, 2, 1, 46, 4, 6, 1, 3, 6, 1, 4, 2, N'Lương Văn Can', N'', N'', CAST(0xF7150B00 AS Date), 1, N'06835435', CAST(0x153C0B00 AS Date), N'SaPa - Lào Cai', N'SaPa - Lào Cai', N'Lào Cai', N'', N'Hà Nội', N'0987357951', N'', N'', N'canvanluong@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (29, 6, 1, 2, 2, 1, 3, 5, 7, 4, 2, 6, 1, 5, 2, N'Lương Bích Hưu', N'', N'', CAST(0x0B1A0B00 AS Date), 0, N'06546544', CAST(0x153C0B00 AS Date), N'Ba Đình - Hà Nội', N'Ba Đình - Hà Nội', N'Ninh Bình', N'', N'Hà Nội', N'0989951159', N'', N'', N'bichhuu@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (30, 6, 1, 2, 2, 1, 35, 4, 7, 1, 2, 2, 2, 11, 2, N'Khổng Tú Quỳnh', N'', N'', CAST(0x87180B00 AS Date), 0, N'069871234', CAST(0x153C0B00 AS Date), N'Cầu Giấy - Hà Nội', N'Cầu Giấy - Hà Nội', N'Thanh Hóa', N'', N'Hà Nội', N'0987454121', N'', N'', N'quynhkv201@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (31, 2, 1, 2, 2, 1, 5, 4, 7, 1, 2, 4, 2, 4, 2, N'Vũ Thu Phuong', N'', N'', CAST(0x3E150B00 AS Date), 0, N'068765456', CAST(0x153C0B00 AS Date), N'Đống Đa - Hà Nội', N'Đống Đa - Hà Nội', N'Vĩnh Phúc', N'Hà Nội', N'Hà Nội', N'0987987789', N'', N'', N'Phuongkt22@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (32, 6, 1, 2, 2, 1, 34, 3, 7, 1, 2, 1, 1, 5, 2, N'Cao Thi Tuyết Lan', N'', N'', CAST(0x13180B00 AS Date), 0, N'068768763', CAST(0x153C0B00 AS Date), N'Xùng Khửi - Điện Biên', N'Xùng Khửi - Điện Biên', N'Điện Biên', N'', N'Hà Nội', N'0987356321', N'', N'', N'lan21lkt@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (33, 6, 1, 3, 2, 1, 40, 4, 8, 1, 4, 3, 2, 11, 4, N'Lương Xuân Trường', N'', N'', CAST(0xC7180B00 AS Date), 1, N'063524514', CAST(0x153C0B00 AS Date), N'Cầu Giấy - Hà Nội', N'Cầu Giấy - Hà Nội', N'Hà Nội', N'Hà Nội', N'Hà Nội', N'0987369147', N'', N'', N'truonghip@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (34, 6, 3, 2, 2, 1, 35, 5, 8, 3, 2, 2, 1, 11, 2, N'Vũ Trúc Quỳnh', N'', N'', CAST(0x4B180B00 AS Date), 0, N'0633578575', CAST(0x153C0B00 AS Date), N'Tằng Loong - Sơn La', N'Tằng Loong - Sơn La', N'Sơn La', N'Hà Nội', N'Hà Nội', N'06335745', N'', N'', N'quynhcul2@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (35, 2, 4, 2, 2, 1, 40, 4, 8, 3, 4, 2, 2, 11, 4, N'Nguyễn Anh Thu', N'', N'', CAST(0x44170B00 AS Date), 0, N'064578451', CAST(0x153C0B00 AS Date), N'Mường Than - Sơn La', N'Mường Than - Sơn La', N'Sơn La', N'', N'Hà Nội', N'098835568', N'', N'', N'thukvvt22@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (36, 2, 1, 2, 2, 1, 34, 4, 8, 1, 4, 3, 2, 4, 2, N'Nguyễn Thị Thủy', N'', N'', CAST(0xAD150B00 AS Date), 0, N'04563532', CAST(0x153C0B00 AS Date), N'Phú Xuyên - Nam Định', N'Phú Xuyên - Nam Định', N'Nam Đinh', N'Hà Nội', N'Hà Nội', N'0983388638', N'', N'', N'thuythuy22@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (37, 6, 1, 2, 2, 1, 43, 5, 8, 1, 4, 6, 1, 5, 2, N'Nguyễn Xuân Vương', N'', N'', CAST(0x49170B00 AS Date), 1, N'069812121', CAST(0x153C0B00 AS Date), N'Ba Đình - Hà Nội', N'Ba Đình - Hà Nội', N'Hà Nội', N'Hà Nội', N'Hà Nội', N'0987357159', N'', N'', N'vuongvuvo21@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (38, 6, 1, 2, 2, 1, 3, 5, 10, 1, 2, 1, 1, 12, 1, N'Hoàng Thị Như Hoài', N'', N'', CAST(0xF5190B00 AS Date), 0, N'069875321', CAST(0x37320B00 AS Date), N'Hải Dương', N'Hải Dương', N'Hải Dương', N'Hà Nội', N'Hà Nội', N'0987353132', N'', N'', N'hoaikttv@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (39, 6, 1, 2, 2, 1, 3, 5, 10, 3, 2, 2, 1, 13, 2, N'Cao Thị Tuyết', N'', N'', CAST(0x3F1A0B00 AS Date), 0, N'068711122', CAST(0xAF330B00 AS Date), N'Khánh Cường - Ninh Bình', N'Ninh Bình', N'Ninh Bình', N'', N'Hà Nội', N'0981311133', N'', N'', N'tuyetcuco@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (40, 6, 1, 2, 2, 1, 3, 5, 10, 1, 4, 1, 1, 2, 1, N'Nguyễn Thị Tuyết Nhung', N'', N'', CAST(0x40170B00 AS Date), 0, N'09654352', CAST(0x153C0B00 AS Date), N'Vĩnh Phúc', N'Vĩnh Phúc', N'Vĩnh Phúc', N'', N'Hà Nội', N'0987333254', N'', N'', N'nhung2k1@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (41, 6, 1, 3, 2, 1, 3, 5, 10, 4, 2, 1, 1, 12, 2, N'Vũ Trúc Lan', N'', N'', CAST(0x0E180B00 AS Date), 0, N'098635321', CAST(0x61320B00 AS Date), N'Đống Đa - Hà Nội', N'Đống Đa - Hà Nội', N'Đống Đa - Hà Nội', N'Hà Nội', N'Hà Nội', N'0987356635', N'', N'', N'lanckkt@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (42, 6, 1, 2, 2, 1, 35, 5, 14, 1, 1, 1, 1, 12, 1, N'Cao Bá Thắng', N'', N'', CAST(0x94170B00 AS Date), 1, N'068932113', CAST(0x153C0B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'', N'', N'0987377321', N'', N'', N'thangbv01@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (43, 6, 1, 2, 2, 1, 35, 5, 14, 2, 1, 1, 1, 11, 2, N'Nguyễn Quốc Cường', N'', N'', CAST(0xC7180B00 AS Date), 1, N'0687321368', CAST(0x56320B00 AS Date), N'Nam Định', N'Nam Định', N'Nam Định', N'', N'', N'0987353659', N'', N'', N'cuong2001@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (44, 2, 1, 2, 2, 1, 35, 5, 14, 1, 4, 1, 1, 13, 1, N'Nguyễn Quốc Công', N'', N'', CAST(0x74180B00 AS Date), 1, N'063233532', CAST(0x57320B00 AS Date), N'Ba Đình - Hà Nôi', N'Ba Đình - Hà Nôi', N'Hà Nôi', N'Hà Nôi', N'Hà Nôi', N'0987773356', N'', N'', N'cong2122@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (45, 6, 1, 2, 2, 1, 35, 5, 14, 1, 1, 1, 1, 2, 1, N'Hoàng Trung Quân', N'', N'', CAST(0x48170B00 AS Date), 1, N'098323215', CAST(0xC3330B00 AS Date), N'Cầu Giấy - Hà Nội', N'Cầu Giấy - Hà Nội', N'Cầu Giấy - Hà Nội', N'Hà Nội', N'Hà Nội', N'0986366544', N'', N'', N'quanido1@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (46, 6, 1, 2, 2, 1, 35, 5, 14, 1, 2, 1, 1, 2, 1, N'Bùi Công Chính', N'', N'', CAST(0x40170B00 AS Date), 1, N'03532151', CAST(0xF3340B00 AS Date), N'Cổ Nhuế - Hà Nội', N'Cổ Nhuế - Hà Nội', N'Cổ Nhuế - Hà Nội', N'Hà Nội', N'Hà Nội', N'0986345123', N'', N'', N'chinh21sv@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (47, 2, 1, 2, 2, 1, 10, 5, 15, 4, 1, 2, 3, 3, 2, N'Phạm Văn Phương', N'', N'', CAST(0x3B150B00 AS Date), 1, N'068735741', CAST(0xDF230B00 AS Date), N'Phú Thọ', N'Phú Thọ', N'Phú Thọ', N'Hà Nội', N'Hà Nội', N'0687352123', N'', N'', N'phuonghip@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (48, 2, 1, 3, 2, 1, 10, 4, 15, 1, 1, 4, 1, 12, 2, N'Vũ Trường Giang', N'', N'', CAST(0x74180B00 AS Date), 1, N'068732321', CAST(0x153C0B00 AS Date), N'Cầu Giấy - Hà Nội', N'Cầu Giấy - Hà Nội', N'Cầu Giấy - Hà Nội', N'Hà Nội', N'Hà Nội', N'0987377996', N'', N'', N'giangu21@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (49, 6, 1, 2, 2, 1, 10, 5, 15, 3, 1, 2, 3, 2, 2, N'Hà Nhuận Đông', N'', N'', CAST(0x3E170B00 AS Date), 1, N'035712398', CAST(0x56320B00 AS Date), N'Bình Định', N'Bình Định', N'Bình Định', N'Hà Nội', N'Hà Nội', N'0986399758', N'', N'', N'dongdong20@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (50, 2, 1, 2, 2, 1, 11, 5, 15, 4, 1, 6, 1, 11, 2, N'Vũ Trọng Phụng', N'', N'', CAST(0x15160B00 AS Date), 1, N'098112312', CAST(0x44310B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'', N'Hà Nội', N'098735756', N'', N'', N'phung2991@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (51, 2, 1, 2, 2, 1, 10, 4, 15, 1, 1, 3, 2, 5, 2, N'Hoàng Bá Hồng', N'', N'', CAST(0x9C150B00 AS Date), 1, N'065354351', CAST(0x153C0B00 AS Date), N'Cốc Lếu - Lào Cai', N'Cốc Lếu - Lào Cai', N'Cốc Lếu - Lào Cai', N'Hà Nội', N'Hà Nội', N'0987396425', N'', N'', N'hongca231@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (100, 2, 1, 2, 2, 1, 11, 5, 5, 1, 1, 2, 1, 2, 2, N'Nguyễn Linh Hoàng', N'', N'\NhanSu\Nam2-782097250.jpg', CAST(0xCC0F0B00 AS Date), 1, N'', CAST(0x073C0B00 AS Date), N'Hà Nội', N'Hà Nội', N'Nam Định', N'', N'', N'0968313458', N'0435731359', N'', N'nguyenlinhhoang@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (110, 2, 1, 2, 2, 1, 48, 4, 19, 1, 4, 3, 2, 8, 2, N'Trần Hải Hà', N'', N'\NhanSu\81547957445.HaiHa', CAST(0x6B040B00 AS Date), 0, N'012176945', CAST(0x4E350B00 AS Date), N'Hà Nội', N'Hưng Yên', N'Hưng Yên', N'Hạ Đình - Thanh Xuân', N'Hạ Đình - Thanh Xuân', N'0917643987', N'', N'haihatran@gmail.com', N'haihatran@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (120, 6, 1, 2, 2, 1, 48, 5, 19, 1, 1, 2, 3, 2, 2, N'Võ Hạ Trâm', N'', N'\NhanSu\7-1865301970.HaTrang', CAST(0x7A160B00 AS Date), 0, N'012438765', CAST(0xA0380B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Long Biên', N'Long Biên', N'0914785434', N'', N'tramvo@gmail.com', N'tramvo@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (130, 2, 1, 2, 2, 1, 48, 5, 19, 1, 4, 4, 3, 11, 2, N'Bùi Mỹ Dung', N'', N'\NhanSu\9-684503650.MyDung', CAST(0x9C0D0B00 AS Date), 0, N'012276594', CAST(0xF02F0B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'KTT BTL Thông tin - Giảng Võ - Ba Đình', N'KTT BTL Thông tin - Giảng Võ - Ba Đình', N'0943765489', N'', N'mydung@yahoo.com', N'mydung@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (140, 2, 1, 2, 2, 1, 48, 1, 19, 1, 4, 2, 3, 8, 2, N'Trần Thu Ngân', N'', N'\NhanSu\10617963721.KimNgan', CAST(0x6E100B00 AS Date), 0, N'012167453', CAST(0x6C350B00 AS Date), N'Hà Nội', N'Quảng Bình', N'Quảng Bình', N'Nguyễn Văn Trỗi - Thanh Xuân', N'Nguyễn Văn Trỗi - Thanh Xuân', N'0945787643', N'', N'ngantran@yahoo.com', N'ngantran@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (150, 2, 1, 2, 2, 1, 49, 4, 18, 1, 1, 2, 2, 4, 2, N'Tôn Khánh Ly', N'', N'\NhanSu\111704929483.KhanhLy', CAST(0x600A0B00 AS Date), 0, N'012187904', CAST(0x95340B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Quan Hoa - Cầu Giấy', N'Quan Hoa - Cầu Giấy', N'094876354', N'', N'khanhly@gmail.com', N'khanhly@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (160, 6, 1, 2, 2, 1, 49, 5, 18, 1, 4, 2, 2, 6, 2, N'Bùi Ngân Giang', N'', N'\NhanSu\12-1227388102.NganGiang', CAST(0xAE170B00 AS Date), 0, N'012563847', CAST(0x283A0B00 AS Date), N'Hà Nội', N'Bắc Giang', N'Bắc Giang', N'A3608 Thăng Long N1 - Đại lộ Thăng Long', N'A3608 Thăng Long N1 - Đại lộ Thăng Long', N'0973576529', N'', N'ngangiang@gmail.com', N'ngangiang@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (170, 2, 2, 2, 2, 1, 49, 5, 18, 1, 1, 2, 2, 2, 2, N'Lê Nguyễn Phương Trà', N'', N'\NhanSu\13256122006.PhuongTra', CAST(0x89150B00 AS Date), 0, N'012537463', CAST(0x29380B00 AS Date), N'Hà Nội', N'Cao Bằng', N'Cao Bằng', N'Trung Liệt - Thái Hà - Đống Đa', N'Trung Liệt - Thái Hà - Đống Đa', N'0912787465', N'', N'tralephuong@gmail.com', N'tralephuong@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (180, 2, 1, 2, 2, 1, 49, 5, 18, 1, 1, 2, 3, 7, 2, N'Vũ Ngân Khánh', N'', N'\NhanSu\141339410279.KimNgan', CAST(0x72120B00 AS Date), 0, N'012365894', CAST(0xA1350B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Phạm Hùng - Nam Từ Liêm', N'Phạm Hùng - Nam Từ Liêm', N'0957849576', N'', N'khanhvu@yahoo.com', N'khanhvu@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (190, 6, 1, 2, 2, 1, 49, 5, 18, 1, 1, 2, 2, 6, 2, N'Phạm Quỳnh Trang', N'', N'\NhanSu\15-2114972759.QuynhTrang', CAST(0x9B160B00 AS Date), 0, N'0123478596', CAST(0x51390B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Tây Hồ - Hà Nội', N'Tây Hồ - Hà Nội', N'0912784653', N'', N'trangpham@yahoo.com', N'trangpham@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (200, 2, 1, 2, 2, 1, 1, 5, 4, 2, 1, 2, 7, 5, 1, N'Trần Duy Anh', N'', N'\NhanSu\Nam4-1259157896.jpg', CAST(0xD30F0B00 AS Date), 1, N'012256459', CAST(0xE1330B00 AS Date), N'Hà Nội', N'Bắc Giang', N'Bắc Giang', N'KĐT Linh Đàm', N'KĐT Linh Đàm', N'0903374123', N'0438656395', N'', N'duyanhtran@gmail.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (210, 2, 1, 2, 2, 1, 1, 5, 17, 1, 1, 2, 2, 2, 2, N'Phạm Gia Linh', N'', N'\NhanSu\17679260258.GiaLinh', CAST(0x150D0B00 AS Date), 0, N'012328764', CAST(0x7B380B00 AS Date), N'Hà Nội', N'Thanh Hóa', N'Thanh Hóa', N'Nhân Chính - Thanh Xuân - Hà Nội', N'Nhân Chính - Thanh Xuân - Hà Nội', N'0913745586', N'', N'linhgia@yahoo.com', N'linhgia@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (220, 6, 1, 2, 2, 1, 50, 5, 17, 1, 3, 2, 2, 8, 2, N'Lê Mai', N'', N'\NhanSu\181799332700.LeMai', CAST(0xE8170B00 AS Date), 0, N'018745374', CAST(0xB4360B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Khu đô thị Văn Quán - Hà Đông', N'Khu đô thị Văn Quán - Hà Đông', N'0948576435', N'', N'maile@yahoo.com', N'maile@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (230, 2, 1, 2, 2, 1, 1, 5, 17, 3, 1, 2, 2, 3, 1, N'Bùi Hạnh Nguyên', N'', N'\NhanSu\19-917115687.HanhNguyen', CAST(0xB50D0B00 AS Date), 0, N'012736253', CAST(0x45350B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Thịnh Quang - Đống Đa - Hà Nội', N'Thịnh Quang - Đống Đa - Hà Nội', N'0953746583', N'', N'hanhnguyen@yahoo.com', N'hanhnguyen@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (240, 2, 1, 2, 2, 1, 50, 5, 17, 2, 3, 2, 2, 4, 2, N'Vũ Hồng Ngọc', N'', N'\NhanSu\2091464426.HongNgoc', CAST(0x68100B00 AS Date), 0, N'012847563', CAST(0x73380B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Nam Trung Yên - Cầu Giấy', N'Nam Trung Yên - Cầu Giấy', N'0947856354', N'', N'hongngoc@yahoo.com', N'hongngoc@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (250, 2, 1, 2, 2, 1, 1, 4, 9, 1, 3, 3, 3, 4, 4, N'Lê Minh Trang', N'', N'\NhanSu\232082490581.MinhTrang', CAST(0xF10A0B00 AS Date), 0, N'012165443', CAST(0xDE330B00 AS Date), N'Hà Nội', N'Thái Nguyên', N'Thái Nguyên', N'Ngõ 47 Nguyên Hồng', N'Ngõ 47 Nguyên Hồng', N'0948736452', N'', N'minhtrangle@gmail.com', N'minhtrangle@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (260, 2, 1, 2, 2, 1, 51, 5, 9, 1, 4, 2, 2, 6, 4, N'Phạm Khuê Anh', N'', N'\NhanSu\22-1243353716.KhueAnh', CAST(0x4D060B00 AS Date), 0, N'012234486', CAST(0xB9360B00 AS Date), N'Hà Nội', N'Hưng Yên', N'Hưng Yên', N'Phường Cầu Diễn - Nam Từ Liêm', N'Phường Cầu Diễn - Nam Từ Liêm', N'0927654856', N'', N'khueanh@yahoo.com', N'khueanh@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (270, 6, 1, 2, 2, 1, 51, 5, 9, 3, 3, 2, 2, 10, 2, N'Hoàng Ngọc Khánh', N'', N'\NhanSu\2182460742.NgocKhanh', CAST(0x79170B00 AS Date), 0, N'013746352', CAST(0x063A0B00 AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', N'Yên Hòa - Cầu Giấy', N'Yên Hòa - Cầu Giấy', N'0937485764', N'', N'ngockhanh@yahoo.com', N'ngockhanh@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (280, 2, 1, 2, 2, 1, 51, 5, 9, 1, 4, 2, 2, 11, 2, N'Bùi Bảo Trân', N'', N'\NhanSu\241940308656.BaoTran', CAST(0x68060B00 AS Date), 0, N'0121325354', CAST(0xFD350B00 AS Date), N'Hà Nội', N'Hưng Yên', N'Hưng Yên', N'7/82 Chùa Láng - Đống Đa', N'7/82 Chùa Láng - Đống Đa', N'09374658674', N'', N'tranbui@gmail.com', N'tranbui@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (290, 2, 1, 2, 2, 1, 51, 5, 9, 1, 3, 2, 2, 8, 2, N'Trần Hà Anh', N'', N'\NhanSu\25572312077.HaAnh', CAST(0xC1070B00 AS Date), 0, N'012173649', CAST(0xFC330B00 AS Date), N'Hà Nội', N'Thái Nguyên', N'Thái Nguyên', N'Ngọc Hà - Ba Đình', N'Ngọc Hà - Ba Đình', N'0912746593', N'', N'haanh@yahoo.com', N'haanh@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (300, 2, 1, 2, 2, 1, 3, 5, 10, 1, 3, 2, 1, 2, 1, N'Hoàng Minh Huyền', N'', N'\NhanSu\Nu5-1147913714.jpg', CAST(0xE5080B00 AS Date), 0, N'0965456545', CAST(0x5F220B00 AS Date), N'Ninh Bình', N'Ninh Bình', N'Hòa Binh', N'', N'', N'09683471837', N'', N'', N'hoangminhhuyen@congty.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (400, 6, 2, 2, 2, 1, 1, 5, 7, 1, 1, 2, 1, 2, 1, N'Lê Gia Bách', N'', N'\NhanSu\Nam5-698292246.jpg', CAST(0x2D140B00 AS Date), 1, N'012327654', CAST(0x7F380B00 AS Date), N'Hà Nội', N'Cao Bằng', N'Trùng Khánh -  Cao Bằng', N'Cầu Giấy', N'Cầu Giấy', N'0945583745', N'0438763453', N'', N'bachle@gmail.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (500, 2, 1, 2, 2, 1, 47, 3, 20, 1, 4, 4, 3, 4, 2, N'Phan Ngọc Bích', N'', N'\NhanSu\1-1927439215.NgocBich', CAST(0xF0020B00 AS Date), 0, N'012165384', CAST(0xB9340B00 AS Date), N'Hà Nội', N'Vĩnh Phúc', N'Vĩnh Phúc', N'17 Ngõ 125/1 - Trung Kính - Cầu Giấy', N'17 Ngõ 125/1 - Trung Kính - Cầu Giấy', N'0937648535', N'', N'bichngoc@yahoo.com', N'bichngoc@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (600, 6, 1, 2, 2, 1, 47, 5, 20, 1, 3, 2, 3, 4, 2, N'Trần Thanh Thu', N'', N'\NhanSu\2-2051108982.ThanhThu', CAST(0x5E150B00 AS Date), 0, N'0122347564', CAST(0xB6390B00 AS Date), N'Hà Nội', N'Hòa Bình', N'Hòa Bình', N'2 lô 12 - KĐT Dịch Vọng - Cầu Giấy', N'2 lô 12 - KĐT Dịch Vọng - Cầu Giấy', N'0938874532', N'', N'thutran@yahoo.com', N'thutran@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (700, 6, 1, 2, 2, 1, 47, 5, 20, 1, 4, 3, 3, 6, 2, N'Vũ Thảo Mai', N'', N'\NhanSu\3-1177773251.ThaoMai', CAST(0x83120B00 AS Date), 0, N'012134756', CAST(0x1F340B00 AS Date), N'Hà Nội', N'Vĩnh Phúc', N'Vĩnh Phúc', N'P602 A2 Vinaconex 1 - Khuất Duy Tiến - Thanh Xuân', N'P602 A2 Vinaconex 1 - Khuất Duy Tiến - Thanh Xuân', N'0936740374', N'', N'thaomai@yahoo.com', N'thaomai@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (800, 2, 1, 2, 2, 1, 47, 5, 20, 1, 4, 3, 3, 8, 2, N'Vũ Vân Khanh', N'', N'\NhanSu\4-276179520.VanKhanh', CAST(0xF0020B00 AS Date), 0, N'012156483', CAST(0x1E340B00 AS Date), N'Hà Nội', N'Vĩnh Phúc', N'Vĩnh Phúc', N'Số 4 M3 TT6 - Bắc Linh Đàm - Hoàng Mai', N'Số 4 M3 TT6 - Bắc Linh Đàm - Hoàng Mai', N'0943276543', N'', N'vankhanh@yahoo.com', N'vankhanh@company.com')
GO
INSERT [dbo].[NhanSu] ([Id], [TinhTrangHonNhanId], [DanTocId], [TonGiaoId], [TinhThanhId], [QuocGiaId], [ChucVuId], [ChucDanhId], [PhongBanId], [HinhThucDaoTaoId], [ChuyenNganhDaoTaoId], [TrinhDoNgoaiNguId], [TrinhDoTinHocId], [TruongDaoTaoId], [TrinhDoVanHoaId], [HoTen], [TenKhac], [AnhDaiDien], [NgaySinh], [GioiTinh], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NoiSinh], [QueQuan], [HoKhauThuongTru], [NoiSongHienTai], [SoDienThoaiDiDong], [SoDienThoaiBan], [EmailCaNhan], [EmailCongTy]) VALUES (900, 2, 1, 2, 2, 1, 47, 3, 19, 1, 4, 4, 3, 8, 2, N'Nguyễn Quỳnh Anh', N'', N'\NhanSu\526098659.QuynhAnh', CAST(0x1F050B00 AS Date), 0, N'012364534', CAST(0x14320B00 AS Date), N'Hà Nội', N'Thanh Hóa', N'Thanh Hóa', N'Vũ Trọng Phụng - Thanh Xuân', N'Vũ Trọng Phụng - Thanh Xuân', N'094537485', N'', N'quynhanhnguyen@gmail.com', N'quynhanhnguyen@company.com')
GO
SET IDENTITY_INSERT [dbo].[NhanSu_QuaTrinhHopDong] ON 

GO
INSERT [dbo].[NhanSu_QuaTrinhHopDong] ([Id], [NhanSuId], [LoaiHopDongId], [ChucVuId], [PhongBanId], [TuNgay], [DenNgay], [GhiChu]) VALUES (1, 1, 1, 1, 5, CAST(0x0B3C0B00 AS Date), CAST(0x0B3C0B00 AS Date), N'')
GO
INSERT [dbo].[NhanSu_QuaTrinhHopDong] ([Id], [NhanSuId], [LoaiHopDongId], [ChucVuId], [PhongBanId], [TuNgay], [DenNgay], [GhiChu]) VALUES (2, 0, 1, 1, 6, CAST(0x0B3C0B00 AS Date), CAST(0x0B3C0B00 AS Date), N'ádfasdfas123123')
GO
SET IDENTITY_INSERT [dbo].[NhanSu_QuaTrinhHopDong] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanSu_QuaTrinhLuong] ON 

GO
INSERT [dbo].[NhanSu_QuaTrinhLuong] ([Id], [NhanSuId], [HinhThucHuongLuongId], [BacLuongId], [TuNgay], [DenNgay], [TienLuong]) VALUES (1, 1, 2, 1, CAST(0x0B3C0B00 AS Date), CAST(0x0B3C0B00 AS Date), 8500000)
GO
SET IDENTITY_INSERT [dbo].[NhanSu_QuaTrinhLuong] OFF
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (1, 0, N'Danh mục gốc', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (2, 1, N'Ban tài chính', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (3, 1, N'Ban vận hành', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (4, 1, N'Ban kinh doanh', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (5, 2, N'Phòng công nghệ thông tin', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (6, 2, N'Phòng mua', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (7, 2, N'Phòng kế toán', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (8, 2, N'Phòng tài chính', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (9, 2, N'Phòng hành chính', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (10, 3, N'Phòng dịch vụ buồng', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (11, 4, N'Phòng chăm sóc khách hàng', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (12, 4, N'Phòng marketing', NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (14, 3, N'Phòng chuyên môn an ninh', N'', N'', N'')
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (15, 3, N'Phòng chuyên môn kỹ thuật', N'', N'', N'')
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (17, 3, N'Phòng ẩm thực', N'', N'', N'')
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (18, 3, N'Phòng dịch vụ lưu trú', N'', N'', N'')
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (19, 3, N'Phòng tuyển dụng', N'', N'', N'')
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (20, 3, N'Phòng Đào tạo', N'', N'', N'')
GO
INSERT [dbo].[PhongBan] ([Id], [ParentId], [TenPhongBan], [SoDienThoai], [DiaChi], [Email]) VALUES (21, 4, N'Phòng kinh doanh', N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[PhuCap] ON 

GO
INSERT [dbo].[PhuCap] ([Id], [PhuCap], [GiaTri]) VALUES (1, N'Tiền điện thoại 1', 100000)
GO
INSERT [dbo].[PhuCap] ([Id], [PhuCap], [GiaTri]) VALUES (2, N'Tiền điện thoại 2', 200000)
GO
INSERT [dbo].[PhuCap] ([Id], [PhuCap], [GiaTri]) VALUES (3, N'Tiền điện thoại 3', 300000)
GO
SET IDENTITY_INSERT [dbo].[PhuCap] OFF
GO
SET IDENTITY_INSERT [dbo].[QuocGia] ON 

GO
INSERT [dbo].[QuocGia] ([Id], [TenQuocGia]) VALUES (1, N'Việt Nam')
GO
INSERT [dbo].[QuocGia] ([Id], [TenQuocGia]) VALUES (2, N'Mỹ')
GO
INSERT [dbo].[QuocGia] ([Id], [TenQuocGia]) VALUES (3, N'Hàn Quốc')
GO
INSERT [dbo].[QuocGia] ([Id], [TenQuocGia]) VALUES (4, N'Nhật')
GO
INSERT [dbo].[QuocGia] ([Id], [TenQuocGia]) VALUES (5, N'Pháp')
GO
INSERT [dbo].[QuocGia] ([Id], [TenQuocGia]) VALUES (6, N'Úc')
GO
INSERT [dbo].[QuocGia] ([Id], [TenQuocGia]) VALUES (7, N'Đức')
GO
SET IDENTITY_INSERT [dbo].[QuocGia] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

GO
INSERT [dbo].[TinhThanh] ([Id], [TenTinhThanh]) VALUES (2, N'Hà Nội')
GO
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhTrangHonNhan] ON 

GO
INSERT [dbo].[TinhTrangHonNhan] ([Id], [TinhTrangHonNhan]) VALUES (2, N'Đã kết hôn')
GO
INSERT [dbo].[TinhTrangHonNhan] ([Id], [TinhTrangHonNhan]) VALUES (3, N'Đã ly hôn')
GO
INSERT [dbo].[TinhTrangHonNhan] ([Id], [TinhTrangHonNhan]) VALUES (4, N'Đã từng kết hôn')
GO
INSERT [dbo].[TinhTrangHonNhan] ([Id], [TinhTrangHonNhan]) VALUES (6, N'Độc thân')
GO
SET IDENTITY_INSERT [dbo].[TinhTrangHonNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[TonGiao] ON 

GO
INSERT [dbo].[TonGiao] ([Id], [TenTonGiao]) VALUES (2, N'Không')
GO
INSERT [dbo].[TonGiao] ([Id], [TenTonGiao]) VALUES (3, N'Thiên chúa giáo')
GO
SET IDENTITY_INSERT [dbo].[TonGiao] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThaiHopDong] ON 

GO
INSERT [dbo].[TrangThaiHopDong] ([Id], [TenTrangThaiHD]) VALUES (2, N'Thử việc')
GO
INSERT [dbo].[TrangThaiHopDong] ([Id], [TenTrangThaiHD]) VALUES (3, N'Chính thức')
GO
SET IDENTITY_INSERT [dbo].[TrangThaiHopDong] OFF
GO
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] ON 

GO
INSERT [dbo].[TrinhDoNgoaiNgu] ([Id], [TrinhDoNgoaiNgu]) VALUES (1, N'Chưa có chứng chỉ')
GO
INSERT [dbo].[TrinhDoNgoaiNgu] ([Id], [TrinhDoNgoaiNgu]) VALUES (2, N'Tiếng Anh - B1')
GO
INSERT [dbo].[TrinhDoNgoaiNgu] ([Id], [TrinhDoNgoaiNgu]) VALUES (3, N'Tiếng Anh - B2')
GO
INSERT [dbo].[TrinhDoNgoaiNgu] ([Id], [TrinhDoNgoaiNgu]) VALUES (4, N'Tiếng Nhật - N1')
GO
INSERT [dbo].[TrinhDoNgoaiNgu] ([Id], [TrinhDoNgoaiNgu]) VALUES (5, N'Tiếng Nhật - N2')
GO
INSERT [dbo].[TrinhDoNgoaiNgu] ([Id], [TrinhDoNgoaiNgu]) VALUES (6, N'Tiếng Nhật - N3')
GO
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] OFF
GO
SET IDENTITY_INSERT [dbo].[TrinhDoTinHoc] ON 

GO
INSERT [dbo].[TrinhDoTinHoc] ([Id], [TrinhDoTinHoc]) VALUES (1, N'Chưa có chứng chỉ')
GO
INSERT [dbo].[TrinhDoTinHoc] ([Id], [TrinhDoTinHoc]) VALUES (2, N'Tin học căn bản')
GO
INSERT [dbo].[TrinhDoTinHoc] ([Id], [TrinhDoTinHoc]) VALUES (3, N'MOS')
GO
INSERT [dbo].[TrinhDoTinHoc] ([Id], [TrinhDoTinHoc]) VALUES (4, N'IC3')
GO
SET IDENTITY_INSERT [dbo].[TrinhDoTinHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[TrinhDoVanHoa] ON 

GO
INSERT [dbo].[TrinhDoVanHoa] ([Id], [TrinhDoTotNghiep]) VALUES (1, N'Cao đẳng')
GO
INSERT [dbo].[TrinhDoVanHoa] ([Id], [TrinhDoTotNghiep]) VALUES (2, N'Đại học')
GO
INSERT [dbo].[TrinhDoVanHoa] ([Id], [TrinhDoTotNghiep]) VALUES (3, N'Tốt nghiệp cấp 3')
GO
INSERT [dbo].[TrinhDoVanHoa] ([Id], [TrinhDoTotNghiep]) VALUES (4, N'Cao học')
GO
SET IDENTITY_INSERT [dbo].[TrinhDoVanHoa] OFF
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (2, N'Đại học bách khoa')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (3, N'Học viện kỹ thuật quân sự')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (4, N'Đại học ngoại thương')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (5, N'Đại học thủy lợi')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (6, N'Đại học kinh tế quốc dân')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (7, N'Học viện tài chính')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (8, N'Đại học thương mại')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (9, N'Học viện bưu chính viễn thông')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (10, N'Học viện hành chính quốc gia')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (11, N'Đại học quốc gia Hà Nội')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (12, N'Đại học kinh doanh và công nghệ')
GO
INSERT [dbo].[TruongDaoTao] ([Id], [TenTruongDaoTao]) VALUES (13, N'Đại học ngoại thương')
GO
SET IDENTITY_INSERT [dbo].[ViTriTuyenDung] ON 

GO
INSERT [dbo].[ViTriTuyenDung] ([Id], [TenViTriTuyenDung], [TrangThaiSuDung]) VALUES (1, N'Nhân viên', 1)
GO
INSERT [dbo].[ViTriTuyenDung] ([Id], [TenViTriTuyenDung], [TrangThaiSuDung]) VALUES (2, N'Quản lý', 1)
GO
INSERT [dbo].[ViTriTuyenDung] ([Id], [TenViTriTuyenDung], [TrangThaiSuDung]) VALUES (3, N'Phó giám đốc', 1)
GO
INSERT [dbo].[ViTriTuyenDung] ([Id], [TenViTriTuyenDung], [TrangThaiSuDung]) VALUES (4, N'Giám đốc', 1)
GO
SET IDENTITY_INSERT [dbo].[ViTriTuyenDung] OFF
GO
