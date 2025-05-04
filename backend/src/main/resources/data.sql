-- ========== KATEGORİLER ==========
INSERT INTO food_category (category_id, category_name) VALUES (1, 'Döner');
INSERT INTO food_category (category_id, category_name) VALUES (2, 'Pizza');
INSERT INTO food_category (category_id, category_name) VALUES (3, 'Tatlı');
INSERT INTO food_category (category_id, category_name) VALUES (4, 'Hamburger');
INSERT INTO food_category (category_id, category_name) VALUES (5, 'Ev Yemekleri');

-- ========== RESTORANLAR ==========

-- Döner
INSERT INTO restaurant (restaurant_id, restaurant_name, price_range, average_rating, review_count, category_id, image_url) VALUES
(1, 'Kasap Döner Beşiktaş', '239-659', 4.5, 5, 1, 'kasap-doner.jpg'),
(2, 'Bayramoğlu Döner', '500-1100', 4.3, 5, 1, 'bayramoglu-doner.jpg'),
(3, 'Kardeşler Döner', '180-270', 4.6, 5, 1, 'kardesler-doner.jpg'),
(4, 'Beşiktaş Dönercisi', '28-50', 4.2, 5, 1, 'besiktas-doner.jpg'),
(5, 'Karadeniz Döner', '230-260', 4.4, 5, 1, 'karadeniz-doner.jpg');

-- Pizza
INSERT INTO restaurant (restaurant_id, restaurant_name, price_range, average_rating, review_count, category_id, image_url) VALUES
(6, 'Pizzeria Pera', '380-650', 4.5, 5, 2, 'pera-pizza.jpg'),
(7, '400 Derece Pizza', '415-730', 4.6, 5, 2, '400derece-pizza.jpg'),
(8, 'Il Padrino Ristorante', '400-840', 4.3, 5, 2, 'padrino-pizza.jpg'),
(9, 'Miss Pizza Beşiktaş', '450-950', 4.1, 5, 2, 'miss-pizza.jpg'),
(10, 'Pizza Locale', '435-760', 4.7, 5, 2, 'locale-pizza.jpg');

-- Tatlı
INSERT INTO restaurant (restaurant_id, restaurant_name, price_range, average_rating, review_count, category_id, image_url) VALUES
(11, 'Viyana Kahvesi', '260-420', 4.8, 5, 3, 'viyana-tatli.jpg'),
(12, 'Baklavacı Güllüoğlu', '850-2150', 4.5, 5, 3, 'gulluoglu-tatli.jpg'),
(13, 'Hafız Mustafa', '680-1120', 4.6, 5, 3, 'hafizmustafa-tatli.jpg'),
(14, 'Mado Beşiktaş', '575-780', 4.9, 5, 3, 'mado-tatli.jpg'),
(15, 'Saray Muhallebicisi', '115-445', 4.4, 5, 3, 'saray-tatli.jpg');

-- Hamburger
INSERT INTO restaurant (restaurant_id, restaurant_name, price_range, average_rating, review_count, category_id, image_url) VALUES
(16, 'Akali', '180-250', 4.3, 5, 4, 'akali-burger.jpg'),
(17, 'Zula Burger', '200-300', 4.5, 5, 4, 'zula-burger.jpg'),
(18, 'Baltazar Beşiktaş', '220-320', 4.7, 5, 4, 'baltazar-burger.jpg'),
(19, 'Arca Burger', '150-200', 4.2, 5, 4, 'arca-burger.jpg'),
(20, 'The Smashy', '120-180', 4.6, 5, 4, 'smashy-burger.jpg');

-- Ev Yemekleri
INSERT INTO restaurant (restaurant_id, restaurant_name, price_range, average_rating, review_count, category_id, image_url) VALUES
(21, 'TahtaKaşık Ev Yemekleri', '100-150', 4.5, 5, 5, 'tahtakasik-ev.jpg'),
(22, 'Hayri Usta Lokantası', '90-140', 4.3, 5, 5, 'hayriusta-ev.jpg'),
(23, 'Kazım Usta Ev Yemekleri', '150-200', 4.6, 5, 5, 'kazimusta-ev.jpg'),
(24, 'Balkan Halk Lokantası', '110-160', 4.2, 5, 5, 'balkan-ev.jpg'),
(25, 'Kısmet Lokantası', '95-145', 4.4, 5, 5, 'kismet-ev.jpeg');





