CREATE TABLE `spaceline` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `spaceship` (
  `id` varchar(255) NOT NULL,
  `seats` int(11) DEFAULT NULL,
  `model_type` varchar(255) NOT NULL,
  `spaceline_name` varchar(255) NOT NULL,
  `manufacturer_name_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `manufacturer` (
  `name_code` varchar(255) NOT NULL,
  `start_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `ticket` (
  `ticket_id` varchar(255) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `spaceline_staff` (
  `id` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `spaceline_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `cabin_crew` (
  `id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `maintenance_personnel` (
  `id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `flight` (
  `number` varchar(255) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `member` (
  `id` varchar(255) NOT NULL,  
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `booking_agent` (
  `id` varchar(255) NOT NULL,
  `booking_company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `customer` (
  `id` varchar(255) NOT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `passport_exp_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `booking_company` (
  `name` varchar(255) NOT NULL,
  `loacation` varchar(255) DEFAULT NULL,
  `telephone_num` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `spaceport` (
  `name` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `property_manager` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_num` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `purchases` (
  `ticket_id` varchar(255) NOT NULL,
  `booking_agent_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) NOT NULL,
  `price` date NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `uses` (
  `spaceship_id` varchar(255) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `arrives` (
  `flight_number` varchar(255) NOT NULL,
  `spaceport_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `departs` (
  `flight_number` varchar(255) NOT NULL,
  `spaceport_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `managed` (
  `spaceport_name` varchar(255) NOT NULL,
  `property_manager_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `serve` (
  `cabin_crew_id` varchar(255) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





ALTER TABLE `spaceline`
  ADD PRIMARY KEY (`name`);


ALTER TABLE `spaceship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spaceline_name` (`spaceline_name`),
  ADD KEY `manufacturer_name_code` (`manufacturer_name_code`);


ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`name_code`);


ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `flight_number` (`flight_number`);


ALTER TABLE `spaceline_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spaceline_name` (`spaceline_name`);


ALTER TABLE `cabin_crew`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


ALTER TABLE `maintenance_personnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`);


ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `booking_agent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `booking_company_name` (`booking_company_name`);


ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


ALTER TABLE `booking_company`
  ADD PRIMARY KEY (`name`);


ALTER TABLE `spaceport`
  ADD PRIMARY KEY (`name`);


ALTER TABLE `property_manager`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `purchases`
  ADD PRIMARY KEY (`ticket_id`,`booking_agent_id`,`customer_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `booking_agent_id` (`booking_agent_id`),
  ADD KEY `customer_id` (`customer_id`);


ALTER TABLE `uses`
  ADD PRIMARY KEY (`spaceship_id`,`flight_number`),
  ADD KEY `spaceship_id` (`spaceship_id`),
  ADD KEY `flight_number` (`flight_number`);


ALTER TABLE `arrives`
  ADD PRIMARY KEY (`flight_number`,`spaceport_name`),
  ADD KEY `flight_number` (`flight_number`),
  ADD KEY `spaceport_name` (`spaceport_name`);


ALTER TABLE `departs`
  ADD PRIMARY KEY (`flight_number`,`spaceport_name`),
  ADD KEY `flight_number` (`flight_number`),
  ADD KEY `spaceport_name` (`spaceport_name`);


ALTER TABLE `managed`
  ADD PRIMARY KEY (`spaceport_name`,`property_manager_id`),
  ADD KEY `spaceport_name` (`spaceport_name`),
  ADD KEY `property_manager_id` (`property_manager_id`);


ALTER TABLE `serve`
  ADD PRIMARY KEY (`cabin_crew_id`,`flight_number`),
  ADD KEY `cabin_crew_id` (`cabin_crew_id`),
  ADD KEY `flight_number` (`flight_number`);







ALTER TABLE `spaceship`
  ADD CONSTRAINT `spaceship_ibfk_1` FOREIGN KEY (`spaceline_name`) REFERENCES `spaceline` (`name`),
  ADD CONSTRAINT `spaceship_ibfk_2` FOREIGN KEY (`manufacturer_name_code`) REFERENCES `manufacturer` (`name_code`);


ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`);


ALTER TABLE `spaceline_staff`
  ADD CONSTRAINT `spaceline_staff_ibfk_1` FOREIGN KEY (`spaceline_name`) REFERENCES `spaceline` (`name`);


ALTER TABLE `cabin_crew`
  ADD CONSTRAINT `cabin_crew_ibfk_1` FOREIGN KEY (`id`) REFERENCES `spaceline_staff` (`id`);


ALTER TABLE `maintenance_personnel`
  ADD CONSTRAINT `maintenance_personnel_ibfk_1` FOREIGN KEY (`id`) REFERENCES `spaceline_staff` (`id`);


ALTER TABLE `booking_agent`
  ADD CONSTRAINT `booking_agent_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `booking_agent_ibfk_2` FOREIGN KEY (`booking_company_name`) REFERENCES `booking_company` (`name`);


ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member` (`id`);


ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`booking_agent_id`) REFERENCES `booking_agent` (`id`),
  ADD CONSTRAINT `purchases_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);


ALTER TABLE `uses`
  ADD CONSTRAINT `uses_ibfk_1` FOREIGN KEY (`spaceship_id`) REFERENCES `spaceship` (`id`),
  ADD CONSTRAINT `uses_ibfk_2` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`);


ALTER TABLE `arrives`
  ADD CONSTRAINT `arrives_ibfk_1` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`),
  ADD CONSTRAINT `arrives_ibfk_2` FOREIGN KEY (`spaceport_name`) REFERENCES `spaceport` (`name`);


ALTER TABLE `departs`
  ADD CONSTRAINT `departs_ibfk_1` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`),
  ADD CONSTRAINT `departs_ibfk_2` FOREIGN KEY (`spaceport_name`) REFERENCES `spaceport` (`name`);


ALTER TABLE `managed`
  ADD CONSTRAINT `managed_ibfk_1` FOREIGN KEY (`spaceport_name`) REFERENCES `spaceport` (`name`),
  ADD CONSTRAINT `managed_ibfk_2` FOREIGN KEY (`property_manager_id`) REFERENCES `property_manager` (`id`);


ALTER TABLE `serve`
  ADD CONSTRAINT `serve_ibfk_1` FOREIGN KEY (`cabin_crew_id`) REFERENCES `cabin_crew` (`id`),
  ADD CONSTRAINT `serve_ibfk_2` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`);
