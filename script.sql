USE [EmployeeDb]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/4/2020 3:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](50) NOT NULL,
	[EmpContact] [varchar](50) NOT NULL,
	[EmpEmail] [varchar](50) NOT NULL,
	[EmpAddress] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmpId], [EmpName], [EmpContact], [EmpEmail], [EmpAddress]) VALUES (4, N'phu1', N'6543211', N'phuhiepdam@megaii.com', N'brycen')
INSERT [dbo].[Employee] ([EmpId], [EmpName], [EmpContact], [EmpEmail], [EmpAddress]) VALUES (5, N'binh', N'6665', N'bb', N'hue')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
