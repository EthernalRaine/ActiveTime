-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 12:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activetime`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class` varchar(255) NOT NULL,
  `current` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`current`)),
  `normal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`normal`)),
  `pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class`, `current`, `normal`, `pk`) VALUES
('demo', '{\r\n    \"lessons\": \r\n    [\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"CL1\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T01\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"CL2\",\r\n                \"room\":\"GE1\",\r\n                \"teach\":\"T05\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"CL3\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"DID\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"CL4\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T02\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"CL5\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T07\",\r\n                \"mode\":\"(Week B)\",\r\n                \"state\":\"single\"\r\n            }\r\n        },\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"CL6\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T08\",\r\n                \"mode\":\"(Week A)\",\r\n                \"state\":\"single\"\r\n            }\r\n        },\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"PKG\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T02\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"CL7\",\r\n                \"room\":\"CE6\",\r\n                \"teach\":\"T06\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"CL5\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T07\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"CL8\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T01\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"CLC\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T09\",\r\n                \"mode\":\"\",\r\n                \"state\":\"single\"\r\n            }\r\n        },\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"CLB\",\r\n                \"room\":\"D11\",\r\n                \"teach\":\"T04\",\r\n                \"mode\":\"\",\r\n                \"state\":\"single\"\r\n            }\r\n        },\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"CL9\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T03\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"CL6\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T08\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"CL9\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T03\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"CL0\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T04\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"PCLA\",\r\n                \"room\":\"D20\",\r\n                \"teach\":\"T10\",\r\n                \"mode\":\"\",\r\n                \"state\":\"single\"\r\n            }\r\n        },\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"CLA\",\r\n                \"room\":\"D18\",\r\n                \"teach\":\"T11\",\r\n                \"mode\":\"\",\r\n                \"state\":\"single\"\r\n            }\r\n        },\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"CL0\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T04\",\r\n                \"mode\":\"(Week A)\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"empty\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"CL9\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T03\",\r\n                \"mode\":\"(Week B)\",\r\n                \"state\":\"double\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"empty\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"CL8\",\r\n                \"room\":\"R15\",\r\n                \"teach\":\"T01\",\r\n                \"mode\":\"\",\r\n                \"state\":\"double\"\r\n            }\r\n        },\r\n        {\r\n            \"mo\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"tu\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"empty\"\r\n            },\r\n            \"we\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            },\r\n            \"th\" : {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"empty\"\r\n            },\r\n            \"fr\": {\r\n                \"name\":\"\",\r\n                \"room\":\"\",\r\n                \"teach\":\"\",\r\n                \"mode\":\"\",\r\n                \"state\":\"noshow\"\r\n            }\r\n        }\r\n    ]\r\n}', '{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `classes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`classes`)),
  `lastseen` bigint(20) NOT NULL,
  `permission` int(1) NOT NULL,
  `pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`username`, `password`, `classes`, `lastseen`, `permission`, `pk`) VALUES
('admin', 'admin', '{\r\n    \"classes\": [\r\n        \"demo\"\r\n    ]\r\n}', 0, 7, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
