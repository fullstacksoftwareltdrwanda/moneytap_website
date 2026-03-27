<?php include 'includes/head.php'; ?>
<?php include 'includes/navbar.php'; ?>

<!-- Header -->
<section class="py-32 relative overflow-hidden italic uppercase">
    <div class="absolute inset-0 bg-brand-gradient opacity-10 blur-3xl"></div>
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center relative z-10">
        <h1 class="text-5xl md:text-8xl font-black text-white tracking-tighter mb-6">Open <span class="text-brand-primary">Comm</span></h1>
        <p class="text-neutral-body text-xl max-w-2xl mx-auto font-medium lowercase tracking-tight opacity-70 italic">Seamless connection to the MoneyTap financial intelligence unit.</p>
    </div>
</section>

<!-- Contact Info Grid -->
<section class="py-12 -mt-10 relative z-20 max-w-7xl mx-auto px-4 italic uppercase">
    <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
        <!-- Phone -->
        <div class="glass p-6 rounded-3xl shadow-2xl border border-white/5 flex items-center space-x-6 hover:border-brand-primary transition-all">
            <div class="w-12 h-12 rounded-2xl bg-brand-primary text-brand-dark flex items-center justify-center">
                <i class="fas fa-phone-alt text-lg"></i>
            </div>
            <div>
                <p class="text-[9px] text-neutral-body font-black tracking-widest opacity-50 mb-1">VOICE</p>
                <p class="text-sm font-black text-white tracking-tight">+250 000 000 000</p>
            </div>
        </div>
        <!-- Email -->
        <div class="glass p-6 rounded-3xl shadow-2xl border border-white/5 flex items-center space-x-6 hover:border-brand-secondary transition-all">
            <div class="w-12 h-12 rounded-2xl bg-brand-secondary text-brand-dark flex items-center justify-center">
                <i class="fas fa-envelope text-lg"></i>
            </div>
            <div>
                <p class="text-[9px] text-neutral-body font-black tracking-widest opacity-50 mb-1">PACKET</p>
                <p class="text-xs font-black text-white tracking-tight lowercase">hello@moneytap.rw</p>
            </div>
        </div>
        <!-- Address -->
        <div class="glass p-6 rounded-3xl shadow-2xl border border-white/5 flex items-center space-x-6">
            <div class="w-12 h-12 rounded-2xl glass flex items-center justify-center text-white">
                <i class="fas fa-map-marker-alt text-lg"></i>
            </div>
            <div>
                <p class="text-[9px] text-neutral-body font-black tracking-widest opacity-50 mb-1">NODE</p>
                <p class="text-sm font-black text-white tracking-tight italic uppercase">HQ: DEMO TOWER</p>
            </div>
        </div>
        <!-- Hours -->
        <div class="glass p-6 rounded-3xl shadow-2xl border border-white/5 flex items-center space-x-6">
            <div class="w-12 h-12 rounded-2xl bg-white/5 flex items-center justify-center text-white/50">
                <i class="fas fa-clock text-lg"></i>
            </div>
            <div>
                <p class="text-[9px] text-neutral-body font-black tracking-widest opacity-50 mb-1">UPTIME</p>
                <p class="text-sm font-black text-white tracking-tight italic uppercase">24/7 SUPPORT</p>
            </div>
        </div>
    </div>
</section>

<!-- Form Section -->
<section class="py-24 max-w-7xl mx-auto px-4 italic uppercase">
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-24">
        <!-- Message Card -->
        <div class="glass rounded-[3rem] p-16 shadow-2xl border border-white/5">
            <h3 class="text-4xl font-black text-white mb-10 tracking-tighter italic">DIRECT <span class="text-brand-primary">INPUT</span></h3>
            <form action="#" class="space-y-10">
                <div class="space-y-4">
                    <label class="text-[10px] font-black text-brand-primary opacity-50 pl-2">Subject Name</label>
                    <input type="text" placeholder="John Doe" class="w-full bg-white/5 border border-white/10 rounded-2xl px-8 py-5 font-black text-sm text-white outline-none focus:border-brand-primary transition-all uppercase placeholder-white/20">
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-10">
                    <div class="space-y-4">
                        <label class="text-[10px] font-black text-brand-primary opacity-50 pl-2">COMMS ADDRESS</label>
                        <input type="email" placeholder="name@email.com" class="w-full bg-white/5 border border-white/10 rounded-2xl px-8 py-5 font-black text-sm text-white outline-none focus:border-brand-secondary transition-all uppercase placeholder-white/20">
                    </div>
                </div>
                <div class="space-y-4">
                    <label class="text-[10px] font-black text-brand-primary opacity-50 pl-2">TRANSMISSION CONTENT</label>
                    <textarea rows="5" placeholder="Your message..." class="w-full bg-white/5 border border-white/10 rounded-2xl px-8 py-5 font-black text-sm text-white outline-none focus:border-brand-primary transition-all resize-none uppercase placeholder-white/20"></textarea>
                </div>
                <button type="submit" class="w-full btn-primary py-7 text-[10px]">ENCRYPT & SEND</button>
            </form>
        </div>

        <!-- Location Card -->
        <div class="flex flex-col space-y-12">
            <div class="card-premium rounded-[3rem] p-16 shadow-2xl border border-white/5 flex-grow relative overflow-hidden">
                <div class="absolute -top-10 -right-10 w-64 h-64 bg-brand-primary/10 rounded-full blur-3xl translate-x-12 -translate-y-12"></div>
                
                <h3 class="text-4xl font-black text-white mb-10 tracking-tighter italic uppercase">Operation <span class="text-brand-primary">Centers</span></h3>
                <p class="text-neutral-body text-sm font-medium leading-relaxed mb-12 italic normal-case opacity-70">
                    MoneyTap operates decentralized hubs across the region. Our primary verification node is currently set to Demo Mode for presentation purposes.
                </p>

                <div class="space-y-12">
                    <div class="flex items-start gap-6">
                        <div class="w-12 h-12 rounded-2xl bg-brand-primary/10 flex items-center justify-center text-brand-primary flex-shrink-0"><i class="fas fa-map-marked-alt text-xl"></i></div>
                        <div>
                            <h4 class="text-[10px] font-black uppercase tracking-widest text-brand-primary mb-2 italic">Node Address</h4>
                            <p class="text-sm font-black text-white tracking-widest">Demo Business Center, District 12, Kigali</p>
                        </div>
                    </div>
                    <div class="flex items-start gap-6">
                        <div class="w-12 h-12 rounded-2xl bg-brand-secondary/10 flex items-center justify-center text-brand-secondary flex-shrink-0"><i class="fas fa-clock text-xl"></i></div>
                        <div>
                            <h4 class="text-[10px] font-black uppercase tracking-widest text-brand-secondary mb-2 italic">Global Uptime</h4>
                            <p class="text-sm font-black text-white tracking-widest">Digital: 24/7/365</p>
                            <p class="text-sm font-black text-white tracking-widest opacity-50">Physical: 09:00 - 17:00 CAT</p>
                        </div>
                    </div>
                </div>

                <div class="mt-16 pt-12 border-t border-white/5">
                    <p class="text-[10px] font-black text-brand-primary uppercase tracking-widest flex items-center gap-3 italic">
                        <i class="fas fa-shield-alt"></i>
                        Security: All transmissions are encrypted end-to-end.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<?php include 'includes/bottom_nav.php'; ?>
<?php include 'includes/footer.php'; ?>
