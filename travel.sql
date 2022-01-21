-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 05:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_id` int(100) NOT NULL,
  `Cat_name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_id`, `Cat_name`) VALUES
(1, 'Family Tours'),
(2, 'Religious Tours'),
(3, 'Adventure Tours'),
(4, 'Special Event Tours'),
(5, 'National Parks'),
(6, 'Themed Vacations'),
(7, 'Small Group Tours'),
(8, 'INDIA'),
(9, 'Tandi');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactid` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phno` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactid`, `Name`, `Phno`, `Email`, `Message`) VALUES
(7, 'shruti', '264896449814', 'saiuue@ihwbe.cj', 'Thankyou for the amazing trip!'),
(8, 'Mamatha', '264896449889', 'mamatha@gmail.com', '-'),
(9, 'Monica', '7896549879', 'mon14@yahoo.com', 'Nice and Interactive.'),
(10, 'Sheril Roosevelt', '89776558999', 'roosevelt@yahoo.com', '-'),
(11, 'Ashley Jordan', '89765666599', 'ashleyi@gmail.com', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `Enquiryid` int(50) NOT NULL,
  `Packageid` int(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Mobileno` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NoofDays` int(50) NOT NULL,
  `Child` int(50) NOT NULL,
  `Adults` int(50) NOT NULL,
  `Message` varchar(900) NOT NULL,
  `Statusfield` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`Enquiryid`, `Packageid`, `Name`, `Gender`, `Mobileno`, `Email`, `NoofDays`, `Child`, `Adults`, `Message`, `Statusfield`) VALUES
(13, 6, 'idk', 'Female', '5683408090', 'sfjihfihfhsihf@ii.com', 5, 10, 20, 'i want to see the places list.', 'Pending'),
(14, 1, 'Alice', 'Female', '7896543897', 'alicecather@hotmail.com', 3, 0, 1, 'i want to see the places list and the cost', 'Completed'),
(15, 5, 'Joey', 'Male', '765424456788', 'joey@gmail.com', 2, 0, 1, 'i want to see the places list and the cost and other available options', 'Completed'),
(16, 7, 'Shruti', 'Female', '876876549', 'shrutigowak@yahoo.com', 3, 1, 1, 'Want to schedule a info session', 'Pending'),
(17, 9, 'Harish Gaikwad', 'Male', '7895687699', 'harish@gmail.com', 5, 0, 1, 'Other possible options', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Packid` int(200) NOT NULL,
  `Packname` varchar(1000) NOT NULL,
  `Category` int(200) NOT NULL,
  `Subcategory` int(200) NOT NULL,
  `Packprice` int(200) NOT NULL,
  `Pic1` varchar(8000) NOT NULL,
  `Pic2` varchar(8000) NOT NULL,
  `Pic3` varchar(8000) NOT NULL,
  `Detail` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`Packid`, `Packname`, `Category`, `Subcategory`, `Packprice`, `Pic1`, `Pic2`, `Pic3`, `Detail`) VALUES
(1, 'Christmas Time in Goa   ', 1, 1, 20000, '24.jpg', '26.jpg', '25.jpg', 'What better way to celebrate Christmas than to spend it in Goa? Come experience the traditional serenity of the Portuguese land in India , enjoy the thrill of a night long celebration and start your new year in an awe. This magical holiday will surely create lasting memories for the entire family.'),
(2, 'Agra Family Tour ', 1, 2, 10000, '30.jpg', '31.jpg', '4.jpg', 'A fun-filled holiday with your family is the best time to strengthen bonds and rejuvenate the love between dear ones. And, what could be a better place to have a good time with your family members than Agra? The pleasant weather, beautiful sceneries and delightful food is sure to put you in your best mood to revel the best time with your family. For a stress-free vacation, you can explore your options for Agra family holidays packages with us on Yatra.com. From hotel bookings to travel tickets, we offer various services to help you enjoy your Agra family tour packages. Visit the numerous attractions of this beautiful place in the company of your loved ones with our Agra family vacation and tour packages away from the routine tasks of life. '),
(3, 'Holidays in Jaipur', 1, 5, 20000, '38.jpg', '39.jpg', '37.jpg', 'Enjoy golden beaches, sparkling lakes, beautiful countryside, exciting cities and great cuisine on family holidays in Jaipur. Whether you are looking for an activity based holiday or one full of cultural pursuits, let our experience and insider knowledge help you tailor the ideal Jaipur family holiday.'),
(4, 'Main attraction in Kerala', 1, 4, 400000, '42.jpg', '41.jpg', '40.jpg', 'Take a peek at what God’s Own Country has to offer you. Be awed.STOP. Breathe. Slow down. Embrace life. It’s time for Kerala! Plan your trip with this amazing package.'),
(5, 'Holidays in Darjeeling', 1, 3, 400000, '34.jpg', '36.jpg', '33.jpg', 'From the entwined mountains peeps the dazzling sunshine, which defines the aura of Northeastern India. Nestled in the lap of nature, Darjeeling is famed for its expansive tea gardens, lofty peaks and the world-famous Darjeeling Himalayan Railway. Gangtok, on the other hand, is the fulcrum of Tibetan Buddhist culture and is home to several monasteries, temples and flower nurseries. Such a mix of natural and cultural attractions makes Northeastern India, a tourist hotspot.'),
(6, 'Holy Haridwar', 2, 6, 3000, '43.jpg', '44.jpg', '45.jpg', 'Haridwar means the \'Gateway to the abode of the gods\'. Legend has it, that Prince Bhagirath, through his penance, caused the river Ganges to come down to plains from the Himalayas so that his ancestors who had perished due to a curse of a sage could be revived. '),
(12, ' Best of India', 7, 12, 10000, '63.jpg', '62.jpg', '61.jpg', 'The Indian subcontinent is home to a number of ancient monuments, scenic locales, beaches, World Heritage Sites and cultural attractions. The states of Rajasthan, Gujarat, Goa, Himachal Pradesh, Jammu and Kashmir and Uttarakhand are among the top places toured by domestic and international tourists, pilgrims, wildlife enthusiasts and historians.'),
(13, 'Best of Karnataka', 7, 13, 900000, '65.jpg', '66.jpg', '64.jpg', 'Located in the midst of Western Ghats, Deccan Plateau and Kannad Coast, Karnataka is home to various forests, beaches, waterfalls, coffee plantations, lakes and all the bounties of nature.\r\n\r\nThe state also boasts of historically significant monuments and structures that attract visitors from far and beyond.\r\n\r\nAlso culturally diverse and ancient, Karnataka has a historic past and rich heritage for the travelers to explore.'),
(14, 'Best of Rajasthan', 7, 14, 700000, '67.jpg', '69.jpg', '68.jpg', 'From the startling architecture to amazing legends of heroism and romance, the royal forts, palaces and other ancient buildings of Rajasthan are even today standing still to narrate the stories of the past.'),
(15, 'Best Places in Mumbai', 3, 16, 12000, '72.jpg', '73.jpg', '70.jpg', 'Mumbai, the industrial capital of India is one of the most popular places to holiday in India. To get details on places around Mumbai along with reliable info on places to visit in Mumbai or places to visit near Mumbai, tourists should come to Mustseeindia.com. A leading online travel website, Mustseeindia.com is the best place to book holidays for best places around Mumbai for picnic. '),
(16, 'Best of West Bengal', 3, 17, 400000, '76.jpg', '75.jpg', '77.jpg', 'There is something about West Bengal that allures enthusiasts from both the Eastern and Western world. It is a melting pot of unique tastes, smells and sounds. Here the vistas are quaint, and literature the way of life. Bengal’s air carries the aroma of decadent sweets and its rich culture. Besides offering old vistas, colonial-era architecture, and a hospitality sweeter than a roshogulla, West Bengal has a little something to entice every kind of traveller. It has places that offer a slice of history, the corners that open up to the panoramic views of the Ganges, and a fare best described scrumptious.'),
(17, ' Best of North-East', 4, 20, 80000, '83.jpg', '81.jpg', '82.jpg', 'The Northeast states of India, with their rolling hills, green valleys and bubbling rivers, and mesmerizing aura, are popular with tourists across the globe. The states are also known for their cultural diversity and heritage. They’re popular among tourists for their trekking routes, parks to spot wild animals in their natural habitat, ancient temples, and snow-covered mountain peaks. '),
(18, 'Best of Maharashtra.', 4, 19, 600000, '86.jpg', '84.jpg', '85.jpg', 'Say Maharashtra and the image of a kilometres-long Marine Drive promenade flashes across your mind, quickly followed by the front view of the Gothic Victorian structure—Chhatrapati Shivaji Maharaj Terminus. Both are famous landmarks in Mumbai, the most popular city in Maharashtra. But there is more, much more to the third-largest state in India. Pristine beaches, surreal hill stations, adventurous treks, strawberry farms, wildlife sanctuaries, pilgrimage sites, rich history, scrumptious food and a vibrant culture—it has something for everyone.'),
(19, 'Best Events in Orissa', 4, 18, 600000, '88.jpg', '87.jpg', '89.jpg', 'The state of Odisha is buzzing with many cultural, literary, sporting events and exhibitions. Odisha\'s people are deep rooted in arts and culture and the same reflects in their continuous on-going events in various cities. Below is a list of current events.'),
(21, 'Christmas Party Themes  ', 6, 22, 100000, '97.jpg', '98.jpg', '99.jpg', 'Hundreds of christmas Party Ideas, christmas party themes, Invitations, Decorations, Party Supplies & Favors Party can help you plan and deliver a great Christmas holiday party. We have a variety of Christmas party themes for every type celebration. Spend a few moments browsing through a variety of Christmas party themes until you find the theme that is right for your holiday celebration. '),
(22, 'Entertainment Themed Vacations', 6, 21, 100000, '101.jpg', '100.jpg', '102.jpg', 'At My Tour we create custom designed entertainment themed vacation packages based on your specific interests making each trip unique. My Tour will give you an idea of the types of packages that could be possible for an entertainment-themed holiday.'),
(23, 'Best parks in Rajasthan', 5, 26, 3000, '107.jpg', '106.jpg', '108.jpg', 'Rajasthan the Largest state of India, famous for its rich culture and heritage, also have rich flora and fauna, although the forest cover is very little compare to other Indian states. Ranthambore National park at Rajasthan is world famous for tigers, below is the list of important wildlife national parks in Rajasthan. '),
(24, 'Best parks in Kerala', 5, 25, 4000, '109.jpg', '110.jpg', '111.jpg', 'Kerala the gods own country is famous for its backwater, beaches and scenic beauty and wildlife, wildlife in Kerala are indeed some of the most magnificent and varied found anywhere in the world. The Western Ghats, the natural mountain barriers of Kerala, bordering Tamil Nadu and Karnataka are home to the majority of Kerala\'s wildlife, below is the list of some of the important wildlife national parks in Kerela. '),
(25, 'Best parks in India', 5, 24, 2000, '113.jpg', '112.jpg', '114.jpg', 'There are over 80 national parks in India, spread all over the country. Some are larger and more accessible then others. Many people want to see the infamous tiger. The chance of spotting a tiger greatly depends on the size of the national park and the number of tigers, and is higher at some parks than others. ');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `Subcatid` int(200) NOT NULL,
  `Subcatname` varchar(1000) NOT NULL,
  `Catid` int(200) NOT NULL,
  `Pic` varchar(8000) NOT NULL,
  `Detail` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`Subcatid`, `Subcatname`, `Catid`, `Pic`, `Detail`) VALUES
(2, 'Family holiday to India   ', 1, '4.jpg', 'This relaxing holiday manages all of the organisational leg-work for you, so you can focus on combining family fun with exploring the phenomenal sights and sounds of India.'),
(3, 'Canada family  holiday', 1, '6.jpg', 'Our only big Canadian adventure holiday for families, with 10 days of wilderness wonders, camping and ranching. From Banff to bears, Whistler to white water rafting.'),
(6, 'Religious Tours in India', 2, '9.jpg', 'India is a land where various gods and goddess are worshiped over the years. The methods of worship are full of dedication and spirit. People used to visit India for seeing the Char Dham, Buddhist Pilgrimage and the famous temples of North India and South India. '),
(12, 'Small Group Tours in India', 7, '17.jpg', 'Religious affiliation is a variable of strong interest to religious organisations, social scientists, and can be used as an explanatory variable in studies on topics such as marriage formation and dissolution, fertility and income.'),
(16, 'Adventure Tours in Mumbai', 3, '71.jpg', 'Adventure Education Tours (Mumbai) Pvt. Ltd. is today recognized as Indiaâ€™s fastest growing Travel & Tour Company. The Adventure Tours Logo means its people care about what they do for you, and youâ€™ll find the quality and level of service you expect. Whether you are on a holiday, a tour, picnic or a conference, our services are professionally designed, high in quality and cost effective, to enable you to fulfill your lifelong dream. When it comes to finding what youâ€™re looking for, Adventure Education Tours (Mumbai) Pvt. Ltd. is always the best bet.\r\n'),
(21, 'Themed Vacations for Singles', 6, '90.jpg', ' Vacation package based on two travelers includes round-trip airfare, hotel accommodations, breakfast daily, tours and more . Edinburgh and whisky make a perfect combination! This special trip will give you insight into the centuries-old process of whisky production, while exposing you to the vibrant city of Edinburgh, with the picturesque backdrop of the central Scottish Highlands. Come experience the magic of Edinburgh and drink in what the locals call, “the water of life”.'),
(22, 'Christmas Themed Vacations', 6, '91.jpg', 'The long school break at Christmastime is a peak time for a winter family vacation. These festive getaways are sure to please kids and parents alike. '),
(23, 'Star Wars Themed Vacation', 6, '92.png', 'My son is going to be 6 in November and we usually take them for vacation somewheres as a big Birthday gift...we are planning on going to Disney World, and I see we are going to miss the Star Wars weekends that are happening in June. Are there going to be any Star Wars attractions there in Nov.? Also what else Star Wars themed could be done? We save up for this since birth and want to make it over the top fun, so please no snide remarks...We all love Star Wars.'),
(24, 'National Parks in India', 5, '103.jpeg', 'There are over 80 national parks in India, spread all over the country. Some are larger and more accessible then others. Many people want to see the infamous tiger. The chance of spotting a tiger greatly depends on the size of the national park and the number of tigers, and is higher at some parks than others. These five parks are all very popular with visitors. If there are specific types of animals you\'re interested in, discover where to find them at the top 8 parks to see wildlife in India'),
(25, 'National Parks in Kerala', 5, '104.jpg', 'Kerala the gods own country is famous for its backwater, beaches and scenic beauty and wildlife, wildlife in Kerala are indeed some of the most magnificent and varied found anywhere in the world. The Western Ghats, the natural mountain barriers of Kerala, bordering Tamil Nadu and Karnataka are home to the majority of Kerala\'s wildlife, below is the list of some of the important wildlife national parks in Kerela.'),
(26, 'National Parks in Rajasthan', 5, '105.jpg', 'Rajasthan the Largest state of India, famous for its rich culture and heritage, also have rich flora and fauna, although the forest cover is very little compare to other Indian states. Ranthambore National park at Rajasthan is world famous for tigers, below is the list of important wildlife national parks in Rajasthan. '),
(27, 'ellora tour', 8, '2.jpg', 'travel aroung the ellora caves, and mountains');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(100) NOT NULL,
  `Pwd` varchar(100) NOT NULL,
  `Typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Pwd`, `Typeofuser`) VALUES
('admin', 'admin', 'Admin'),
('hello', '123', 'General'),
('user', 'user', 'General'),
('vaish', '234', 'Admin'),
('zestme', '123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`Enquiryid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`Packid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Subcatid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `Enquiryid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `Packid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Subcatid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
