import React from 'react';
import Logo3D from '../components/Logo3D';

export default function About() {
  return (
     <div className="prose max-w-none mx-auto py-6 px-4">
      <Logo3D />
      <h2>Hakkımızda</h2>
      <p>
        “Nerede Ne Yenir” projesi, Beşiktaş bölgesindeki en iyi restoranları kullanıcı
        tercihlerine göre listeler. Kullanıcı dostu arayüzü sayesinde dönerden
        pizzaya, ev yemeklerinden tatlıya kadar çeşitli kategorilere hızlıca
        erişim sağlar.
      </p>
      <p>
        Projemizin amacı, yerel işletmeleri desteklerken kullanıcılara güvenilir
        ve güncel öneriler sunmaktır. Müşteri yorumları ve puanlamalar üzerinden
        sürekli güncellenen verilerle en kaliteli yemek deneyimini yaşamanıza yardımcı oluruz.
      </p>
      <p>
        Backend: Java Spring Boot, Frontend: React & Tailwind CSS ve veritabanı
        yönetimini de içeren eksiksiz bir teknoloji yığını kullanıyoruz.
      </p>
      <p>
        İyi yemekler, iyi anılar demektir. “Nerede Ne Yenir” ile Beşiktaş’ı
        keşfetmeye hazır mısınız?
      </p>
    </div>
  );
}