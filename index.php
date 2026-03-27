<?php include 'includes/head.php'; ?>
<?php include 'includes/navbar.php'; ?>

<!-- Hero Section -->
<section class="min-h-screen flex items-center relative overflow-hidden pt-20">
    <div class="absolute inset-0 z-0">
        <div class="absolute inset-0 bg-brand-dark/80 z-10"></div>
        <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?w=1600&auto=format&fit=crop&q=80" class="w-full h-full object-cover" alt="Finance Banner">
    </div>
    
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-20">
        <div class="max-w-3xl">
            <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-brand-primary/10 border border-brand-primary/20 mb-8 animate-bounce">
                <span class="w-2 h-2 rounded-full bg-brand-primary"></span>
                <span class="text-[10px] font-black text-brand-primary uppercase tracking-widest">Digital First Lending</span>
            </div>
            <h1 class="text-6xl md:text-8xl font-black text-white mb-8 tracking-tighter leading-none">
                Smart <span class="text-brand-primary">Tap</span> <br> <span class="text-brand-secondary">Fast Capital</span>
            </h1>
            <p class="text-lg md:text-xl text-neutral-body mb-12 max-w-xl font-medium leading-relaxed">
                Experience the next generation of financial empowerment. MoneyTap delivers instant liquidity for your personal and business needs with zero friction.
            </p>
            <div class="flex flex-wrap gap-4">
                <a href="apply.php" class="btn-primary">APPLY SECURELY</a>
                <a href="services.php" class="glass text-white px-10 py-5 rounded-2xl font-black text-xs tracking-widest transition-all">OUR SOLUTIONS</a>
            </div>
        </div>
    </div>
</section>

<!-- Stats Section -->
<section class="py-12 glass relative z-20 -mt-10 mx-4 rounded-[2.5rem] max-w-6xl md:mx-auto border border-white/5 shadow-2xl shadow-black/50">
    <div class="grid grid-cols-2 md:grid-cols-4 gap-8 px-8">
        <div class="text-center group">
            <div class="text-3xl font-black text-brand-primary mb-1 uppercase tracking-tighter">98.5%</div>
            <p class="text-neutral-body text-[10px] font-black uppercase tracking-widest">Auto Approval</p>
        </div>
        <div class="text-center group md:border-l border-white/10">
            <div class="text-3xl font-black text-brand-secondary mb-1 uppercase tracking-tighter">< 5m</div>
            <p class="text-neutral-body text-[10px] font-black uppercase tracking-widest">Decision Time</p>
        </div>
        <div class="text-center group md:border-l border-white/10">
            <div class="text-3xl font-black text-white mb-1 uppercase tracking-tighter">10k+</div>
            <p class="text-neutral-body text-[10px] font-black uppercase tracking-widest">Digital Users</p>
        </div>
        <div class="text-center group md:border-l border-white/10">
            <div class="text-3xl font-black text-brand-primary mb-1 uppercase tracking-tighter">4.5%</div>
            <p class="text-neutral-body text-[10px] font-black uppercase tracking-widest">Market Rate</p>
        </div>
    </div>
</section>

<!-- Loan categories -->
<section class="py-32 bg-brand-dark relative">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
            <h2 class="text-4xl font-black text-white uppercase tracking-tight">Fintech <span class="text-brand-primary">Solutions</span></h2>
            <p class="text-neutral-body mt-4 max-w-2xl mx-auto">Seamless loan products designed for the modern digital era.</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <!-- Global Payments -->
            <div class="card-premium group">
                <div class="w-16 h-16 bg-brand-primary/10 rounded-2xl flex items-center justify-center mb-8 text-brand-primary group-hover:scale-110 transition-transform">
                    <i class="fas fa-bolt text-2xl"></i>
                </div>
                <h3 class="text-xl font-black text-white mb-4 uppercase tracking-tighter">Instant Tap</h3>
                <p class="text-neutral-body text-sm leading-relaxed mb-8">Micro-loans delivered to your account within minutes. Perfect for urgent needs.</p>
                <div class="h-1 w-12 brand-gradient opacity-40"></div>
            </div>

            <!-- Business Growth -->
            <div class="card-premium group">
                <div class="w-16 h-16 bg-brand-secondary/10 rounded-2xl flex items-center justify-center mb-8 text-brand-secondary group-hover:scale-110 transition-transform">
                    <i class="fas fa-rocket text-2xl"></i>
                </div>
                <h3 class="text-xl font-black text-white mb-4 uppercase tracking-tighter">Scale Up</h3>
                <p class="text-neutral-body text-sm leading-relaxed mb-8">Fuel your startup or SME with growth capital that keeps pace with your ambition.</p>
                <div class="h-1 w-12 brand-gradient opacity-40"></div>
            </div>

            <!-- Asset Backed -->
            <div class="card-premium group">
                <div class="w-16 h-16 bg-white/5 rounded-2xl flex items-center justify-center mb-8 text-white group-hover:scale-110 transition-transform">
                    <i class="fas fa-layer-group text-2xl"></i>
                </div>
                <h3 class="text-xl font-black text-white mb-4 uppercase tracking-tighter">Asset Flex</h3>
                <p class="text-neutral-body text-sm leading-relaxed mb-8">Unlock liquidity from your assets with flexible repayment terms tailored to you.</p>
                <div class="h-1 w-12 border-t-2 border-white/10"></div>
            </div>
        </div>
        
        <div class="flex justify-center mt-16">
            <a href="services.php" class="text-sm font-bold text-brand-primary uppercase tracking-[0.2em] hover:tracking-[0.3em] transition-all">View All Ecosystem <i class="fas fa-arrow-right ml-2"></i></a>
        </div>
    </div>
