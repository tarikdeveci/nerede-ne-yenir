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
-- Her restorana 5 yorum (toplam 125)

-- Basit for döngüsü olmadığından örnekliyorum:
-- Dönerci Ali Usta (ID = 1)
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES
(1, 'Ahmet', 'Yılmaz', 5, 'Döner efsaneydi!', CURRENT_TIMESTAMP, 1),
(2, 'Zeynep', 'Koç', 4, 'Biraz yağlıydı ama lezzetli.', CURRENT_TIMESTAMP, 1),
(3, 'Mert', 'Demir', 5, 'Tam kıvamında!', CURRENT_TIMESTAMP, 1),
(4, 'Ayşe', 'Öztürk', 4, 'Porsiyon büyüktü.', CURRENT_TIMESTAMP, 1),
(5, 'Emre', 'Kaya', 5, 'Uygun fiyat, harika tat.', CURRENT_TIMESTAMP, 1);

-- Pizza Street (ID = 6)
INSERT INTO review (review_id, reviewer_first_name, reviewer_last_name, rating, comment, created_at, restaurant_id) VALUES
(6, 'Elif', 'Aydın', 5, 'Pizzanın hamuru mükemmeldi.', CURRENT_TIMESTAMP, 6),
(7, 'Kerem', 'Çelik', 4, 'Peyniri çok kaliteli.', CURRENT_TIMESTAMP, 6),
(8, 'Melis', 'Balcı', 5, 'Hızlı servis, sıcak pizza.', CURRENT_TIMESTAMP, 6),
(9, 'Yunus', 'Karaca', 5, 'Her lokma ayrı güzeldi.', CURRENT_TIMESTAMP, 6),
(10, 'Burcu', 'İnce', 4, 'Fiyat biraz yüksekti.', CURRENT_TIMESTAMP, 6);

-- Tatlıcı Ali (ID = 11)
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


ALTER TABLE review ALTER COLUMN review_id RESTART WITH 126;