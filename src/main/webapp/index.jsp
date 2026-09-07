<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#0f172a">
<title>NexusShop — Modern Storefront</title>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous">
#Added in comment
<style>
:root {
  --bg:#f6f8fc; --surface:#fff; --surface-2:#eef2f7; --ink:#0f172a; --muted:#64748b;
  --line:#e2e8f0; --brand:#4f46e5; --brand-2:#7c3aed; --brand-soft:#eef2ff;
  --success:#059669; --warning:#f59e0b; --danger:#ef4444; --radius:22px;
  --shadow:0 10px 35px rgba(15,23,42,.07); --shadow-lg:0 24px 70px rgba(15,23,42,.14);
  --container:1280px; --ease:.25s cubic-bezier(.2,.8,.2,1);
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth;scroll-padding-top:100px}
body{font-family:'DM Sans',system-ui,sans-serif;background:var(--bg);color:var(--ink);line-height:1.55;-webkit-font-smoothing:antialiased}
body:before{content:"";position:fixed;inset:0;pointer-events:none;background:radial-gradient(circle at 85% 5%,rgba(124,58,237,.07),transparent 30%),radial-gradient(circle at 5% 30%,rgba(79,70,229,.05),transparent 25%);z-index:-1}
a{color:inherit;text-decoration:none} button,input{font:inherit} button{border:0;background:none;color:inherit;cursor:pointer} img{display:block;max-width:100%}
.container{width:min(100% - 36px,var(--container));margin:auto}
.sr-only{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0,0,0,0)}