-- ========== YORUMLAR ==========




INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES
(1, 'Ahmet', 'Yılmaz', 5, 'Döner efsaneydi!', CURRENT_TIMESTAMP, 1),
(2, 'Zeynep', 'Koç', 4, 'Biraz yağlıydı ama lezzetli.', CURRENT_TIMESTAMP, 1),
(3, 'Mert', 'Demir', 5, 'Tam kıvamında!', CURRENT_TIMESTAMP, 1),
(4, 'Ayşe', 'Öztürk', 4, 'Porsiyon büyüktü.', CURRENT_TIMESTAMP, 1),
(5, 'Emre', 'Kaya', 5, 'Uygun fiyat, harika tat.', CURRENT_TIMESTAMP, 1);


INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES
(6, 'Elif', 'Aydın', 5, 'Pizzanın hamuru mükemmeldi.', CURRENT_TIMESTAMP, 6),
(7, 'Kerem', 'Çelik', 4, 'Peyniri çok kaliteli.', CURRENT_TIMESTAMP, 6),
(8, 'Melis', 'Balcı', 5, 'Hızlı servis, sıcak pizza.', CURRENT_TIMESTAMP, 6),
(9, 'Yunus', 'Karaca', 5, 'Her lokma ayrı güzeldi.', CURRENT_TIMESTAMP, 6),
(10, 'Burcu', 'İnce', 4, 'Fiyat biraz yüksekti.', CURRENT_TIMESTAMP, 6);


INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES
(11, 'Serhat', 'Yıldız', 5, 'Künefe sıcak geldi, çok iyiydi.', CURRENT_TIMESTAMP, 11),
(12, 'Gizem', 'Uçar', 5, 'Şerbet oranı tamdı.', CURRENT_TIMESTAMP, 11),
(13, 'Barış', 'Aslan', 4, 'Tatlılar biraz geç geldi.', CURRENT_TIMESTAMP, 11),
(14, 'Sena', 'Çakır', 5, 'Servis çok kibardı.', CURRENT_TIMESTAMP, 11),
(15, 'Yusuf', 'Çetin', 4, 'Görsellik çok iyiydi.', CURRENT_TIMESTAMP, 11);



INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (16, 'Tolga', 'Kaplan', 5, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (17, 'Aylin', 'Kurt', 4, 'Yine gelirim.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (18, 'Deniz', 'Aslan', 3, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (19, 'Sibel', 'Yılmaz', 5, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (20, 'Orhan', 'Kaya', 4, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (21, 'Aylin', 'Kurt', 5, 'Yine gelirim.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (22, 'Deniz', 'Aslan', 4, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (23, 'Sibel', 'Yılmaz', 3, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (24, 'Orhan', 'Kaya', 5, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (25, 'Pelin', 'Demir', 4, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (26, 'Deniz', 'Aslan', 5, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (27, 'Sibel', 'Yılmaz', 4, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (28, 'Orhan', 'Kaya', 3, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (29, 'Pelin', 'Demir', 5, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (30, 'Efe', 'Koç', 4, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (31, 'Sibel', 'Yılmaz', 5, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (32, 'Orhan', 'Kaya', 4, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (33, 'Pelin', 'Demir', 3, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (34, 'Efe', 'Koç', 5, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (35, 'Gözde', 'Aydın', 4, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (36, 'Pelin', 'Demir', 5, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (37, 'Efe', 'Koç', 4, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (38, 'Gözde', 'Aydın', 3, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (39, 'Mehmet', 'Aksoy', 5, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (40, 'Elvan', 'Güneş', 4, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (41, 'Efe', 'Koç', 5, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (42, 'Gözde', 'Aydın', 4, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (43, 'Mehmet', 'Aksoy', 3, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (44, 'Elvan', 'Güneş', 5, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (45, 'Tolga', 'Kaplan', 4, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (46, 'Gözde', 'Aydın', 5, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (47, 'Mehmet', 'Aksoy', 4, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (48, 'Elvan', 'Güneş', 3, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (49, 'Tolga', 'Kaplan', 5, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (50, 'Aylin', 'Kurt', 4, 'Yine gelirim.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (51, 'Mehmet', 'Aksoy', 5, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (52, 'Elvan', 'Güneş', 4, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (53, 'Tolga', 'Kaplan', 3, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (54, 'Aylin', 'Kurt', 5, 'Yine gelirim.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (55, 'Deniz', 'Aslan', 4, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (56, 'Tolga', 'Kaplan', 5, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (57, 'Aylin', 'Kurt', 4, 'Yine gelirim.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (58, 'Deniz', 'Aslan', 3, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (59, 'Sibel', 'Yılmaz', 5, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (60, 'Orhan', 'Kaya', 4, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (61, 'Aylin', 'Kurt', 5, 'Yine gelirim.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (62, 'Deniz', 'Aslan', 4, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (63, 'Sibel', 'Yılmaz', 3, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (64, 'Orhan', 'Kaya', 5, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (65, 'Pelin', 'Demir', 4, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (66, 'Deniz', 'Aslan', 5, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (67, 'Sibel', 'Yılmaz', 4, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (68, 'Orhan', 'Kaya', 3, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (69, 'Pelin', 'Demir', 5, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (70, 'Efe', 'Koç', 4, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (71, 'Sibel', 'Yılmaz', 5, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (72, 'Orhan', 'Kaya', 4, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (73, 'Pelin', 'Demir', 3, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (74, 'Efe', 'Koç', 5, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (75, 'Gözde', 'Aydın', 4, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (76, 'Pelin', 'Demir', 5, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (77, 'Efe', 'Koç', 4, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (78, 'Gözde', 'Aydın', 3, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (79, 'Mehmet', 'Aksoy', 5, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (80, 'Elvan', 'Güneş', 4, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (81, 'Efe', 'Koç', 5, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (82, 'Gözde', 'Aydın', 4, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (83, 'Mehmet', 'Aksoy', 3, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (84, 'Elvan', 'Güneş', 5, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (85, 'Tolga', 'Kaplan', 4, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (86, 'Gözde', 'Aydın', 5, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (87, 'Mehmet', 'Aksoy', 4, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (88, 'Elvan', 'Güneş', 3, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (89, 'Tolga', 'Kaplan', 5, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (90, 'Aylin', 'Kurt', 4, 'Yine gelirim.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (91, 'Mehmet', 'Aksoy', 5, 'Gerçekten çok beğendim.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (92, 'Elvan', 'Güneş', 4, 'Lezzet ortalamanın biraz üstünde.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (93, 'Tolga', 'Kaplan', 3, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (94, 'Aylin', 'Kurt', 5, 'Yine gelirim.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (95, 'Deniz', 'Aslan', 4, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (96, 'Tolga', 'Kaplan', 5, 'Servis hızlı ve güler yüzlüydü.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (97, 'Aylin', 'Kurt', 4, 'Yine gelirim.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (98, 'Deniz', 'Aslan', 3, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (99, 'Sibel', 'Yılmaz', 5, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (100, 'Orhan', 'Kaya', 4, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (101, 'Aylin', 'Kurt', 5, 'Yine gelirim.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (102, 'Deniz', 'Aslan', 4, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (103, 'Sibel', 'Yılmaz', 3, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (104, 'Orhan', 'Kaya', 5, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (105, 'Pelin', 'Demir', 4, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (106, 'Deniz', 'Aslan', 5, 'Fiyat/performans başarılı.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (107, 'Sibel', 'Yılmaz', 4, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (108, 'Orhan', 'Kaya', 3, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (109, 'Pelin', 'Demir', 5, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (110, 'Efe', 'Koç', 4, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (111, 'Sibel', 'Yılmaz', 5, 'Biraz tuzluydu ama güzeldi.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (112, 'Orhan', 'Kaya', 4, 'Sunum çok iyiydi.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (113, 'Pelin', 'Demir', 3, 'Temiz ve hijyenik.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (114, 'Efe', 'Koç', 5, 'Tatlar dengeliydi.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (115, 'Gözde', 'Aydın', 4, 'Uygun fiyatlı ve doyurucu.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (116, 'Ayşe', 'Şahin', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (117, 'Deniz', 'Kara', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (118, 'Can', 'Şahin', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (119, 'Fatma', 'Kaya', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (120, 'Emre', 'Demir', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (121, 'Can', 'Korkmaz', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (122, 'Deniz', 'Aydın', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (123, 'Zeynep', 'Kaplan', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (124, 'Mehmet', 'Demir', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (125, 'Selin', 'Kaplan', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (126, 'Burak', 'Kara', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (127, 'Can', 'Aydın', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (128, 'Deniz', 'Aydın', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (129, 'Ayşe', 'Demir', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (130, 'Ege', 'Aydın', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (131, 'Emre', 'Demir', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (132, 'Emre', 'Demir', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (133, 'Fatma', 'Demir', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (134, 'Selin', 'Yılmaz', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 1);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (135, 'Fatma', 'Kara', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (136, 'Selin', 'Demir', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (137, 'Mehmet', 'Öztürk', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (138, 'Ayşe', 'Aslan', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (139, 'Can', 'Aslan', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (140, 'Ege', 'Kaya', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (141, 'Fatma', 'Aydın', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (142, 'Fatma', 'Şahin', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (143, 'Zeynep', 'Öztürk', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (144, 'Deniz', 'Öztürk', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (145, 'Emre', 'Kaplan', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (146, 'Deniz', 'Kaya', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (147, 'Zeynep', 'Demir', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (148, 'Burak', 'Demir', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (149, 'Emre', 'Kara', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 2);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (150, 'Fatma', 'Kaplan', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (151, 'Mehmet', 'Öztürk', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (152, 'Ege', 'Kaplan', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (153, 'Deniz', 'Yılmaz', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (154, 'Mehmet', 'Öztürk', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (155, 'Emre', 'Aydın', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (156, 'Emre', 'Yılmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (157, 'Burak', 'Kaya', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (158, 'Fatma', 'Aydın', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (159, 'Can', 'Demir', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (160, 'Burak', 'Korkmaz', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (161, 'Selin', 'Demir', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (162, 'Ege', 'Şahin', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (163, 'Ayşe', 'Şahin', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 3);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (164, 'Zeynep', 'Aydın', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (165, 'Selin', 'Demir', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (166, 'Deniz', 'Aslan', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (167, 'Fatma', 'Kaplan', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (168, 'Mehmet', 'Yılmaz', 3, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (169, 'Fatma', 'Kaplan', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (170, 'Fatma', 'Aslan', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (171, 'Fatma', 'Demir', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (172, 'Ayşe', 'Kara', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (173, 'Ayşe', 'Yılmaz', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 4);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (174, 'Ege', 'Demir', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (175, 'Ayşe', 'Korkmaz', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (176, 'Fatma', 'Kaya', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (177, 'Selin', 'Demir', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (178, 'Can', 'Kaya', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (179, 'Can', 'Şahin', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (180, 'Burak', 'Kara', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (181, 'Fatma', 'Demir', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (182, 'Fatma', 'Kaplan', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (183, 'Burak', 'Kaplan', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (184, 'Emre', 'Korkmaz', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (185, 'Zeynep', 'Şahin', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (186, 'Burak', 'Korkmaz', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 5);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (187, 'Ege', 'Demir', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (188, 'Emre', 'Demir', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (189, 'Deniz', 'Şahin', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (190, 'Deniz', 'Korkmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (191, 'Ayşe', 'Kaya', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (192, 'Deniz', 'Aslan', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (193, 'Zeynep', 'Kara', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (194, 'Ege', 'Kaplan', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (195, 'Burak', 'Demir', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (196, 'Fatma', 'Korkmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (197, 'Can', 'Kaya', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (198, 'Deniz', 'Demir', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (199, 'Fatma', 'Kara', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (200, 'Burak', 'Öztürk', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (201, 'Ege', 'Aslan', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (202, 'Mehmet', 'Şahin', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 6);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (203, 'Ayşe', 'Yılmaz', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (204, 'Mehmet', 'Kaya', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (205, 'Ege', 'Aydın', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (206, 'Can', 'Aydın', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (207, 'Fatma', 'Kara', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (208, 'Ayşe', 'Kaya', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (209, 'Emre', 'Yılmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (210, 'Can', 'Şahin', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (211, 'Selin', 'Aydın', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (212, 'Can', 'Kaya', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (213, 'Fatma', 'Yılmaz', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (214, 'Can', 'Kaplan', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 7);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (215, 'Zeynep', 'Kaplan', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (216, 'Mehmet', 'Korkmaz', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (217, 'Fatma', 'Kaplan', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (218, 'Mehmet', 'Kara', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (219, 'Zeynep', 'Kaplan', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (220, 'Emre', 'Kaya', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (221, 'Deniz', 'Kara', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (222, 'Emre', 'Demir', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (223, 'Ayşe', 'Şahin', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (224, 'Mehmet', 'Aydın', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (225, 'Ayşe', 'Korkmaz', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (226, 'Mehmet', 'Kara', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (227, 'Selin', 'Kara', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 8);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (228, 'Ege', 'Kaplan', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (229, 'Can', 'Yılmaz', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (230, 'Burak', 'Korkmaz', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (231, 'Zeynep', 'Demir', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (232, 'Ege', 'Aydın', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (233, 'Ege', 'Öztürk', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (234, 'Selin', 'Yılmaz', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (235, 'Fatma', 'Yılmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (236, 'Zeynep', 'Aslan', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (237, 'Deniz', 'Aslan', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (238, 'Fatma', 'Demir', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (239, 'Emre', 'Korkmaz', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (240, 'Selin', 'Demir', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (241, 'Can', 'Şahin', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 9);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (242, 'Mehmet', 'Öztürk', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (243, 'Deniz', 'Aslan', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (244, 'Deniz', 'Aslan', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (245, 'Zeynep', 'Şahin', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (246, 'Emre', 'Demir', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (247, 'Ayşe', 'Kara', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (248, 'Ayşe', 'Kara', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (249, 'Burak', 'Öztürk', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (250, 'Zeynep', 'Kaplan', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (251, 'Ayşe', 'Kaya', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (252, 'Selin', 'Şahin', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (253, 'Can', 'Kaya', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (254, 'Deniz', 'Yılmaz', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 10);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (255, 'Ayşe', 'Demir', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (256, 'Ege', 'Aydın', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (257, 'Deniz', 'Kaplan', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (258, 'Zeynep', 'Aydın', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (259, 'Emre', 'Aydın', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (260, 'Zeynep', 'Aydın', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (261, 'Zeynep', 'Öztürk', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (262, 'Ege', 'Kaya', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (263, 'Deniz', 'Kara', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (264, 'Ayşe', 'Şahin', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (265, 'Ayşe', 'Kara', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (266, 'Deniz', 'Korkmaz', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (267, 'Can', 'Kara', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (268, 'Zeynep', 'Kaya', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (269, 'Selin', 'Demir', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 11);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (270, 'Can', 'Yılmaz', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (271, 'Deniz', 'Kaplan', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (272, 'Emre', 'Öztürk', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (273, 'Burak', 'Korkmaz', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (274, 'Ayşe', 'Kara', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (275, 'Fatma', 'Yılmaz', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (276, 'Ayşe', 'Kaplan', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (277, 'Burak', 'Korkmaz', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (278, 'Emre', 'Korkmaz', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (279, 'Ege', 'Kaya', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (280, 'Ayşe', 'Kara', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 12);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (281, 'Emre', 'Korkmaz', 3, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (282, 'Can', 'Kara', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (283, 'Burak', 'Kara', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (284, 'Mehmet', 'Kara', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (285, 'Deniz', 'Kara', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (286, 'Fatma', 'Öztürk', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (287, 'Selin', 'Korkmaz', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (288, 'Emre', 'Şahin', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (289, 'Can', 'Kaplan', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (290, 'Ege', 'Şahin', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (291, 'Can', 'Öztürk', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (292, 'Selin', 'Kaplan', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (293, 'Can', 'Öztürk', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (294, 'Can', 'Kaplan', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (295, 'Fatma', 'Kaya', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 13);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (296, 'Mehmet', 'Aydın', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (297, 'Ayşe', 'Kara', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (298, 'Burak', 'Aydın', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (299, 'Emre', 'Yılmaz', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (300, 'Can', 'Korkmaz', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (301, 'Selin', 'Öztürk', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (302, 'Burak', 'Kara', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (303, 'Selin', 'Demir', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (304, 'Fatma', 'Öztürk', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (305, 'Deniz', 'Aslan', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 14);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (306, 'Emre', 'Aslan', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (307, 'Mehmet', 'Aslan', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (308, 'Can', 'Aslan', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (309, 'Ayşe', 'Demir', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (310, 'Fatma', 'Demir', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (311, 'Fatma', 'Kara', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (312, 'Burak', 'Öztürk', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (313, 'Emre', 'Şahin', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (314, 'Zeynep', 'Şahin', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (315, 'Mehmet', 'Yılmaz', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (316, 'Burak', 'Aslan', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (317, 'Zeynep', 'Aslan', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (318, 'Burak', 'Korkmaz', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (319, 'Ayşe', 'Aydın', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 15);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (320, 'Zeynep', 'Demir', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (321, 'Ege', 'Şahin', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (322, 'Emre', 'Aydın', 2, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (323, 'Selin', 'Yılmaz', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (324, 'Ayşe', 'Aydın', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (325, 'Ege', 'Aydın', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (326, 'Deniz', 'Öztürk', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (327, 'Selin', 'Aydın', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (328, 'Deniz', 'Aslan', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (329, 'Ege', 'Kaplan', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (330, 'Mehmet', 'Kaplan', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (331, 'Ege', 'Aslan', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (332, 'Zeynep', 'Şahin', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (333, 'Zeynep', 'Yılmaz', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (334, 'Can', 'Demir', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 16);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (335, 'Zeynep', 'Demir', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (336, 'Mehmet', 'Korkmaz', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (337, 'Fatma', 'Kaplan', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (338, 'Mehmet', 'Korkmaz', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (339, 'Mehmet', 'Kaplan', 3, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (340, 'Ege', 'Demir', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (341, 'Selin', 'Demir', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (342, 'Ege', 'Yılmaz', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (343, 'Can', 'Aydın', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (344, 'Mehmet', 'Şahin', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (345, 'Ege', 'Kaplan', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (346, 'Zeynep', 'Öztürk', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (347, 'Mehmet', 'Korkmaz', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 17);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (348, 'Emre', 'Aydın', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (349, 'Selin', 'Aslan', 3, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (350, 'Fatma', 'Kaplan', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (351, 'Can', 'Şahin', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (352, 'Mehmet', 'Aslan', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (353, 'Ayşe', 'Öztürk', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (354, 'Selin', 'Kara', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (355, 'Zeynep', 'Demir', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (356, 'Fatma', 'Şahin', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (357, 'Emre', 'Öztürk', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 18);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (358, 'Zeynep', 'Kaya', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (359, 'Mehmet', 'Korkmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (360, 'Selin', 'Kaplan', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (361, 'Mehmet', 'Yılmaz', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (362, 'Burak', 'Öztürk', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (363, 'Burak', 'Aslan', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (364, 'Burak', 'Yılmaz', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (365, 'Mehmet', 'Öztürk', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (366, 'Selin', 'Şahin', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (367, 'Selin', 'Öztürk', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 19);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (368, 'Fatma', 'Kaplan', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (369, 'Deniz', 'Kaya', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (370, 'Ege', 'Kaya', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (371, 'Deniz', 'Şahin', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (372, 'Selin', 'Kaplan', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (373, 'Mehmet', 'Öztürk', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (374, 'Fatma', 'Korkmaz', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (375, 'Deniz', 'Şahin', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (376, 'Ayşe', 'Demir', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (377, 'Mehmet', 'Aydın', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (378, 'Deniz', 'Öztürk', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 20);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (379, 'Fatma', 'Aydın', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (380, 'Deniz', 'Aydın', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (381, 'Selin', 'Demir', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (382, 'Can', 'Kaplan', 5, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (383, 'Zeynep', 'Kara', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (384, 'Zeynep', 'Kara', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (385, 'Selin', 'Aslan', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (386, 'Burak', 'Kaplan', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (387, 'Ayşe', 'Aslan', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (388, 'Mehmet', 'Aydın', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (389, 'Mehmet', 'Şahin', 3, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (390, 'Can', 'Kaplan', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (391, 'Emre', 'Yılmaz', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (392, 'Zeynep', 'Kara', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (393, 'Deniz', 'Aydın', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (394, 'Ege', 'Aydın', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (395, 'Burak', 'Şahin', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (396, 'Selin', 'Aydın', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 21);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (397, 'Burak', 'Şahin', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (398, 'Ege', 'Öztürk', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (399, 'Can', 'Şahin', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (400, 'Deniz', 'Şahin', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (401, 'Burak', 'Kaplan', 5, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (402, 'Emre', 'Kara', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (403, 'Ege', 'Kaplan', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (404, 'Burak', 'Kaya', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (405, 'Zeynep', 'Aydın', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (406, 'Mehmet', 'Kara', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 22);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (407, 'Selin', 'Öztürk', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (408, 'Fatma', 'Aydın', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (409, 'Deniz', 'Kaplan', 3, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (410, 'Mehmet', 'Kaya', 2, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (411, 'Mehmet', 'Kaplan', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (412, 'Ayşe', 'Aydın', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (413, 'Selin', 'Kaplan', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (414, 'Selin', 'Şahin', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (415, 'Ayşe', 'Öztürk', 2, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (416, 'Fatma', 'Şahin', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (417, 'Selin', 'Kara', 5, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 23);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (418, 'Mehmet', 'Korkmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (419, 'Deniz', 'Öztürk', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (420, 'Ege', 'Öztürk', 2, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (421, 'Zeynep', 'Şahin', 1, 'Hijyen konusunda sorun vardı.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (422, 'Fatma', 'Öztürk', 3, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (423, 'Selin', 'Kaya', 5, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (424, 'Ege', 'Öztürk', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (425, 'Burak', 'Kaya', 4, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (426, 'Mehmet', 'Kaya', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (427, 'Selin', 'Korkmaz', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (428, 'Can', 'Kara', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (429, 'Burak', 'Öztürk', 4, 'Sunum ve servis çok başarılıydı.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (430, 'Emre', 'Şahin', 3, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (431, 'Fatma', 'Yılmaz', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 24);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (432, 'Can', 'Kaplan', 4, 'Fiyat/performans çok iyiydi.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (433, 'Mehmet', 'Öztürk', 1, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (434, 'Selin', 'Demir', 1, 'Çok tuzluydu ve tatsızdı.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (435, 'Mehmet', 'Korkmaz', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (436, 'Burak', 'Şahin', 3, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (437, 'Deniz', 'Demir', 4, 'Temiz ve hijyenik bir ortam.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (438, 'Fatma', 'Korkmaz', 1, 'Beklediğim gibi değildi, hayal kırıklığı oldu.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (439, 'Deniz', 'Demir', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (440, 'Mehmet', 'Demir', 2, 'Porsiyon çok küçüktü.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (441, 'Burak', 'Kara', 1, 'Servis yavaştı, çok bekledik.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (442, 'Emre', 'Aslan', 5, 'Mükemmel lezzet, kesinlikle öneririm.', CURRENT_TIMESTAMP, 25);
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES (443, 'Selin', 'Kaya', 4, 'Tadı harikaydı, tekrar geleceğim.', CURRENT_TIMESTAMP, 25);


ALTER TABLE review ALTER COLUMN review_id RESTART WITH 444;