</section>

<!-- Why Choose Us -->
<section class="py-24 bg-brand-dark/50 border-y border-white/5 relative overflow-hidden">
    <div class="absolute inset-0 opacity-10" style="background-image: radial-gradient(circle at 20% 50%, #00D094 0%, transparent 60%), radial-gradient(circle at 80% 50%, #6366F1 0%, transparent 60%);"></div>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-20 items-center">
            <!-- Image side -->
            <div class="relative">
                <div class="rounded-[3rem] overflow-hidden shadow-2xl border border-white/10 aspect-[4/3] relative">
                    <div class="absolute inset-0 bg-brand-gradient opacity-20"></div>
                    <img
                        src="https://images.unsplash.com/photo-1563986768609-322da13575f3?w=800&auto=format&fit=crop&q=80"
                        alt="Fintech Interface"
                        class="w-full h-full object-cover"
                    >
                </div>
                <!-- Floating badge -->
                <div class="absolute -bottom-6 -right-6 glass px-8 py-6 rounded-3xl shadow-2xl text-center border border-brand-primary/20">
                    <div class="text-3xl font-black text-brand-primary">4.5%</div>
                    <div class="text-[9px] font-black uppercase tracking-widest text-neutral-body mt-1">Starting APR</div>
                </div>
            </div>

            <!-- Content side -->
            <div class="space-y-8">
                <div>
                    <p class="text-[11px] font-black text-brand-primary uppercase tracking-[0.4em] mb-4">Why MoneyTap?</p>
                    <h2 class="text-4xl md:text-5xl font-black text-white tracking-tighter leading-tight">
                        Silicon Valley Tech <br> <span class="text-gradient">Financial Heart</span>
                    </h2>
                </div>
                <p class="text-neutral-body leading-relaxed text-lg">
                    We've rebuilt lending from the ground up. Our AI-driven engine assesses risk in real-time, allowing us to provide capital faster than any traditional bank.
                </p>
                <div class="space-y-4">
                    <div class="flex items-start gap-4 p-5 glass rounded-2xl">
                        <div class="w-10 h-10 rounded-xl bg-brand-primary/10 flex items-center justify-center text-brand-primary flex-shrink-0">
                            <i class="fas fa-bolt"></i>
                        </div>
                        <div>
                            <h4 class="font-black text-white text-sm mb-1 uppercase">Cloud Native</h4>
                            <p class="text-xs text-neutral-body opacity-80">Full digital submission with automatic verification and instant feedback.</p>
                        </div>
                    </div>
                    <div class="flex items-start gap-4 p-5 glass rounded-2xl">
                        <div class="w-10 h-10 rounded-xl bg-brand-secondary/10 flex items-center justify-center text-brand-secondary flex-shrink-0">
                            <i class="fas fa-shield-halved"></i>
                        </div>
                        <div>
                            <h4 class="font-black text-white text-sm mb-1 uppercase">Bank Grade Security</h4>
                            <p class="text-xs text-neutral-body opacity-80">Your data is encrypted with 256-bit protocols, ensuring total privacy.</p>
                        </div>
                    </div>
                </div>
                <a href="apply.php" class="btn-primary inline-flex items-center gap-3">
                    Start Your Application <i class="fas fa-arrow-right"></i>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- Call to Action -->
<section class="py-32 bg-brand-dark relative overflow-hidden">
    <div class="absolute inset-0 bg-brand-gradient opacity-5 blur-3xl rounded-full"></div>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center relative z-10">
        <h2 class="text-5xl md:text-7xl font-black text-white mb-8 tracking-tighter">Ready to <span class="text-brand-primary">Tap</span>?</h2>
        <p class="text-lg text-neutral-body mb-12 max-w-2xl mx-auto leading-relaxed">Join the financial revolution. Get the capital you need to scale your life or business today.</p>
        <a href="apply.php" class="btn-primary px-16 py-6 text-sm">GET STARTED NOW</a>
    </div>
</section>

<?php include 'includes/bottom_nav.php'; ?>
<?php include 'includes/footer.php'; ?>