/* announcement + header */
.announcement{background:#0f172a;color:#e2e8f0;font-size:13px;text-align:center;padding:9px 16px}
.announcement strong{color:#fff}
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.9);backdrop-filter:blur(18px);border-bottom:1px solid rgba(226,232,240,.85)}
.header-inner{min-height:76px;display:grid;grid-template-columns:auto 1fr auto;align-items:center;gap:28px}
.brand{display:flex;align-items:center;gap:10px;font-family:'Space Grotesk';font-weight:700;font-size:22px;letter-spacing:-.5px}
.brand-mark{width:40px;height:40px;border-radius:13px;display:grid;place-items:center;background:linear-gradient(135deg,var(--brand),var(--brand-2));color:#fff;box-shadow:0 8px 20px rgba(79,70,229,.25)}
.brand .accent{color:var(--brand)}
.main-nav ul{display:flex;justify-content:center;gap:5px;list-style:none}
.main-nav a{display:flex;align-items:center;gap:7px;padding:10px 13px;border-radius:12px;color:var(--muted);font-size:14px;font-weight:600;transition:var(--ease)}
.main-nav a:hover,.main-nav a.active{color:var(--brand);background:var(--brand-soft)}
.header-tools{display:flex;align-items:center;gap:8px}
.search-wrap{height:44px;width:260px;display:flex;align-items:center;gap:10px;padding:0 14px;background:var(--surface-2);border:1px solid transparent;border-radius:14px;transition:var(--ease)}
.search-wrap:focus-within{background:#fff;border-color:#c7d2fe;box-shadow:0 0 0 4px rgba(79,70,229,.08)}
.search-wrap i{color:var(--muted)} .search-wrap input{width:100%;border:0;outline:0;background:transparent;color:var(--ink);font-size:14px}
.search-wrap button{color:var(--muted)} .icon-btn{position:relative;width:42px;height:42px;border-radius:12px;display:grid;place-items:center;color:var(--muted);transition:var(--ease)}
.icon-btn:hover{background:var(--surface-2);color:var(--ink)}
.cart-count{position:absolute;top:-3px;right:-3px;width:19px;height:19px;border-radius:50%;display:grid;place-items:center;background:var(--brand);color:#fff;border:2px solid #fff;font-size:10px;font-weight:700;transition:transform .2s}
.mobile-toggle{display:none;width:42px;height:42px;border-radius:12px;background:var(--surface-2)}
#mobileMenu{display:none;border-top:1px solid var(--line);background:#fff;padding:10px 0 18px}
#mobileMenu ul{list-style:none;display:grid;gap:4px}
#mobileMenu a{display:flex;gap:12px;padding:12px;border-radius:12px;font-weight:600;color:var(--muted)}
#mobileMenu a:hover{background:var(--brand-soft);color:var(--brand)}

/* hero */
.hero{padding:34px 0 22px}
.hero-shell{position:relative;min-height:500px;overflow:hidden;border-radius:30px;background:#111827;display:grid;grid-template-columns:1.05fr .95fr;box-shadow:var(--shadow-lg)}
.hero-copy{position:relative;z-index:2;padding:70px 64px;color:#fff;display:flex;flex-direction:column;justify-content:center}
.eyebrow{display:inline-flex;align-items:center;gap:8px;width:max-content;padding:7px 12px;border:1px solid rgba(255,255,255,.18);background:rgba(255,255,255,.09);border-radius:999px;color:#c7d2fe;font-size:12px;font-weight:700;text-transform:uppercase;letter-spacing:.8px}
.hero h1{font-family:'Space Grotesk';font-size:clamp(38px,5vw,68px);line-height:1.02;letter-spacing:-2.5px;max-width:670px;margin:20px 0 18px}
.hero h1 span{color:#a5b4fc}
.hero p{max-width:560px;color:#cbd5e1;font-size:17px;line-height:1.7}
.hero-actions{display:flex;gap:12px;flex-wrap:wrap;margin-top:30px}
.btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;min-height:46px;padding:0 19px;border-radius:13px;border:1px solid transparent;font-weight:700;font-size:14px;transition:var(--ease)}
.btn-primary{background:linear-gradient(135deg,var(--brand),var(--brand-2));color:#fff;box-shadow:0 10px 25px rgba(79,70,229,.3)}
.btn-primary:hover{transform:translateY(-2px);box-shadow:0 15px 30px rgba(79,70,229,.38)}
.btn-ghost{background:rgba(255,255,255,.08);border-color:rgba(255,255,255,.18);color:#fff}
.btn-ghost:hover{background:rgba(255,255,255,.14)}
.hero-art{position:relative;min-height:100%;overflow:hidden}
.hero-art:before{content:"";position:absolute;inset:0;background:linear-gradient(90deg,#111827 0%,transparent 45%),linear-gradient(0deg,rgba(15,23,42,.4),transparent 60%);z-index:1}
.hero-art:after{content:"";position:absolute;width:360px;height:360px;border-radius:50%;right:-100px;top:-100px;background:rgba(99,102,241,.35);filter:blur(5px)}
.hero-art img{width:100%;height:100%;object-fit:cover;opacity:.82}
.floating-card{position:absolute;z-index:3;right:28px;bottom:28px;width:210px;padding:15px;border-radius:17px;background:rgba(255,255,255,.94);box-shadow:var(--shadow-lg);backdrop-filter:blur(10px)}
.floating-card .mini{display:flex;align-items:center;gap:10px;font-size:12px;color:var(--muted)}
.floating-card .mini i{width:32px;height:32px;border-radius:10px;display:grid;place-items:center;background:#dcfce7;color:var(--success)}
.floating-card strong{display:block;font-size:18px;margin-top:4px}

/* benefits */
.benefits{padding:10px 0 38px}
.benefit-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:12px}
.benefit{background:#fff;border:1px solid var(--line);border-radius:16px;padding:18px;display:flex;align-items:center;gap:13px}
.benefit i{width:42px;height:42px;display:grid;place-items:center;border-radius:12px;background:var(--brand-soft);color:var(--brand)}
.benefit strong{font-size:14px;display:block} .benefit span{font-size:12px;color:var(--muted)}

/* sections */
.section{padding:48px 0}
.section.alt{background:#fff;border-top:1px solid var(--line);border-bottom:1px solid var(--line)}
.section-header{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:24px}
.title-group .kicker{font-size:12px;color:var(--brand);font-weight:800;text-transform:uppercase;letter-spacing:1px;margin-bottom:5px}
.title-group h2{font-family:'Space Grotesk';font-size:30px;letter-spacing:-1px}
.title-group p{color:var(--muted);font-size:14px;margin-top:3px}
.view-all{display:inline-flex;align-items:center;gap:7px;color:var(--brand);font-weight:700;font-size:13px}
.view-all:hover i{transform:translateX(4px)} .view-all i{transition:var(--ease)}

/* categories */
.categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.cat-card{background:#fff;border:1px solid var(--line);border-radius:18px;padding:20px 12px;text-align:center;cursor:pointer;transition:var(--ease);box-shadow:0 3px 12px rgba(15,23,42,.03)}
.cat-card:hover{transform:translateY(-5px);border-color:#c7d2fe;box-shadow:var(--shadow)}
.cat-card .icon-wrap{width:54px;height:54px;margin:0 auto 12px;border-radius:16px;display:grid;place-items:center;background:var(--brand-soft);color:var(--brand);font-size:21px}
.cat-card h4{font-size:14px} .cat-card .count{font-size:12px;color:var(--muted);margin-top:3px}

/* products */
.products-toolbar{display:flex;gap:10px;align-items:center;flex-wrap:wrap;margin-bottom:18px}
.filter-chip{padding:8px 12px;border:1px solid var(--line);background:#fff;border-radius:999px;font-size:12px;font-weight:700;color:var(--muted)}
.filter-chip.active,.filter-chip:hover{color:var(--brand);border-color:#c7d2fe;background:var(--brand-soft)}
.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product-card{background:#fff;border:1px solid var(--line);border-radius:20px;overflow:hidden;box-shadow:0 3px 14px rgba(15,23,42,.035);transition:var(--ease);display:flex;flex-direction:column}
.product-card:hover{transform:translateY(-6px);box-shadow:var(--shadow);border-color:#c7d2fe}
.product-card .img-wrap{position:relative;aspect-ratio:1/1;background:#f1f5f9;overflow:hidden}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:.5s ease}
.product-card:hover .img-wrap img{transform:scale(1.06)}
.product-card .badge{position:absolute;top:12px;left:12px;padding:6px 9px;border-radius:8px;background:var(--brand);color:#fff;font-size:10px;font-weight:800;text-transform:uppercase;letter-spacing:.4px}
.product-card .badge.sale{background:#fef3c7;color:#92400e}
.product-card .wish-btn{position:absolute;top:10px;right:10px;width:36px;height:36px;border-radius:11px;background:rgba(255,255,255,.92);display:grid;place-items:center;color:var(--muted);box-shadow:0 4px 12px rgba(15,23,42,.08)}
.product-card .wish-btn:hover{color:var(--danger);transform:scale(1.05)}
.product-card .body{padding:15px 16px 10px;display:flex;flex-direction:column;gap:6px;flex:1}
.category-tag{font-size:10px;text-transform:uppercase;letter-spacing:.8px;color:#94a3b8;font-weight:800}
.product-card .body h5{font-size:15px;line-height:1.35;min-height:40px}
.price-row{display:flex;align-items:center;gap:8px;margin-top:2px} .price{font-size:18px;font-weight:800} .old-price{font-size:12px;color:#94a3b8;text-decoration:line-through}
.rating{font-size:12px;color:#f59e0b} .rating span{color:var(--muted);margin-left:3px}
.product-card .footer{padding:8px 16px 16px} .add-btn{width:100%;height:42px;border-radius:12px;background:#0f172a;color:#fff;font-size:13px;font-weight:800;transition:var(--ease)}
.add-btn:hover{background:var(--brand);transform:translateY(-1px)} .add-btn.added{background:var(--success)}

/* deal */
.deal-wrap{display:grid;grid-template-columns:1fr 1fr;overflow:hidden;border-radius:24px;background:#0f172a;box-shadow:var(--shadow-lg)}
.deal-img{min-height:430px;position:relative} .deal-img:after{content:"";position:absolute;inset:0;background:linear-gradient(90deg,transparent,#0f172a)}
.deal-img img{width:100%;height:100%;object-fit:cover}
.deal-content{padding:50px;display:flex;flex-direction:column;justify-content:center;color:#fff}
.deal-content .tag{width:max-content;padding:6px 10px;border-radius:8px;background:#fef3c7;color:#92400e;font-size:10px;font-weight:800;text-transform:uppercase;letter-spacing:.6px}
.deal-content h3{font-family:'Space Grotesk';font-size:38px;letter-spacing:-1.5px;margin:14px 0 7px}
.deal-content .desc{color:#cbd5e1;max-width:480px} .price-big{font-size:34px;font-weight:800;margin-top:16px} .price-big .old{font-size:18px;color:#94a3b8;text-decoration:line-through;margin-left:8px;font-weight:500}
.stock{font-size:13px;color:#cbd5e1;margin-top:4px} .stock strong{color:#fbbf24}
.timer-grid{display:flex;gap:9px;margin:22px 0} .timer-box{min-width:68px;padding:10px 8px;text-align:center;border:1px solid rgba(255,255,255,.12);background:rgba(255,255,255,.06);border-radius:12px}
.timer-box .num{font-size:23px;font-weight:800} .timer-box .label{font-size:9px;color:#94a3b8;text-transform:uppercase;letter-spacing:.6px}

/* testimonials */
.testimonials-scroll{display:grid;grid-template-columns:repeat(4,1fr);gap:16px;overflow:visible;padding:4px}
.testimonial-card{background:#fff;border:1px solid var(--line);border-radius:18px;padding:22px;box-shadow:0 3px 14px rgba(15,23,42,.03)}
.testimonial-card .stars{color:#f59e0b;letter-spacing:2px;margin-bottom:12px} .testimonial-card blockquote{font-size:14px;line-height:1.65;min-height:70px;margin-bottom:18px}
.author{display:flex;align-items:center;gap:10px} .avatar{width:40px;height:40px;border-radius:50%;object-fit:cover} .name{font-size:13px;font-weight:800} .role{font-size:11px;color:var(--muted)}

/* newsletter/footer */
.newsletter-wrap{position:relative;overflow:hidden;border-radius:24px;padding:42px 46px;background:linear-gradient(135deg,#312e81,#6d28d9);color:#fff;display:flex;align-items:center;justify-content:space-between;gap:30px}
.newsletter-wrap:after{content:"";position:absolute;width:280px;height:280px;border-radius:50%;right:-80px;top:-130px;background:rgba(255,255,255,.1)}
.newsletter-wrap .text,.newsletter-wrap form{position:relative;z-index:1} .newsletter-wrap h3{font-family:'Space Grotesk';font-size:28px} .newsletter-wrap p{color:#ddd6fe;font-size:14px;margin-top:4px}
.newsletter-wrap form{display:flex;gap:9px;max-width:510px;width:100%} .newsletter-wrap input{flex:1;min-width:0;height:46px;border:1px solid rgba(255,255,255,.18);border-radius:12px;padding:0 15px;background:rgba(255,255,255,.1);color:#fff;outline:0}
.newsletter-wrap input::placeholder{color:#c4b5fd} .newsletter-wrap input:focus{border-color:#fff} .newsletter-wrap .btn{background:#fff;color:#312e81}
#newsletterMsg{width:100%;font-size:12px;margin-top:7px}
footer{padding:42px 0 25px;background:#fff;border-top:1px solid var(--line);margin-top:22px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px;margin-bottom:30px}
.brand-col p{color:var(--muted);font-size:13px;max-width:310px;margin-top:12px} .socials{display:flex;gap:8px;margin-top:18px} .socials a{width:36px;height:36px;border:1px solid var(--line);border-radius:10px;display:grid;place-items:center;color:var(--muted);transition:var(--ease)} .socials a:hover{background:var(--brand);color:#fff;border-color:var(--brand)}
.footer-grid .col h5{font-size:13px;margin-bottom:12px} .footer-grid ul{list-style:none;display:grid;gap:7px} .footer-grid li a{font-size:13px;color:var(--muted)} .footer-grid li a:hover{color:var(--brand)}
.footer-bottom{border-top:1px solid var(--line);padding-top:20px;color:#94a3b8;font-size:12px;display:flex;justify-content:space-between;gap:10px}

/* responsive */
@media(max-width:1100px){
  .header-inner{grid-template-columns:auto auto;justify-content:space-between} .main-nav{display:none} .mobile-toggle{display:grid;place-items:center}
  .header-tools .search-wrap{width:220px} .categories-grid{grid-template-columns:repeat(3,1fr)} .products-grid{grid-template-columns:repeat(3,1fr)} .benefit-grid{grid-template-columns:repeat(2,1fr)} .testimonials-scroll{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:800px){
  .container{width:min(100% - 24px,var(--container))} .header-inner{min-height:66px;gap:10px} .header-tools .search-wrap{width:170px}
  .hero-shell{grid-template-columns:1fr;min-height:600px} .hero-copy{padding:46px 30px} .hero-art{position:absolute;inset:0;opacity:.38} .hero-art:before{background:linear-gradient(90deg,#111827 10%,rgba(17,24,39,.45) 70%)}
  .floating-card{right:18px;bottom:18px} .deal-wrap{grid-template-columns:1fr} .deal-img{min-height:260px} .deal-img:after{background:linear-gradient(0deg,#0f172a,transparent)}
  .deal-content{padding:30px} .newsletter-wrap{padding:32px 25px;flex-direction:column;align-items:stretch} .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:560px){
  .announcement{font-size:11px} .header-tools .search-wrap{width:42px;padding:0;justify-content:center;background:transparent;border:0} .search-wrap input{display:none} .search-wrap button{display:grid;place-items:center;width:42px;height:42px}
  .header-tools .icon-btn:nth-child(1),.header-tools .icon-btn:nth-child(2){display:none}
  .brand{font-size:18px} .brand-mark{width:36px;height:36px;border-radius:11px}
  .hero{padding-top:16px} .hero-shell{border-radius:22px;min-height:570px} .hero-copy{padding:36px 23px} .hero h1{font-size:39px;letter-spacing:-1.8px} .hero p{font-size:14px}
  .hero-actions .btn{flex:1;min-width:140px} .benefit-grid,.categories-grid,.products-grid,.testimonials-scroll{grid-template-columns:repeat(2,1fr)} .benefit{padding:12px;gap:9px} .benefit i{width:34px;height:34px;font-size:13px} .benefit strong{font-size:11px} .benefit span{font-size:10px}
  .section{padding:35px 0} .section-header{align-items:flex-start} .title-group h2{font-size:24px} .title-group p{font-size:12px} .view-all{font-size:11px}
  .cat-card{padding:15px 8px} .cat-card .icon-wrap{width:46px;height:46px;border-radius:13px;font-size:17px} .cat-card h4{font-size:12px} .cat-card .count{font-size:10px}
  .product-card{border-radius:15px} .product-card .body{padding:11px 11px 6px} .product-card .body h5{font-size:12px;min-height:34px} .price{font-size:15px} .rating{font-size:10px} .product-card .footer{padding:6px 11px 11px} .add-btn{height:38px;font-size:11px}
  .deal-content h3{font-size:28px} .price-big{font-size:27px} .timer-box{min-width:54px} .timer-box .num{font-size:18px}
  .newsletter-wrap form{flex-direction:column} .newsletter-wrap h3{font-size:23px} .footer-grid{grid-template-columns:1fr 1fr;gap:24px} .footer-grid .brand-col{grid-column:1/-1} .footer-bottom{flex-direction:column;text-align:center}
}
</style>
</head>

<body>
<div class="announcement">✨ <strong>Free shipping</strong> on orders over $50 · Easy 30-day returns · Secure checkout</div>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><span class="brand-mark"><i class="fas fa-bag-shopping"></i></span><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <nav class="main-nav" id="mainNav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div class="header-tools">
      <div class="search-wrap" role="search">
        <i class="fas fa-search"></i><input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
      <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
      <div style="position:relative">
        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-bag-shopping"></i></button>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container"><ul>
      <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
      <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      <li><a href="#"><i class="far fa-user"></i> Account</a></li>
      <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
    </ul></div>
  </div>
</header>

<main>
<section class="hero">
  <div class="container">
    <div class="hero-shell">
      <div class="hero-copy">
        <span class="eyebrow"><i class="fas fa-sparkles"></i> New collection 2026</span>
        <h1>Better products.<br><span>Better everyday.</span></h1>
        <p>Discover thoughtfully selected fashion, tech and accessories — with honest prices, fast delivery and a shopping experience that stays simple.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop trending</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-bolt"></i> Today's deals</button>
        </div>
      </div>
      <div class="hero-art">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=85" alt="Curated products">
        <div class="floating-card">
          <div class="mini"><i class="fas fa-truck-fast"></i><span>Fast delivery</span></div>
          <strong>Free over $50</strong>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="benefits">
  <div class="container benefit-grid">
    <div class="benefit"><i class="fas fa-truck-fast"></i><div><strong>Fast delivery</strong><span>Reliable shipping</span></div></div>
    <div class="benefit"><i class="fas fa-shield-halved"></i><div><strong>Secure payments</strong><span>Protected checkout</span></div></div>
    <div class="benefit"><i class="fas fa-rotate-left"></i><div><strong>30-day returns</strong><span>Shop with confidence</span></div></div>
    <div class="benefit"><i class="fas fa-headset"></i><div><strong>Friendly support</strong><span>We're here to help</span></div></div>
  </div>
</section>

<section class="section" id="categories" aria-labelledby="cat-title">
  <div class="container">
    <div class="section-header"><div class="title-group"><div class="kicker">Explore</div><h2 id="cat-title">Shop by category</h2><p>Start with what you need</p></div><a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a></div>
    <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
  </div>
</section>

<section class="section alt" id="products" aria-labelledby="prod-title">
  <div class="container">
    <div class="section-header"><div class="title-group"><div class="kicker">Popular right now</div><h2 id="prod-title">Trending products</h2><p>Customer favorites worth a closer look</p></div><a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a></div>
    <div class="products-toolbar">
      <span class="filter-chip active">All picks</span><span class="filter-chip">Best rated</span><span class="filter-chip">On sale</span><span class="filter-chip">New arrivals</span>
    </div>
    <div class="products-grid" id="productsGrid" aria-live="polite"></div>
  </div>
</section>

<section class="section" id="deals" aria-labelledby="deals-title">
  <div class="container">
    <div class="section-header"><div class="title-group"><div class="kicker">Limited time</div><h2 id="deals-title">Flash deal</h2><p>One standout offer. While stock lasts.</p></div></div>
    <div class="deal-wrap">
      <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="MacBook Air M2" loading="lazy"></div>
      <div class="deal-content">
        <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
        <h3>MacBook Air M2</h3>
        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines everyday performance.</p>
        <span class="price-big">$999 <span class="old">$1,199</span></span>
        <p class="stock">Only <strong>12</strong> items left — don't miss it.</p>
        <div class="timer-grid" id="dealTimer">
          <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
          <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
          <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
          <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
        </div>
        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add deal to cart</button>
      </div>
    </div>
  </div>
</section>

<section class="section alt" id="testimonials" aria-labelledby="test-title">
  <div class="container">
    <div class="section-header"><div class="title-group"><div class="kicker">Customer love</div><h2 id="test-title">What shoppers say</h2><p>Real reviews from real customers</p></div></div>
    <div class="testimonials-scroll" id="testimonialsList"></div>
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="newsletter-wrap">
      <div class="text"><div class="kicker" style="color:#c4b5fd">Stay connected</div><h3>Get the good stuff.</h3><p>Exclusive offers, early access and new arrivals — no spam.</p></div>
      <form id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Your email address" aria-label="Email" required>
        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
        <div id="newsletterMsg"></div>
      </form>
    </div>
  </div>
</section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><span class="brand-mark"><i class="fas fa-bag-shopping"></i></span><span>Nexus<span class="accent">Shop</span></span></div>
        <p>A cleaner way to discover quality products at prices you'll feel good about.</p>
        <div class="socials"><a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a><a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a><a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a><a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a></div>
      </div>
      <div class="col"><h5>Shop</h5><ul><li><a href="#categories">Categories</a></li><li><a href="#products">Trending</a></li><li><a href="#deals">Deals</a></li><li><a href="#">Gift cards</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About us</a></li><li><a href="#">Careers</a></li><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li></ul></div>
    </div>
    <div class="footer-bottom"><span>© <span id="year"></span> NexusShop</span><span>Made for simpler shopping.</span></div>
  </div>
</footer>

<script>

        // ============================================================
        // DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and excellent support. The product exceeded my expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and smooth checkout. Will definitely shop again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Add to cart listeners
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            // animate
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            // subtle feedback
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // Close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart button click feedback
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year in footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        // Close mobile menu on resize to desktop
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
    
</script>
</body>
</html>
