<?php

namespace Database\Seeders;

use App\Models\Seo;
use Illuminate\Database\Seeder;

class SeoContentSeeder extends Seeder
{
    public function run()
    {
        $seoData = [
            // HOME - RU
            [
                'url_path' => 'ru',
                'locale' => 'ru',
                'title' => 'Разработка и создание сайтов под ключ: Узбекистан, Россия, Казахстан, СНГ | WELLSOFT',
                'description' => 'Профессиональная разработка сайтов, интернет-магазинов и порталов в Ташкенте, Москве, Алматы, Душанбе. Закажите качественный веб-сайт от экспертов WELLSOFT.',
                'keywords' => 'создание сайтов, разработка сайтов, веб-студия Ташкент, заказать сайт Москва, создание лендинга Алматы, IT компания Узбекистан, СНГ, Казахстан, Россия, Таджикистан',
            ],
            // HOME - EN
            [
                'url_path' => 'en',
                'locale' => 'en',
                'title' => 'Website Development & Web Design: Uzbekistan, CIS, Worldwide | WELLSOFT',
                'description' => 'Top-tier website development and custom software for clients in Uzbekistan, Russia, Kazakhstan, Tajikistan, and worldwide. Hire WELLSOFT experts.',
                'keywords' => 'website development Tashkent, web design agency CIS, custom software Russia, ecommerce Kazakhstan, IT company Uzbekistan, Tajikistan web dev',
            ],
            // ABOUT - RU
            [
                'url_path' => 'ru/about',
                'locale' => 'ru',
                'title' => 'О компании WELLSOFT | IT-Агентство в Узбекистане и СНГ',
                'description' => 'Узнайте больше о WELLSOFT — международной IT-компании. Инновационные веб-решения для бизнеса в Узбекистане, Казахстане, России и Таджикистане.',
                'keywords' => 'о компании, веб студия СНГ, IT агентство Казахстан, разработчики сайтов Россия, команда разработчиков Ташкент',
            ],
            // ABOUT - EN
            [
                'url_path' => 'en/about',
                'locale' => 'en',
                'title' => 'About WELLSOFT | Premier IT Agency in Central Asia & CIS',
                'description' => 'Learn more about WELLSOFT, a leading IT company specializing in digital transformation for businesses in Uzbekistan, Russia, Kazakhstan, and Tajikistan.',
                'keywords' => 'about us, IT agency CIS, web studio Central Asia, development team Uzbekistan, software company',
            ],
            // SERVICES - RU
            [
                'url_path' => 'ru/services',
                'locale' => 'ru',
                'title' => 'Услуги по разработке сайтов и IT-решения (СНГ) | WELLSOFT',
                'description' => 'Создание лендингов, веб-порталов, CRM-систем и мобильных приложений для клиентов из Узбекистана, РФ, РК и РТ. Оптимизируем ваш бизнес!',
                'keywords' => 'услуги разработки Россия, создание сайтов цена Казахстан, мобильные приложения СНГ, внедрение CRM',
            ],
            // SERVICES - EN
            [
                'url_path' => 'en/services',
                'locale' => 'en',
                'title' => 'Web Development & IT Services Worldwide | WELLSOFT',
                'description' => 'Full-cycle IT services including custom web development, CRM systems, and mobile apps to scale your business across the CIS region and beyond.',
                'keywords' => 'development services, web development pricing, mobile app development CIS, CRM integration',
            ],
            // PORTFOLIO - RU
            [
                'url_path' => 'ru/portfolio',
                'locale' => 'ru',
                'title' => 'Наше портфолио: Сайты в Узбекистане, РФ и Казахстане | WELLSOFT',
                'description' => 'Ознакомьтесь с нашими кейсами. Создаем красивые и конверсионные сайты для бизнеса в СНГ (Ташкент, Москва, Нур-Султан, Душанбе).',
                'keywords' => 'портфолио сайтов СНГ, примеры работ Россия, кейсы веб студии Казахстан, созданные сайты',
            ],
            // PORTFOLIO - EN
            [
                'url_path' => 'en/portfolio',
                'locale' => 'en',
                'title' => 'Our Portfolio: Global Websites & Projects | WELLSOFT',
                'description' => 'Explore our international case studies. We build high-converting websites for business industries across Uzbekistan, Russia, Kazakhstan, and Tajikistan.',
                'keywords' => 'website portfolio CIS, case studies, web design examples, international projects',
            ],
            // CONTACT - RU
            [
                'url_path' => 'ru/contact',
                'locale' => 'ru',
                'title' => 'Контакты | Заказать сайт в СНГ (УЗ, РФ, КЗ) | WELLSOFT',
                'description' => 'Свяжитесь с WELLSOFT для работы над проектом. Обслуживаем клиентов из Узбекистана, России, Казахстана и Таджикистана. +998 (99) 183-22-33.',
                'keywords' => 'контакты веб студии, заказать сайт онлайн, телефон веб разработчиков СНГ, IT компания контакты',
            ],
            // CONTACT - EN
            [
                'url_path' => 'en/contact',
                'locale' => 'en',
                'title' => 'Contact Us | Hire Web Developers in CIS | WELLSOFT',
                'description' => 'Contact WELLSOFT for an international project estimation. Serving clients in Uzbekistan, Russia, Kazakhstan, and Tajikistan. +998 (99) 183-22-33.',
                'keywords' => 'contact web studio CIS, hire developers remotely, international software agency',
            ]
        ];

        foreach ($seoData as $data) {
            Seo::updateOrCreate(
                ['url_path' => $data['url_path']],
                $data
            );
        }
    }
}
