<?php
$viewsDir = __DIR__ . '/resources/views';
$files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($viewsDir));

$routesToLocalize = [
    '/contact', '/services', '/about', '/team', '/portfolio', '/blog', '/terms', '/privacy', '/testimonials', '/faqs'
];

foreach ($files as $file) {
    if ($file->isDir() || $file->getExtension() !== 'php') {
        continue;
    }
    
    $content = file_get_contents($file->getPathname());
    $original = $content;

    foreach ($routesToLocalize as $route) {
        // Fix href="/contact" -> href="{{ url('/' . app()->getLocale() . '/contact') }}"
        $content = preg_replace(
            '/href=["\']' . preg_quote($route, '/') . '["\']/',
            'href="{{ url(\'/\' . app()->getLocale() . \'' . $route . '\') }}"',
            $content
        );
        // Fix url('/contact') -> url('/' . app()->getLocale() . '/contact')
        $content = preg_replace(
            '/url\([\'"]' . preg_quote($route, '/') . '[\'"]\)/',
            'url(\'/\' . app()->getLocale() . \'' . $route . '\')',
            $content
        );
    }

    // Fix blog items url("blog-items/$blogItem->id")
    $content = preg_replace(
        '/url\([\'"]blog-items\/\$([a-zA-Z0-9_\->]+)[\'"]\)/',
        'url(\'/\' . app()->getLocale() . \'/blog-items/\' . $$1)',
        $content
    );

    if ($original !== $content) {
        file_put_contents($file->getPathname(), $content);
        echo "Updated: " . $file->getPathname() . "\n";
    }
}
echo "Done.\n";
